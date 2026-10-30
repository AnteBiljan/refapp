import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/features/auth/domain/repositories/i_auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AccessTokenService _accessTokenService;
  final IAuthRepository _repository;
  StreamSubscription? _subscription;

  AuthCubit(this._accessTokenService, this._repository)
    : super(const AuthState.initial()) {
    _subscription = _accessTokenService.watchRefreshToken().listen(
      _onRefreshToken,
    );
  }

  Future<void> initAuth() async {
    final refreshToken = _accessTokenService.refreshToken.valueOrNull;
    if (refreshToken != null && !refreshToken.isExpired) {
      emit(const AuthState.authenticated());
      return;
    }
    await _repository.logout();
    emit(const AuthState.unauthenticated());
  }

  Future<void> logout() => _repository.logout();

  void _onRefreshToken(Option<AccessToken> token) {
    final refreshToken = token.valueOrNull;
    if (refreshToken != null && !refreshToken.isExpired) {
      emit(const AuthState.authenticated());
      return;
    }
    emit(const AuthState.unauthenticated());
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
