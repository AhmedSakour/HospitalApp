// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `MedSync: Your Gateway to Better Health`
  String get titleOnBoard1 {
    return Intl.message(
      'MedSync: Your Gateway to Better Health',
      name: 'titleOnBoard1',
      desc: '',
      args: [],
    );
  }

  /// `Discover Wellness with MedSync`
  String get titleOnBoard2 {
    return Intl.message(
      'Discover Wellness with MedSync',
      name: 'titleOnBoard2',
      desc: '',
      args: [],
    );
  }

  /// `Best Doctor Appointment App`
  String get titleOnBoard3 {
    return Intl.message(
      'Best Doctor Appointment App',
      name: 'titleOnBoard3',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Aboard MedSync: Navigating Your Health Journey`
  String get subTitleBoard {
    return Intl.message(
      'Welcome Aboard MedSync: Navigating Your Health Journey',
      name: 'subTitleBoard',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get start {
    return Intl.message(
      'Get Started',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get hintEmail {
    return Intl.message(
      'Enter your email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get hintPassword {
    return Intl.message(
      'Enter your password',
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgetPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `please enter your email`
  String get validateEmail {
    return Intl.message(
      'please enter your email',
      name: 'validateEmail',
      desc: '',
      args: [],
    );
  }

  /// `please enter your password`
  String get validatePassword {
    return Intl.message(
      'please enter your password',
      name: 'validatePassword',
      desc: '',
      args: [],
    );
  }

  /// `email format error`
  String get errorFormateEmail {
    return Intl.message(
      'email format error',
      name: 'errorFormateEmail',
      desc: '',
      args: [],
    );
  }

  /// `short password`
  String get shortPassword {
    return Intl.message(
      'short password',
      name: 'shortPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get notHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'notHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get appleOption {
    return Intl.message(
      'Continue with Apple',
      name: 'appleOption',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get facebookOption {
    return Intl.message(
      'Continue with Facebook',
      name: 'facebookOption',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get googleOption {
    return Intl.message(
      'Continue with Google',
      name: 'googleOption',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcome {
    return Intl.message(
      'Welcome Back',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign {
    return Intl.message(
      'Sign Up',
      name: 'sign',
      desc: '',
      args: [],
    );
  }

  /// `Once again you login successfully into MedSync app`
  String get loginSuccess {
    return Intl.message(
      'Once again you login successfully into MedSync app',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
