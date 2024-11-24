import 'package:flutter/material.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/onboarding/data/models/onboard_item_model.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/custom_linear_effect.dart';

class ImageWithTitleWithEffectSection extends StatelessWidget {
  const ImageWithTitleWithEffectSection(
      {super.key, required this.onboardItemModel});

  final OnboardItemModel onboardItemModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset(
              onboardItemModel.image,
              height: SizeConfig.screenHeight / 1.7,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                reverse: true,
                children: const [CustomLinearEffect()],
              ),
            ),
          ],
        ),
        Text(
          onboardItemModel.title,
          textAlign: TextAlign.center,
          style: AppStyles.styleSemiBold28
              .copyWith(color: AppColor.primaryLightColor),
        )
      ],
    );
  }
}
