import 'package:clima/constants/app_colors.dart';
import 'package:clima/presentation/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.bgOfLight,
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: AppColors.primary,
    splashColor: AppColors.splash,
    disabledColor: AppColors.grey,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.secondaryOfLight,
      onSecondary: AppColors.onSurfaceOfLight,
      error: AppColors.error,
      onError: AppColors.white,
      surface: AppColors.surfaceOfLight,
      onSurface: AppColors.secondaryOfLight,
      // tertiary: AppColors.textFieldLableOfLight
    ),
    textTheme: AppTextTheme.appTextThemeLight,
  );

 static ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.bgOfDark,
  brightness: Brightness.dark,
  useMaterial3: true,
  primaryColor: AppColors.white, // White as primary in dark theme
  splashColor: AppColors.splash,
  disabledColor: AppColors.grey,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.white,
    onPrimary: AppColors.black,
    secondary: AppColors.secondaryOfDark,
    onSecondary: AppColors.onSurfaceOfDark,
    error: AppColors.error,
    onError: AppColors.white,
    surface: AppColors.surfaceOfDark,
    onSurface: AppColors.secondaryOfDark,
  ),
  textTheme: AppTextTheme.appTextThemeDark,
);


}
