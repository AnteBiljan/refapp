import 'package:injectable/injectable.dart';
import 'package:refapp/app/shared/cached_object.dart';
import 'package:refapp/app/shared/none.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/products/domain/entities/product.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/domain/repositories/events.dart';
import 'package:refapp/features/products/domain/repositories/failures.dart';
import 'package:refapp/features/products/domain/repositories/i_products_repository.dart';
import 'package:refapp/features/products/infrastructure/api/i_products_api.dart';
import 'package:refapp/features/products/infrastructure/dtos/product_dto.dart';
import 'package:refapp/app/storage/hive/storage_response.dart';
import 'package:refapp/features/products/infrastructure/storage/product_storage.dart';

@LazySingleton(
  as: IProductsRepository,
  env: [Environment.dev, 'staging', Environment.prod],
)
class ProductRepositoryProd implements IProductsRepository {
  final CachedObject<List<Product>> _cache;
  final ProductStorage _storage;
  final IProductsApi _api;

  ProductRepositoryProd._(this._cache, this._storage, this._api);

  @factoryMethod
  factory ProductRepositoryProd.create(ProductStorage storage, IProductsApi api) =>
      ProductRepositoryProd._(CachedObject<List<Product>>(null), storage, api);

  @postConstruct
  void init() {
    _storage.watchAll().listen((event) {
      event.map(
        success: (success) => _cache.store(
          success.storageObject
              .map(
                (model) => ProductDto.fromStorageObject(model).toDomain(),
              )
              .toList(),
        ),
        failed: (_) => _cache.clear(),
      );
    });
  }

  @override
  Stream<ProductsRepositoryEvent> watchAll() => _cache.watch().map(
    (event) => event.$2.when(
      some: (products) => products.isEmpty
          ? const ProductsRepositoryEvent.empty()
          : ProductsRepositoryEvent.loaded(products),
      none: () => const ProductsRepositoryEvent.notLoaded(),
    ),
  );

  @override
  Future<Result<ProductPage, ProductFailure>> loadPage({
    required int skip,
    required int limit,
    required bool refresh,
  }) async {
    final result = await _api.fetchProducts(limit: limit, skip: skip);
    return result.map(
      success: (success) async {
        if (refresh) {
          await _storage.destroyAll();
        }
        final models = {
          for (final product in success.value.products)
            product.id.toString(): ProductDto.fromDomain(product).toStorageObject(),
        };
        if (models.isNotEmpty) {
          await _storage.updateAll(models);
        }
        return Result<ProductPage, ProductFailure>.success(success.value);
      },
      failure: (failure) async =>
          Result<ProductPage, ProductFailure>.failure(failure.failure),
    );
  }

  @override
  Future<Result<Product, ProductFailure>> loadProduct(int id) async {
    final result = await _api.fetchProduct(id);
    return result.map(
      success: (success) async {
        await _storage.update(ProductDto.fromDomain(success.value).toStorageObject());
        return Result<Product, ProductFailure>.success(success.value);
      },
      failure: (failure) async =>
          Result<Product, ProductFailure>.failure(failure.failure),
    );
  }

  @override
  Future<Option<Product>> findProduct(int id) async {
    final cached = _cache.value.valueOrNull
        ?.where((product) => product.id == id)
        .firstOrNull;
    if (cached != null) return Option.some(cached);
    final stored = await _storage.read(id.toString());
    return stored.map(
      success: (success) =>
          Option.some(ProductDto.fromStorageObject(success.storageObject).toDomain()),
      failed: (_) => const Option<Product>.none(),
    );
  }

  @override
  Future<Result<None, ProductFailure>> clear() async {
    await _storage.destroyAll();
    _cache.clear();
    return const Result.success(None());
  }
}
