import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:refapp/app/services/access_token/access_token.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AccessTokenService _accessTokenService;
  final IAuthRepository _repository;
  StreamSubscription? _subscription;

  AuthCubit(this._accessTokenService, this._repository)
    : super(const AuthState.initial()) {
    _subscription = _accessTokenService.watchToken().listen(_onToken);
  }

  Future<void> initAuth() async {
    _onToken(_accessTokenService.token);
  }

  Future<void> logout() => _repository.logout();

  void _onToken(Option<AccessToken> token) {
    final accessToken = token.valueOrNull;
    if (accessToken != null && !accessToken.isExpired) {
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
