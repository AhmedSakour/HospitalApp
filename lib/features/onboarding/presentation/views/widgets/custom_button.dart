import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: AppColor.primaryLightColor,
          borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Text(
        title,
        style: AppStyles.styleSemiBold16,
      )),
    );
  }
}
