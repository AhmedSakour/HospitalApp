import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/onboarding/data/models/onboard_item_model.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/image_with_title_with_effect_section.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/logo_with_title_section.dart';
import 'package:medsync/generated/l10n.dart';

class BoardViewBodyWithTitle extends StatelessWidget {
  const BoardViewBodyWithTitle({super.key, required this.onboardItemModel});
  final OnboardItemModel onboardItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LogoWithTitleSection(),
          const Expanded(
            child: SizedBox(),
          ),
          ImageWithTitleWithEffectSection(
            onboardItemModel: onboardItemModel,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            S.of(context).subTitleBoard,
            textAlign: TextAlign.center,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(title: S.of(context).start),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
