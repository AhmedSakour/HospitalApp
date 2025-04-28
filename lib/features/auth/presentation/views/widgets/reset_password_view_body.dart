import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/features/auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:medsync/features/auth/presentation/views/widgets/reset_password_textformfield_section.dart';
import 'package:medsync/generated/l10n.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final resetcubit = BlocProvider.of<ResetPasswordCubit>(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 66),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).forgot,
                style: AppStyles.styleBold24,
              ),
              const SizedBox(height: 14),
              Text(
                S.of(context).subtitleForgot,
                style: AppStyles.styleRegular16,
              ),
              const SizedBox(height: 20),
              const ResetPasswordTextformfieldSection(),
              const SizedBox(height: 32),
              CustomButton(
                title: S.of(context).reset,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, AppRoutes.verificationCode,
                        arguments: resetcubit.email);
                    resetcubit.sendOTP();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
