import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/generated/l10n.dart';

class OrOptionSelection extends StatelessWidget {
  const OrOptionSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 0.5,
            color: AppColor.greyColor,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            S.of(context).or,
            style: AppStyles.styleBold16,
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 0.5,
            color: AppColor.greyColor,
            height: 1,
          ),
        ),
      ],
    );
  }
}
