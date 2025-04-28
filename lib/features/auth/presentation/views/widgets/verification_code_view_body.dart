import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/features/auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_snackbar.dart';
import 'package:medsync/features/auth/presentation/views/widgets/label_section.dart';
import 'package:medsync/features/auth/presentation/views/widgets/otp_verification.dart';
import 'package:medsync/generated/l10n.dart';

class VerificationCodeViewBody extends StatefulWidget {
  const VerificationCodeViewBody({
    super.key,
    required this.email,
  });
  final String email;
  @override
  State<VerificationCodeViewBody> createState() =>
      _VerificationCodeViewBodyState();
}

class _VerificationCodeViewBodyState extends State<VerificationCodeViewBody> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final resetCubit = BlocProvider.of<ResetPasswordCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 33),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).verification,
              style: AppStyles.styleBold24
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
            const SizedBox(height: 14),
            Text(
              S.of(context).subtitleVerification,
              style: AppStyles.styleRegular16,
            ),
            const SizedBox(height: 20),
            const OtpVerification(),
            const SizedBox(height: 32),
            CustomButton(
                title: S.of(context).verify,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    if (resetCubit.isExpiredOTP()) {
                      CustomSnackBar.show(context,
                          message: S.of(context).expired);
                      return;
                    } else if (!resetCubit.verifyOTP()) {
                      CustomSnackBar.show(context,
                          message: S.of(context).wrongCode);
                      return;
                    }
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.createNewPassword);
                  }
                }),
            const SizedBox(height: 20),
            LabelSection(
              question: S.of(context).notReceiveCode,
              option: S.of(context).resend,
              onTap: () {
                resetCubit.email = widget.email;
                resetCubit.sendOTP();
              },
            )
          ],
        ),
      ),
    );
  }
}
