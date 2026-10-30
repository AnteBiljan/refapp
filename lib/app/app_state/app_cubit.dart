import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/app_service.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/app/storage/app_storage/app_storage_model.dart';
import 'package:refapp/app/theme/theme_mode.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  final AppService _appService;
  StreamSubscription? _subscription;

  AppCubit(this._appService) : super(const AppState.initial()) {
    _subscription = _appService.watchAppState().listen((event) {
      final themeMode = event.map(
        success: (success) =>
            AppThemeMode.fromString(success.value.themeMode),
        failure: (_) => const AppThemeMode.system(),
      );
      state.mapOrNull(
        loaded: (loaded) => emit(loaded.copyWith(themeMode: themeMode)),
      );
    });
  }

  Future<void> loadApp() async {
    emit(const AppState.loading());
    try {
      final stored = await _appService.getAppState();
      final themeMode = stored.map(
        success: (success) => AppThemeMode.fromString(success.value.themeMode),
        failure: (_) => const AppThemeMode.system(),
      );
      emit(AppState.loaded(themeMode: themeMode));
    } catch (_) {
      emit(const AppState.failed(message: 'Could not start the app'));
    }
  }

  Future<void> setThemeMode(AppThemeMode themeMode) async {
    final loaded = state.mapOrNull(loaded: (value) => value);
    if (loaded == null) return;
    emit(loaded.copyWith(themeMode: themeMode));
    await _appService.updateAppState(AppStorageModel(themeMode: themeMode.key));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
