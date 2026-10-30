import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/app/shared/result.dart';

part 'failures.freezed.dart';

@freezed
sealed class AuthFailure with _$AuthFailure implements Failure {
  const AuthFailure._();

  const factory AuthFailure.invalid(String message) = AuthFailureInvalid;
  const factory AuthFailure.unexpected(String message) = AuthFailureUnexpected;
}
