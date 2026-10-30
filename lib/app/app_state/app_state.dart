part of 'app_cubit.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState.initial() = AppInitial;
  const factory AppState.loading() = AppLoading;
  const factory AppState.loaded({required AppThemeMode themeMode}) = AppLoaded;
  const factory AppState.failed({required String message}) = AppFailed;
}
