import 'package:flutter/material.dart';
import 'package:medsync/features/app_layout/presentation/view/app_layout_view.dart';
import 'package:medsync/features/auth/presentation/views/login_view.dart';
import 'package:medsync/features/auth/presentation/views/sign_up_view.dart';
import 'package:medsync/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:medsync/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static const String appLayout = '/';
  static const String onboarding = '/onboarding';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signUp = '/signUp';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case appLayout:
        return MaterialPageRoute(builder: (_) => const AppLayoutView());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
