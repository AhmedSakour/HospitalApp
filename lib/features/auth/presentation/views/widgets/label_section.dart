import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';

class LabelSection extends StatelessWidget {
  const LabelSection(
      {super.key, required this.question, required this.option, this.onTap});
  final String question;
  final String option;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: AppStyles.styleRegular15,
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(option,
              style: AppStyles.styleRegular15
                  .copyWith(color: AppColor.primaryLightColor)),
        ),
      ],
    );
  }
}
