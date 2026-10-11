import 'package:flutter/material.dart';

class AppColors {
  // Bahamas Professional Palette
  static const Color background = Color(0xFF0A0F1A); // Deep Ocean Obsidian
  static const Color primary = Color(0xFF00CED1);    // Bahamian Aquamarine
  static const Color accent = Color(0xFFFFD700);      // Golden Sun
  static const Color surface = Color(0xFF161B2B);    // Glassmorphism Surface
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color emerald = Color(0xFF10B981);     // Gains
  static const Color rose = Color(0xFFF43F5E);       // Losses
}

ThemeData bahamasTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.primary,
  colorScheme: ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.accent,
    surface: AppColors.surface,
    background: AppColors.background,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: AppColors.textPrimary,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    bodyMedium: TextStyle(
      color: AppColors.textSecondary,
      fontSize: 14,
    ),
  ),
);
