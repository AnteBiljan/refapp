import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:refapp/features/auth/domain/value_objects/password.dart';
import 'package:refapp/features/auth/domain/value_objects/username.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final IAuthRepository _repository;

  LoginCubit(this._repository)
    : super(
        LoginState.editing(
          username: Username('emilys'),
          password: Password('emilyspass'),
        ),
      );

  void usernameChanged(String input) => _edit(username: Username(input));

  void passwordChanged(String input) => _edit(password: Password(input));

  Future<void> submit() async {
    final fields = _fields;
    if (!fields.username.isValid || !fields.password.isValid) {
      emit(
        LoginState.editing(
          username: fields.username,
          password: fields.password,
        ),
      );
      return;
    }
    emit(
      LoginState.submitting(
        username: fields.username,
        password: fields.password,
      ),
    );
    final result = await _repository.login(
      username: fields.username,
      password: fields.password,
    );
    result.map(
      success: (_) => emit(const LoginState.success()),
      failure: (failure) => emit(
        LoginState.failed(
          username: fields.username,
          password: fields.password,
          message: failure.failure.message,
        ),
      ),
    );
  }

  void _edit({Username? username, Password? password}) {
    final fields = _fields;
    emit(
      LoginState.editing(
        username: username ?? fields.username,
        password: password ?? fields.password,
      ),
    );
  }

  ({Username username, Password password}) get _fields => state.map(
    editing: (state) => (username: state.username, password: state.password),
    submitting: (state) => (username: state.username, password: state.password),
    success: (_) => (
      username: Username('emilys'),
      password: Password('emilyspass'),
    ),
    failed: (state) => (username: state.username, password: state.password),
  );
}
