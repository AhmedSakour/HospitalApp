import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    goToHome();
    super.initState();
  }

  void goToHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        try {
          Navigator.pushNamed(context, AppRoutes.onboarding);
        } on Exception catch (e) {
          log(e.toString());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
