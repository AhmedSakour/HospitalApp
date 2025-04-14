import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/features/auth/data/models/auth_option_model.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_option_login.dart';
import 'package:medsync/generated/l10n.dart';

class CustomListviewOptionsLogin extends StatelessWidget {
  const CustomListviewOptionsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    List<AuthOptionModel> items = [
      AuthOptionModel(
          image: Theme.of(context).colorScheme.onPrimary == AppColor.whiteColor
              ? Assets.imagesAppleLogoLight
              : Assets.imagesAppleLogo,
          title: S.of(context).appleOption),
      AuthOptionModel(
          image: Assets.imagesFacebookLogo,
          title: S.of(context).facebookOption),
      AuthOptionModel(
          image: Assets.imagesGoogleLogo, title: S.of(context).googleOption),
    ];
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CustomOptionLogin(
            authOptionModel: items[index],
          ),
        );
      },
    );
  }
}
