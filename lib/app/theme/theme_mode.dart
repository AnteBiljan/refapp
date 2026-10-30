import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_mode.freezed.dart';

@freezed
sealed class AppThemeMode with _$AppThemeMode {
  const AppThemeMode._();

  const factory AppThemeMode.light() = AppThemeLight;
  const factory AppThemeMode.dark() = AppThemeDark;
  const factory AppThemeMode.system() = AppThemeSystem;

  String get key => map(
    light: (_) => 'light',
    dark: (_) => 'dark',
    system: (_) => 'system',
  );

  factory AppThemeMode.fromString(String themeMode) => switch (themeMode) {
    'light' => const AppThemeMode.light(),
    'dark' => const AppThemeMode.dark(),
    'system' => const AppThemeMode.system(),
    _ => const AppThemeMode.system(),
  };
}
