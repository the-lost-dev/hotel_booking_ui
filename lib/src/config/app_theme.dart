import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants_exports.dart';

class AppTheme {
  AppTheme._();

  static final TextTheme _appLightTextTheme = TextTheme(
    displayLarge: GoogleFonts.raleway(
      fontSize: AppSizes.thirty,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    displayMedium: GoogleFonts.raleway(
      fontSize: AppSizes.thirtyFour,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    ),
    displaySmall: GoogleFonts.raleway(
      fontSize: AppSizes.twenty,
      color: AppColors.black,
    ),
    bodyLarge: GoogleFonts.raleway(
      fontSize: AppSizes.twentyFour,
      color: AppColors.black,
    ),
    bodyMedium: GoogleFonts.raleway(
      fontSize: AppSizes.thirtyFour,
      color: AppColors.black,
    ),
    bodySmall: GoogleFonts.raleway(
      fontSize: AppSizes.eighteen,
      color: AppColors.grey500,
    ),
    labelLarge: GoogleFonts.raleway(
      fontWeight: FontWeight.w700,
      fontSize: AppSizes.eighteen,
      wordSpacing: .05,
    ),
  );

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      textTheme: _appLightTextTheme,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(elevation: AppSizes.zero),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.black,
          elevation: AppSizes.six,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.ten),
          ),
          padding: const EdgeInsets.all(AppSizes.twenty),
        ),
      ),
      // colorScheme: ColorScheme(
      //   brightness: brightness,
      //   primary: primary,
      //   onPrimary: onPrimary,
      //   secondary: secondary,
      //   onSecondary: onSecondary,
      //   error: error,
      //   onError: onError,
      //   background: background,
      //   onBackground: onBackground,
      //   surface: surface,
      //   onSurface: onSurface,
      // ),
    );
  }
}
