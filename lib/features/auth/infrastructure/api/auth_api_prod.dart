import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/http/http_client.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/app/shared/store_api.dart';
import 'package:refapp/features/auth/domain/repositories/failures.dart';
import 'package:refapp/features/auth/infrastructure/api/auth_tokens.dart';
import 'package:refapp/features/auth/infrastructure/api/i_auth_api.dart';

@LazySingleton(
  as: IAuthApi,
  env: [Environment.dev, 'staging', Environment.prod],
)
class AuthApiProd extends StoreApi implements IAuthApi {
  final HttpClient _httpClient;

  AuthApiProd(this._httpClient);

  @override
  Future<Result<AuthTokens, AuthFailure>> login({
    required String username,
    required String password,
  }) {
    return _httpClient
        .post<dynamic>(
          '/auth/login',
          data: {'username': username, 'password': password},
        )
        .then((response) => _tokensFrom(response));
  }

  @override
  Future<Result<AuthTokens, AuthFailure>> refresh({
    required String refreshToken,
  }) {
    return _httpClient
        .post<dynamic>(
          '/auth/refresh',
          data: {'refreshToken': refreshToken},
          options: Options(extra: {HttpClient.skipAuthRefreshExtra: true}),
        )
        .then((response) => _tokensFrom(response));
  }

  Result<AuthTokens, AuthFailure> _tokensFrom(Response<dynamic> response) {
    final apiResponse = toResourceResponse(response);
    return apiResponse.map(
      success: (success) {
        final accessToken = success.data['accessToken'];
        final refreshToken = success.data['refreshToken'];
        if (accessToken is! String || accessToken.isEmpty) {
          return const Result<AuthTokens, AuthFailure>.failure(
            AuthFailure.unexpected('Missing access token'),
          );
        }
        if (refreshToken is! String || refreshToken.isEmpty) {
          return const Result<AuthTokens, AuthFailure>.failure(
            AuthFailure.unexpected('Missing refresh token'),
          );
        }
        return Result.success(
          AuthTokens(accessToken: accessToken, refreshToken: refreshToken),
        );
      },
      failed: (failed) => Result.failure(AuthFailure.invalid(failed.message)),
    );
  }
}
