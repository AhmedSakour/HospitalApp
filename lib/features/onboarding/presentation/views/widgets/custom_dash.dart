import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';

class CustomDash extends StatelessWidget {
  const CustomDash({
    super.key,
    required this.isActiveIndex,
  });
  final bool isActiveIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.63,
      height: 4,
      decoration: BoxDecoration(
          color:
              isActiveIndex ? AppColor.primaryLightColor : AppColor.lightBlue,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
