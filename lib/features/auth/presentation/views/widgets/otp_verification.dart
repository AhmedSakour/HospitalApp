import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:medsync/generated/l10n.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({
    super.key,
  });

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final resetCubit = BlocProvider.of<ResetPasswordCubit>(context);
    return Form(
      key: formKey,
      child: Pinput(
        controller: otpController,
        length: 5,
        autofocus: true,
        defaultPinTheme: PinTheme(
          width: 60,
          height: 60,
          textStyle: AppStyles.styleBold24
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.greyColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 60,
          height: 60,
          textStyle: AppStyles.styleBold24
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primaryLightColor, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        showCursor: true,
        onCompleted: (value) {
          resetCubit.code = value;
        },
        validator: (value) {
          if (value == null || value.length < 5) {
            return S.of(context).emptyCode;
          }
          return null;
        },
      ),
    );
  }
}
