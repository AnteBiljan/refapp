import 'package:injectable/injectable.dart';
import 'package:refapp/app/http/http_client.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/app/shared/store_api.dart';
import 'package:refapp/features/products/domain/entities/product.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/domain/repositories/failures.dart';
import 'package:refapp/features/products/infrastructure/api/i_products_api.dart';
import 'package:refapp/features/products/infrastructure/dtos/product_dto.dart';

@LazySingleton(
  as: IProductsApi,
  env: [Environment.dev, 'staging', Environment.prod],
)
class ProductsApiProd extends StoreApi implements IProductsApi {
  final HttpClient _httpClient;

  ProductsApiProd(this._httpClient);

  @override
  Future<Result<ProductPage, ProductFailure>> fetchProducts({
    required int limit,
    required int skip,
  }) {
    return _httpClient
        .withToken()
        .get<dynamic>(
          '/products',
          queryParameters: {'limit': limit, 'skip': skip},
        )
        .then((response) {
          return toResourceResponse(response).map(
            success: (success) => Result<ProductPage, ProductFailure>.success(
              ProductPageDto.fromJson(success.data).toDomain(),
            ),
            failed: (failed) => Result.failure(
              ProductFailure.unexpected(failed.message),
            ),
          );
        });
  }

  @override
  Future<Result<Product, ProductFailure>> fetchProduct(int id) {
    return _httpClient.withToken().get<dynamic>('/products/$id').then((
      response,
    ) {
      return toResourceResponse(response).map(
        success: (success) => Result<Product, ProductFailure>.success(
          ProductDto.fromJson(success.data).toDomain(),
        ),
        failed: (failed) =>
            Result.failure(ProductFailure.unexpected(failed.message)),
      );
    });
  }
}
