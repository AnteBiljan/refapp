import 'package:injectable/injectable.dart';
import 'package:refapp/app/http/http_client.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/app/shared/store_api.dart';
import 'package:refapp/features/auth/domain/repositories/failures.dart';
import 'package:refapp/features/auth/infrastructure/api/i_auth_api.dart';

@LazySingleton(
  as: IAuthApi,
  env: [Environment.dev, 'staging', Environment.prod],
)
class AuthApiProd extends StoreApi implements IAuthApi {
  final HttpClient _httpClient;

  AuthApiProd(this._httpClient);

  @override
  Future<Result<String, AuthFailure>> login({
    required String username,
    required String password,
  }) {
    return _httpClient
        .post<dynamic>(
          '/auth/login',
          data: {'username': username, 'password': password},
        )
        .then((response) {
          final apiResponse = toResourceResponse(response);
          return apiResponse.map(
            success: (success) {
              final token = success.data['accessToken'];
              if (token is! String || token.isEmpty) {
                return const Result<String, AuthFailure>.failure(
                  AuthFailure.unexpected('Missing access token'),
                );
              }
              return Result.success(token);
            },
            failed: (failed) => Result.failure(AuthFailure.invalid(failed.message)),
          );
        });
  }
}
