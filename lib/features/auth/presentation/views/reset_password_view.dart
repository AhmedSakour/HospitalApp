import 'package:flutter/material.dart';
import 'package:medsync/core/widgets/custom_appBar.dart';
import 'package:medsync/features/auth/presentation/views/widgets/reset_password_view_body.dart';
import 'package:medsync/generated/l10n.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.of(context).reset),
      body: const ResetPasswordViewBody(),
    );
  }
}
