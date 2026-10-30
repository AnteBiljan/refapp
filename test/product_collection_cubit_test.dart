import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:refapp/app/shared/none.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/products/application/collection/product_collection_cubit.dart';
import 'package:refapp/features/products/domain/entities/product.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/domain/repositories/events.dart';
import 'package:refapp/features/products/domain/repositories/failures.dart';
import 'package:refapp/features/products/domain/repositories/i_products_repository.dart';

void main() {
  test('loads the first page, then the next, and refreshes', () async {
    final repository = _FakeProductsRepository(total: 25);
    final cubit = ProductCollectionCubit(repository);

    await cubit.load();
    final first = cubit.state.mapOrNull(loaded: (state) => state);
    expect(first?.products, hasLength(20));
    expect(first?.hasMore, isTrue);

    await cubit.loadMore();
    final second = cubit.state.mapOrNull(loaded: (state) => state);
    expect(second?.products, hasLength(25));
    expect(second?.hasMore, isFalse);

    await cubit.refresh();
    final refreshed = cubit.state.mapOrNull(loaded: (state) => state);
    expect(refreshed?.products, hasLength(20));
    expect(repository.refreshCount, 2);

    await cubit.close();
  });

  test('shows empty and failed states', () async {
    final emptyRepository = _FakeProductsRepository(total: 0);
    final emptyCubit = ProductCollectionCubit(emptyRepository);
    await emptyCubit.load();
    expect(emptyCubit.state.mapOrNull(empty: (_) => true), isTrue);
    await emptyCubit.close();

    final failingRepository = _FakeProductsRepository(total: 10, fail: true);
    final failingCubit = ProductCollectionCubit(failingRepository);
    await failingCubit.load();
    expect(
      failingCubit.state.mapOrNull(failed: (state) => state.message),
      'offline',
    );
    await failingCubit.close();
  });

  test('keeps the list when the next page fails', () async {
    final repository = _FakeProductsRepository(total: 40);
    final cubit = ProductCollectionCubit(repository);
    await cubit.load();
    repository.fail = true;

    await cubit.loadMore();
    final state = cubit.state.mapOrNull(loaded: (state) => state);
    expect(state?.products, hasLength(20));
    expect(state?.loadMoreError, 'offline');

    await cubit.close();
  });
}

class _FakeProductsRepository implements IProductsRepository {
  _FakeProductsRepository({required this.total, this.fail = false});

  final int total;
  bool fail;
  int refreshCount = 0;
  final _events = StreamController<ProductsRepositoryEvent>.broadcast();

  @override
  Stream<ProductsRepositoryEvent> watchAll() => _events.stream;

  @override
  Future<Result<ProductPage, ProductFailure>> loadPage({
    required int skip,
    required int limit,
    required bool refresh,
  }) async {
    if (refresh) refreshCount++;
    if (fail) {
      return const Result.failure(ProductFailure.unexpected('offline'));
    }
    final count = (skip + limit > total) ? total - skip : limit;
    final products = [
      for (var index = 0; index < count; index++)
        Product(
          id: skip + index + 1,
          title: 'Product ${skip + index + 1}',
          description: 'Description',
          category: 'beauty',
          price: 9.99,
          rating: 4.5,
          stock: 5,
          brand: 'Acme',
          thumbnail: '',
        ),
    ];
    return Result.success(
      ProductPage(products: products, total: total, skip: skip, limit: limit),
    );
  }

  @override
  Future<Result<Product, ProductFailure>> loadProduct(int id) async {
    return const Result.failure(ProductFailure.unexpected('unused'));
  }

  @override
  Future<Option<Product>> findProduct(int id) async => const Option.none();

  @override
  Future<Result<None, ProductFailure>> clear() async {
    return const Result.success(None());
  }
}
