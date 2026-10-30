import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/none.dart';
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
        await _accessTokenService.storeToken(success.value);
        return const Result<None, AuthFailure>.success(None());
      },
      failure: (failure) async => Result<None, AuthFailure>.failure(failure.failure),
    );
  }

  @override
  Future<void> logout() => _accessTokenService.clearToken();
}
