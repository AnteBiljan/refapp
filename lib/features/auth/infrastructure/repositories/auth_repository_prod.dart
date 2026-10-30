import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/none.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/auth/domain/repositories/failures.dart';
import 'package:refapp/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:refapp/features/auth/domain/value_objects/password.dart';
import 'package:refapp/features/auth/domain/value_objects/username.dart';
import 'package:refapp/features/auth/infrastructure/api/i_auth_api.dart';

@LazySingleton(
  as: IAuthRepository,
  env: [Environment.dev, 'staging', Environment.prod],
)
class AuthRepositoryProd implements IAuthRepository {
  final IAuthApi _api;
  final AccessTokenService _accessTokenService;
  Future<Result<None, AuthFailure>>? _refreshing;

  AuthRepositoryProd(this._api, this._accessTokenService);

  @override
  Future<Result<None, AuthFailure>> login({
    required Username username,
    required Password password,
  }) async {
    final usernameValue = username.valueOrNull;
    final passwordValue = password.valueOrNull;
    if (usernameValue == null || passwordValue == null) {
      return const Result.failure(AuthFailure.invalid('Check the form'));
    }
    final result = await _api.login(
      username: usernameValue,
      password: passwordValue,
    );
    return result.map(
      success: (success) async {
        await _accessTokenService.storeRefreshToken(success.value.refreshToken);
        _accessTokenService.storeAccessToken(success.value.accessToken);
        return const Result<None, AuthFailure>.success(None());
      },
      failure: (failure) async =>
          Result<None, AuthFailure>.failure(failure.failure),
    );
  }

  @override
  Future<Result<None, AuthFailure>> refresh() {
    final refreshing = _refreshing;
    if (refreshing != null) return refreshing;
    final future = _refresh();
    _refreshing = future;
    return future.whenComplete(() {
      if (identical(_refreshing, future)) _refreshing = null;
    });
  }

  Future<Result<None, AuthFailure>> _refresh() async {
    final refreshToken = _accessTokenService.refreshToken.valueOrNull;
    if (refreshToken == null || refreshToken.isExpired) {
      await logout();
      return const Result.failure(AuthFailure.unexpected('Session expired'));
    }
    final result = await _api.refresh(refreshToken: refreshToken.value);
    final current = _accessTokenService.refreshToken.valueOrNull;
    if (current?.value != refreshToken.value) {
      return const Result.failure(AuthFailure.unexpected('Session expired'));
    }
    return result.map(
      success: (success) async {
        await _accessTokenService.storeRefreshToken(success.value.refreshToken);
        _accessTokenService.storeAccessToken(success.value.accessToken);
        return const Result<None, AuthFailure>.success(None());
      },
      failure: (failure) async {
        await logout();
        return Result<None, AuthFailure>.failure(failure.failure);
      },
    );
  }

  @override
  Future<void> logout() => _accessTokenService.clear();
}
