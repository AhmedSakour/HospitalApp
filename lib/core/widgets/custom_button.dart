import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
            color: AppColor.primaryLightColor,
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          title,
          style: AppStyles.styleSemiBold16,
        )),
      ),
    );
  }
}
