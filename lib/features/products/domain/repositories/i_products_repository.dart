import 'package:refapp/app/shared/none.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/products/domain/entities/product.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/domain/repositories/events.dart';
import 'package:refapp/features/products/domain/repositories/failures.dart';

abstract class IProductsRepository {
  Stream<ProductsRepositoryEvent> watchAll();

  Future<Result<ProductPage, ProductFailure>> loadPage({
    required int skip,
    required int limit,
    required bool refresh,
  });

  Future<Result<Product, ProductFailure>> loadProduct(int id);

  Future<Option<Product>> findProduct(int id);

  Future<Result<None, ProductFailure>> clear();
}
