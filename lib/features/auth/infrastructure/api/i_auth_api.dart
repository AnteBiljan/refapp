import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/auth/domain/repositories/failures.dart';

abstract class IAuthApi {
  Future<Result<String, AuthFailure>> login({
    required String username,
    required String password,
  });
}
