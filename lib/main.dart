import 'package:device_preview/device_preview.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/core/themes/app_themes.dart';
import 'package:medsync/core/utils/functions/bloc_observer.dart';
import 'package:medsync/core/utils/functions/service_locator.dart';
import 'package:medsync/generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EmailOTP.config(
    appName: 'MedSync',
    otpType: OTPType.numeric,
    expiry: 60000,
    emailTheme: EmailTheme.v2,
    appEmail: 'medsync77@gmail.com',
    otpLength: 5,
  );
  setup();
  Bloc.observer = MyBlocObserver();

  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Locale languageApp = const Locale('en');

    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: languageApp,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.appLayout,
      onGenerateRoute: AppRoutes.generateRoute,
      theme: AppTheme.darkTheme(context, languageApp),
    );
  }
}
