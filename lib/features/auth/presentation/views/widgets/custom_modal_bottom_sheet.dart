import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/generated/l10n.dart';

void showCustomModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).welcome,
                style: AppStyles.styleSemiBold24,
              ),
              const SizedBox(height: 14),
              Text(S.of(context).loginSuccess,
                  textAlign: TextAlign.center, style: AppStyles.styleRegular14),
              const SizedBox(height: 24),
              CustomButton(
                title: 'OK',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        const CircleAvatar(
          backgroundColor: AppColor.primaryLightColor,
          radius: 40,
          child: Icon(Icons.verified, color: AppColor.whiteColor, size: 40),
        ),
      ],
    ),
  );
}
