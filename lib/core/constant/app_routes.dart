import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medsync/core/utils/functions/service_locator.dart';
import 'package:medsync/features/app_layout/presentation/view/app_layout_view.dart';
import 'package:medsync/features/auth/data/repos_impl/reset_password_repo_impl.dart';
import 'package:medsync/features/auth/domain/use_cases/reset_password_use_case.dart';
import 'package:medsync/features/auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:medsync/features/auth/presentation/views/create_new_password_view.dart';
import 'package:medsync/features/auth/presentation/views/login_view.dart';
import 'package:medsync/features/auth/presentation/views/reset_password_view.dart';
import 'package:medsync/features/auth/presentation/views/sign_up_view.dart';
import 'package:medsync/features/auth/presentation/views/verification_code_view.dart';
import 'package:medsync/features/home/presentation/views/home_view.dart';
import 'package:medsync/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:medsync/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static const String appLayout = '/';
  static const String onboarding = '/onboarding';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String resetPassword = '/resetPassword';
  static const String verificationCode = '/verification';
  static const String createNewPassword = '/createNewPassword';
  static const String home = '/home';

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
      case resetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ResetPasswordCubit(
                ResetPasswordUseCase(getIt.get<ResetPasswordRepoImpl>())),
            child: const ResetPasswordView(),
          ),
        );
      case verificationCode:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ResetPasswordCubit(
                      ResetPasswordUseCase(getIt.get<ResetPasswordRepoImpl>())),
                  child: const VerificationCodeView(),
                ),
            settings: settings);
      case createNewPassword:
        return MaterialPageRoute(builder: (_) => const CreateNewPasswordView());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
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
