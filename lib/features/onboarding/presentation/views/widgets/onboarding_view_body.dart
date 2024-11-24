import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/features/onboarding/data/models/onboard_item_model.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/board_view_body.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/board_view_body_with_title.dart';
import 'package:medsync/generated/l10n.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<OnboardItemModel> items = [
      OnboardItemModel(
          image: Assets.imagesOnboardimage1,
          title: S.of(context).titleOnBoard1),
      OnboardItemModel(
          image: Assets.imagesOnboardimage2,
          title: S.of(context).titleOnBoard2),
      OnboardItemModel(
          image: Assets.imagesOnboardimage3,
          title: S.of(context).titleOnBoard3,
          subTille: S.of(context).subTitleBoard)
    ];
    return PageView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return index < 2
            ? BoardViewBody(
                onboardItemModel: items[index],
                isCurrentIndex: index,
                onPressed: () {
                  if (currentIndex < 3) {
                    _pageController.nextPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.bounceIn);
                  }
                },
              )
            : BoardViewBodyWithTitle(
                onboardItemModel: items[index],
              );
      },
      controller: _pageController,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
      },
    );
  }
}
