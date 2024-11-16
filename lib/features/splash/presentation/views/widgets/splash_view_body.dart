import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/splash/presentation/views/widgets/logo_splashview_section.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      width: double.infinity,
      padding: EdgeInsets.only(top: SizeConfig.screenHeight * .2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LogoSplashViewSection(),
          SizedBox(
            height: SizeConfig.screenHeight / 6,
          ),
          const SpinKitFadingCircle(
            color: AppColor.whiteColor,
            size: 40.0,
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 10,
          ),
          Text('by MedSync ', style: AppStyles.styleMedium14)
        ],
      ),
    );
  }
}
