import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryBrownLight = Color(0xFFDFC39F);
  static const Color primaryBrownDark = Color(0xFF2A2319);
  static const Color primaryGreenLight = Color(0xFFA4BF6F);
  static const Color primaryGreenDark = Color(0xFF89BF6F);
  static const Color deepDark = Color(0xFF000000);
  static const Color deepLight = Color(0xFFFFFFFF);
  static const Color light1 = Color(0xFFD5D5D5);
  static const Color light2 = Color(0xFFAAAAAA);
}

class AppThemeColors {
  static Color primary(BuildContext context) =>
      Theme.of(context).colorScheme.primary;

  static Color secondary(BuildContext context) =>
      Theme.of(context).colorScheme.secondary;

  static Color background(BuildContext context) =>
      Theme.of(context).colorScheme.surface;

  static Color error(BuildContext context) =>
      Theme.of(context).colorScheme.error;
}

class AppTheme {
  static ThemeData themeLight = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.deepLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryBrownDark,
      onPrimary: AppColors.deepLight,
      secondary: AppColors.primaryGreenDark,
      onSecondary: AppColors.deepLight,
      surface: AppColors.deepLight,
      onSurface: AppColors.primaryBrownDark,
      outline: AppColors.light1,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primaryBrownDark,
        foregroundColor: AppColors.deepLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );

  static ThemeData themeDark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.deepDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryBrownLight,
      onPrimary: AppColors.deepDark,
      secondary: AppColors.primaryGreenLight,
      onSecondary: AppColors.deepDark,
      surface: AppColors.deepDark,
      onSurface: AppColors.primaryBrownLight,
      outline: Color(0xFF3A3A3A),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primaryGreenLight,
        foregroundColor: AppColors.deepDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
