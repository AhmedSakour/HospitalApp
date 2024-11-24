import 'package:flutter/material.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/onboarding/data/models/onboard_item_model.dart';

class ImageWithTitleSection extends StatelessWidget {
  const ImageWithTitleSection({
    super.key,
    required this.onboardItemModel,
  });

  final OnboardItemModel onboardItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          onboardItemModel.image,
          height: SizeConfig.screenHeight / 1.7,
        ),
        SizedBox(
          height: SizeConfig.screenHeight / 12,
        ),
        Text(onboardItemModel.title, style: AppStyles.styleSemiBold22),
      ],
    );
  }
}
