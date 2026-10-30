part of 'login_cubit.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.editing({
    required Username username,
    required Password password,
  }) = LoginEditing;

  const factory LoginState.submitting({
    required Username username,
    required Password password,
  }) = LoginSubmitting;

  const factory LoginState.success() = LoginSuccess;

  const factory LoginState.failed({
    required Username username,
    required Password password,
    required String message,
  }) = LoginFailed;
}
