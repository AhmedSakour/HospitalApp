import 'package:flutter/material.dart';
import 'package:medsync/core/widgets/custom_appBar.dart';
import 'package:medsync/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:medsync/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.of(context).sign),
      body: const SignUpViewBody(),
    );
  }
}
