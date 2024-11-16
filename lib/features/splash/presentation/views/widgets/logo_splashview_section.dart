import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';

class LogoSplashViewSection extends StatefulWidget {
  const LogoSplashViewSection({super.key});

  @override
  State<LogoSplashViewSection> createState() => _LogoSplashViewSectionState();
}

class _LogoSplashViewSectionState extends State<LogoSplashViewSection>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 3),
      curve: Curves.easeOutBack, // Adds a 3D bounce effect
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale,
          child: child,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesLogo,
            width: SizeConfig.screenWidth * .3,
            height: SizeConfig.screenHeight * .2,
          ),
          Text(
            'MedSync',
            style:
                AppStyles.styleSemiBold22.copyWith(color: AppColor.whiteColor),
          ),
        ],
      ),
    );
  }
}
