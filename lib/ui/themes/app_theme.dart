import 'package:flutter/material.dart';

class AppColors {
  // Base Colors
  static const Color background = Color(0xFF000000);
  static const Color cardBase = Color(0xFF1C1C1E);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF8E8E93);

  // Gradient / Glow Colors
  static const Color floralMagenta = Color(0xFFDC308F);
  static const Color tranquilLavender = Color(0xFFD0A8C9);
  static const Color deepOcean = Color(0xFF457BF1);
  static const Color starship = Color(0xFFE7FE55);
  static const Color rareJade = Color(0xFFA6CFB8);
  static const Color sunsetOrange = Color(0xFFE56E4A);
}

class AppThemes {
  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.floralMagenta,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontSize: 48,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimary,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.textSecondary,
          ),
        ),
      );
}
