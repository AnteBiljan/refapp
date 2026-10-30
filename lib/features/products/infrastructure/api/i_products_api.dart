import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/products/domain/entities/product.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/domain/repositories/failures.dart';

abstract class IProductsApi {
  Future<Result<ProductPage, ProductFailure>> fetchProducts({
    required int limit,
    required int skip,
  });

  Future<Result<Product, ProductFailure>> fetchProduct(int id);
}
