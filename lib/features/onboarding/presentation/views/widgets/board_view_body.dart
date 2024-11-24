import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/onboarding/data/models/onboard_item_model.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/custom_listview_dash.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/custom_push_botton.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/image_with_title_section.dart';
import 'package:medsync/generated/l10n.dart';

class BoardViewBody extends StatelessWidget {
  BoardViewBody({
    super.key,
    required this.onPressed,
    required this.isCurrentIndex,
    required this.onboardItemModel,
  });
  Function()? onPressed;
  final int isCurrentIndex;
  final OnboardItemModel onboardItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Text(S.of(context).skip, style: AppStyles.styleMedium16)),
          const Expanded(
            child: SizedBox(),
          ),
          ImageWithTitleSection(
            onboardItemModel: onboardItemModel,
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: CustomListviewDash(
                isCurrentIndex: isCurrentIndex,
              )),
              CustomPushBotton(
                onPressed: onPressed,
              ),
            ],
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
