import 'package:flutter/material.dart';
import 'package:medsync/core/widgets/custom_appBar.dart';
import 'package:medsync/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:medsync/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).login,
      ),
      body: const LoginViewBody(),
    );
  }
}
