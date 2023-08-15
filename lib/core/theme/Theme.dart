import 'package:flutter/material.dart';
import 'package:task/core/constant/AppColors.dart';

class AppTheme {
  static const String fontFamily = "Cairo";
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.white.withOpacity(0.9),
    primaryColor: AppColors.primaryColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 16,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily),
      titleLarge: TextStyle(
          fontSize: 20,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily),
      labelMedium: TextStyle(
          fontSize: 14, color: AppColors.grey, fontFamily: fontFamily),
      bodySmall: TextStyle(
          fontSize: 14,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily),
    ),
  );
}
