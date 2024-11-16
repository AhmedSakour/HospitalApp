import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medsync/core/themes/app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme(context) {
    return ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: AppColor.whiteColor,
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primaryContainer: AppColor.primaryLightColor,
        ));
  }

  static ThemeData darkTheme(context) {
    return ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: AppColor.secondaryDarkColor,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primaryContainer: AppColor.primaryDarkColor,
        ));
  }
}
