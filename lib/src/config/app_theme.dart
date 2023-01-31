import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

class AppTheme {
  AppTheme._();

  static final TextTheme _appLightTextTheme = TextTheme(
    displayLarge: GoogleFonts.raleway(
      fontSize: AppSizes.fortyEight,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.raleway(
      fontSize: AppSizes.thirtyFour,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: GoogleFonts.raleway(
      fontSize: AppSizes.twentyEight,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.itim(fontSize: AppSizes.twentyFour),
    bodyMedium: GoogleFonts.itim(fontSize: AppSizes.thirtyFour),
    bodySmall: GoogleFonts.itim(fontSize: AppSizes.twenty, wordSpacing: .05),
    labelLarge: GoogleFonts.itim(
      fontSize: AppSizes.twentyFour,
      wordSpacing: .05,
    ),
  );

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      textTheme: _appLightTextTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(elevation: AppSizes.zero),
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
