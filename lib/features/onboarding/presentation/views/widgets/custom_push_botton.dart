import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/utils/functions/get_current_language.dart';

class CustomPushBotton extends StatelessWidget {
  CustomPushBotton({
    super.key,
    this.onPressed,
  });
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 56,
        height: 56,
        decoration: const ShapeDecoration(
          color: AppColor.primaryLightColor,
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 70,
              offset: Offset(0, 4),
              spreadRadius: -13,
            )
          ],
        ),
        child: IconButton(
            onPressed: onPressed,
            icon: getCurrentLangauge() == 'en'
                ? Transform.rotate(
                    angle: 3.14159,
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColor.whiteColor,
                    ))
                : const Icon(
                    Icons.arrow_back,
                    color: AppColor.whiteColor,
                  )));
  }
}
