import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/utils/functions/get_current_language.dart';

abstract class AppTheme {
  static ThemeData lightTheme(context, local) {
    return ThemeData(
        textTheme: local.toString() == 'ar'
            ? GoogleFonts.cairoTextTheme(Theme.of(context)
                .textTheme
                .apply(bodyColor: AppColor.blackColor))
            : GoogleFonts.poppinsTextTheme(Theme.of(context)
                .textTheme
                .apply(bodyColor: AppColor.blackColor)),
        scaffoldBackgroundColor: AppColor.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.whiteColor,
        ),
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: AppColor.whiteColor,
          onPrimary: AppColor.blackColor,
          primaryContainer: AppColor.primaryLightColor,
        ));
  }

  static ThemeData darkTheme(context) {
    return ThemeData(
        textTheme: getCurrentLangauge() == 'ar'
            ? GoogleFonts.cairoTextTheme(Theme.of(context)
                .textTheme
                .apply(bodyColor: AppColor.whiteColor))
            : GoogleFonts.poppinsTextTheme(Theme.of(context)
                .textTheme
                .apply(bodyColor: AppColor.whiteColor)),
        scaffoldBackgroundColor: AppColor.secondaryDarkColor,
        appBarTheme:
            const AppBarTheme(backgroundColor: AppColor.secondaryDarkColor),
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: AppColor.blackColor,
          onPrimary: AppColor.whiteColor,
          primaryContainer: AppColor.primaryDarkColor,
        ));
  }
}
