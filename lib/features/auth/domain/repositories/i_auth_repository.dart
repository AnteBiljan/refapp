import 'package:refapp/app/shared/none.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/auth/domain/repositories/failures.dart';
import 'package:refapp/features/auth/domain/value_objects/password.dart';
import 'package:refapp/features/auth/domain/value_objects/username.dart';

abstract class IAuthRepository {
  Future<Result<None, AuthFailure>> login({
    required Username username,
    required Password password,
  });

  Future<void> logout();
}
