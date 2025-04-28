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

  /// `Enter your name`
  String get hintName {
    return Intl.message(
      'Enter your name',
      name: 'hintName',
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

  /// `please enter your name`
  String get validateName {
    return Intl.message(
      'please enter your name',
      name: 'validateName',
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

  /// `I agree to the`
  String get agree {
    return Intl.message(
      'I agree to the',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// ` Terms of Service `
  String get terms {
    return Intl.message(
      ' Terms of Service ',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// ` Privacy Policy `
  String get privacy {
    return Intl.message(
      ' Privacy Policy ',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account yet?`
  String get haveAccount {
    return Intl.message(
      'Already have an account yet?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been successfully registered`
  String get registerSuccess {
    return Intl.message(
      'Your account has been successfully registered',
      name: 'registerSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Information Collection and Use`
  String get informationPrivacy {
    return Intl.message(
      'Information Collection and Use',
      name: 'informationPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `We collect info such as your IP address, app usage data, time spent, and OS.`
  String get firstInformation {
    return Intl.message(
      'We collect info such as your IP address, app usage data, time spent, and OS.',
      name: 'firstInformation',
      desc: '',
      args: [],
    );
  }

  /// `We do not collect precise location data.`
  String get secondInformation {
    return Intl.message(
      'We do not collect precise location data.',
      name: 'secondInformation',
      desc: '',
      args: [],
    );
  }

  /// `You may be contacted for important updates or promotions.`
  String get thirdInformation {
    return Intl.message(
      'You may be contacted for important updates or promotions.',
      name: 'thirdInformation',
      desc: '',
      args: [],
    );
  }

  /// `Third Party Access`
  String get partyAccess {
    return Intl.message(
      'Third Party Access',
      name: 'partyAccess',
      desc: '',
      args: [],
    );
  }

  /// `Only anonymized data is shared with third parties.`
  String get firstPartyAccess {
    return Intl.message(
      'Only anonymized data is shared with third parties.',
      name: 'firstPartyAccess',
      desc: '',
      args: [],
    );
  }

  /// `Third-party services used include Google Play Services, Firebase, and Facebook.`
  String get secondPartyAccess {
    return Intl.message(
      'Third-party services used include Google Play Services, Firebase, and Facebook.',
      name: 'secondPartyAccess',
      desc: '',
      args: [],
    );
  }

  /// `Data may be disclosed to comply with legal obligations or protect users.`
  String get thirdPartyAccess {
    return Intl.message(
      'Data may be disclosed to comply with legal obligations or protect users.',
      name: 'thirdPartyAccess',
      desc: '',
      args: [],
    );
  }

  /// `Opt-Out Rights`
  String get rights {
    return Intl.message(
      'Opt-Out Rights',
      name: 'rights',
      desc: '',
      args: [],
    );
  }

  /// `You can stop data collection by uninstalling the app.`
  String get rightsContent {
    return Intl.message(
      'You can stop data collection by uninstalling the app.',
      name: 'rightsContent',
      desc: '',
      args: [],
    );
  }

  /// `Data Retention Policy`
  String get dataRetention {
    return Intl.message(
      'Data Retention Policy',
      name: 'dataRetention',
      desc: '',
      args: [],
    );
  }

  /// `We retain your data as long as needed. To request deletion, email us at medSync77@gmail.com`
  String get dataRetentionContent {
    return Intl.message(
      'We retain your data as long as needed. To request deletion, email us at medSync77@gmail.com',
      name: 'dataRetentionContent',
      desc: '',
      args: [],
    );
  }

  /// `Children`
  String get child {
    return Intl.message(
      'Children',
      name: 'child',
      desc: '',
      args: [],
    );
  }

  /// `We do not knowingly collect data from children under 13.`
  String get firstChild {
    return Intl.message(
      'We do not knowingly collect data from children under 13.',
      name: 'firstChild',
      desc: '',
      args: [],
    );
  }

  /// `If discovered, their data will be immediately deleted.`
  String get secondChild {
    return Intl.message(
      'If discovered, their data will be immediately deleted.',
      name: 'secondChild',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message(
      'Security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `We use safeguards to protect your data.`
  String get securityContent {
    return Intl.message(
      'We use safeguards to protect your data.',
      name: 'securityContent',
      desc: '',
      args: [],
    );
  }

  /// `Changes`
  String get changes {
    return Intl.message(
      'Changes',
      name: 'changes',
      desc: '',
      args: [],
    );
  }

  /// `This policy may be updated. Please review it periodically.`
  String get changesContent {
    return Intl.message(
      'This policy may be updated. Please review it periodically.',
      name: 'changesContent',
      desc: '',
      args: [],
    );
  }

  /// `Your Consent`
  String get consent {
    return Intl.message(
      'Your Consent',
      name: 'consent',
      desc: '',
      args: [],
    );
  }

  /// `By using the app, you consent to the policy and any changes.`
  String get consentContent {
    return Intl.message(
      'By using the app, you consent to the policy and any changes.',
      name: 'consentContent',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact {
    return Intl.message(
      'Contact Us',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `If you have any questions, email us at: medSync77@gmail.com`
  String get contactContent {
    return Intl.message(
      'If you have any questions, email us at: medSync77@gmail.com',
      name: 'contactContent',
      desc: '',
      args: [],
    );
  }

  /// `Effective Date: 2025-04-19`
  String get datePrivacy {
    return Intl.message(
      'Effective Date: 2025-04-19',
      name: 'datePrivacy',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement`
  String get agreement {
    return Intl.message(
      'User Agreement',
      name: 'agreement',
      desc: '',
      args: [],
    );
  }

  /// `By downloading or using the app, you agree to our terms. Unauthorized copying, modifying, translating, or creating derivatives of the app is not allowed.`
  String get agreementContent {
    return Intl.message(
      'By downloading or using the app, you agree to our terms. Unauthorized copying, modifying, translating, or creating derivatives of the app is not allowed.',
      name: 'agreementContent',
      desc: '',
      args: [],
    );
  }

  /// `Modifications & Charges`
  String get modification {
    return Intl.message(
      'Modifications & Charges',
      name: 'modification',
      desc: '',
      args: [],
    );
  }

  /// `We may modify the app or charge for services. Any such changes will be communicated clearly.`
  String get modificationContent {
    return Intl.message(
      'We may modify the app or charge for services. Any such changes will be communicated clearly.',
      name: 'modificationContent',
      desc: '',
      args: [],
    );
  }

  /// `Security & Jailbreaking`
  String get securityWarning {
    return Intl.message(
      'Security & Jailbreaking',
      name: 'securityWarning',
      desc: '',
      args: [],
    );
  }

  /// `Avoid jailbreaking/rooting your phone. It may expose you to security risks and app malfunction.`
  String get securityWarningContent {
    return Intl.message(
      'Avoid jailbreaking/rooting your phone. It may expose you to security risks and app malfunction.',
      name: 'securityWarningContent',
      desc: '',
      args: [],
    );
  }

  /// `Third-Party Services`
  String get thirdParty {
    return Intl.message(
      'Third-Party Services',
      name: 'thirdParty',
      desc: '',
      args: [],
    );
  }

  /// `The app uses third-party services like Google Play, Firebase, and Facebook, which have their own terms.`
  String get thirdPartyContent {
    return Intl.message(
      'The app uses third-party services like Google Play, Firebase, and Facebook, which have their own terms.',
      name: 'thirdPartyContent',
      desc: '',
      args: [],
    );
  }

  /// `Internet & Data Charges`
  String get networkUsage {
    return Intl.message(
      'Internet & Data Charges',
      name: 'networkUsage',
      desc: '',
      args: [],
    );
  }

  /// `An active internet connection is required. You are responsible for data charges or roaming fees.`
  String get networkUsageContent {
    return Intl.message(
      'An active internet connection is required. You are responsible for data charges or roaming fees.',
      name: 'networkUsageContent',
      desc: '',
      args: [],
    );
  }

  /// `Device Responsibility`
  String get deviceResponsibility {
    return Intl.message(
      'Device Responsibility',
      name: 'deviceResponsibility',
      desc: '',
      args: [],
    );
  }

  /// `You are responsible for keeping your device charged and ensuring access to the app.`
  String get deviceResponsibilityContent {
    return Intl.message(
      'You are responsible for keeping your device charged and ensuring access to the app.',
      name: 'deviceResponsibilityContent',
      desc: '',
      args: [],
    );
  }

  /// `Information Accuracy`
  String get accuracy {
    return Intl.message(
      'Information Accuracy',
      name: 'accuracy',
      desc: '',
      args: [],
    );
  }

  /// `While we aim to keep the app updated, we rely on third parties and are not liable for losses from inaccurate information.`
  String get accuracyContent {
    return Intl.message(
      'While we aim to keep the app updated, we rely on third parties and are not liable for losses from inaccurate information.',
      name: 'accuracyContent',
      desc: '',
      args: [],
    );
  }

  /// `App Updates & Termination`
  String get updates {
    return Intl.message(
      'App Updates & Termination',
      name: 'updates',
      desc: '',
      args: [],
    );
  }

  /// `We may update or discontinue the app anytime. You agree to accept updates to continue usage.`
  String get updatesContent {
    return Intl.message(
      'We may update or discontinue the app anytime. You agree to accept updates to continue usage.',
      name: 'updatesContent',
      desc: '',
      args: [],
    );
  }

  /// `Changes to Terms`
  String get termsChanges {
    return Intl.message(
      'Changes to Terms',
      name: 'termsChanges',
      desc: '',
      args: [],
    );
  }

  /// `These terms may be updated. Please check this page periodically for changes.`
  String get termsChangesContent {
    return Intl.message(
      'These terms may be updated. Please check this page periodically for changes.',
      name: 'termsChangesContent',
      desc: '',
      args: [],
    );
  }

  /// `For questions about the terms, email us at: medSync77@gmail.com`
  String get contactTermsContent {
    return Intl.message(
      'For questions about the terms, email us at: medSync77@gmail.com',
      name: 'contactTermsContent',
      desc: '',
      args: [],
    );
  }

  /// `Effective Date: 2025-04-19`
  String get dateTerms {
    return Intl.message(
      'Effective Date: 2025-04-19',
      name: 'dateTerms',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset {
    return Intl.message(
      'Reset Password',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Your Password?`
  String get forgot {
    return Intl.message(
      'Forgot Your Password?',
      name: 'forgot',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email , we will send you confirmation code`
  String get subtitleForgot {
    return Intl.message(
      'Enter your email , we will send you confirmation code',
      name: 'subtitleForgot',
      desc: '',
      args: [],
    );
  }

  /// `Enter Verification Code`
  String get verification {
    return Intl.message(
      'Enter Verification Code',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter code that we have sent to your mail info***@gmail.com`
  String get subtitleVerification {
    return Intl.message(
      'Enter code that we have sent to your mail info***@gmail.com',
      name: 'subtitleVerification',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t receive the code?`
  String get notReceiveCode {
    return Intl.message(
      'Didn’t receive the code?',
      name: 'notReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Wrong code`
  String get wrongCode {
    return Intl.message(
      'Wrong code',
      name: 'wrongCode',
      desc: '',
      args: [],
    );
  }

  /// `code is expired`
  String get expired {
    return Intl.message(
      'code is expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `empty code`
  String get emptyCode {
    return Intl.message(
      'empty code',
      name: 'emptyCode',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss`
  String get dismiss {
    return Intl.message(
      'Dismiss',
      name: 'dismiss',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get newPassword {
    return Intl.message(
      'Create New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create Password`
  String get createPassword {
    return Intl.message(
      'Create Password',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully reset your password.`
  String get successResetPassword {
    return Intl.message(
      'You have successfully reset your password.',
      name: 'successResetPassword',
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
