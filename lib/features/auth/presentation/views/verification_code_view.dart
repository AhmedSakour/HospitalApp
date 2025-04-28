import 'package:flutter/material.dart';
import 'package:medsync/core/widgets/custom_appbar.dart';
import 'package:medsync/features/auth/presentation/views/widgets/verification_code_view_body.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    String email = ModalRoute.settingsOf(context)!.arguments as String;
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      body: VerificationCodeViewBody(
        email: email,
      ),
    );
  }
}
