import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';

import '../constant/size_config.dart';

abstract class AppStyles {
  static TextStyle styleSemiBold22 = TextStyle(
    color: AppColor.primaryLightColor,
    fontWeight: FontWeight.w600,
    fontSize: AppStyles.getResponsiveFontSize(fontSize: 22),
  );
  static TextStyle styleSemiBold16 = TextStyle(
    color: AppColor.whiteColor,
    fontWeight: FontWeight.w600,
    fontSize: AppStyles.getResponsiveFontSize(fontSize: 16),
  );
  static TextStyle styleSemiBold28 = TextStyle(
    color: AppColor.lightBlack,
    fontWeight: FontWeight.w600,
    fontSize: AppStyles.getResponsiveFontSize(fontSize: 28),
  );
  static TextStyle styleMedium14 = TextStyle(
    color: AppColor.whiteColor,
    fontWeight: FontWeight.w500,
    fontSize: AppStyles.getResponsiveFontSize(fontSize: 14),
  );
  static TextStyle styleMedium16 = TextStyle(
    color: AppColor.greyColor,
    fontWeight: FontWeight.w500,
    fontSize: AppStyles.getResponsiveFontSize(fontSize: 16),
  );
  static TextStyle styleRegular14 = TextStyle(
    color: AppColor.greyColor,
    fontWeight: FontWeight.w400,
    fontSize: AppStyles.getResponsiveFontSize(fontSize: 14),
  );
  static double getResponsiveFontSize({required double fontSize}) {
    double scaleFactor = AppStyles.getScaleFactor();
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerlimit = fontSize * .9;
    double upperlimit = fontSize * 1.8;
    return responsiveFontSize.clamp(lowerlimit, upperlimit);
  }

  static double getScaleFactor() {
    final width = SizeConfig.screenWidth;
    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}
