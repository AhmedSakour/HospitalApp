import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/core/themes/app_styles.dart';

class LogoWithTitleSection extends StatelessWidget {
  const LogoWithTitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.imagesLogoBlue,
          height: 28,
          width: 31,
        ),
        const SizedBox(
          width: 14,
        ),
        Text(
          'MedSync',
          style: AppStyles.styleSemiBold28,
        )
      ],
    );
  }
}
