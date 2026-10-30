import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/auth/domain/repositories/failures.dart';
import 'package:refapp/features/auth/infrastructure/api/auth_tokens.dart';

abstract class IAuthApi {
  Future<Result<AuthTokens, AuthFailure>> login({
    required String username,
    required String password,
  });

  Future<Result<AuthTokens, AuthFailure>> refresh({
    required String refreshToken,
  });
}
