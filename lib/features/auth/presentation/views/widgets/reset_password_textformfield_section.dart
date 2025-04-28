import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/features/auth/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:medsync/generated/l10n.dart';

class ResetPasswordTextformfieldSection extends StatefulWidget {
  const ResetPasswordTextformfieldSection({super.key});

  @override
  State<ResetPasswordTextformfieldSection> createState() =>
      _ResetPasswordTextformfieldSectionState();
}

class _ResetPasswordTextformfieldSectionState
    extends State<ResetPasswordTextformfieldSection> {
  TextEditingController emailController = TextEditingController();
  Color prefixIconColorEmailField = AppColor.greyColor;
  Color suffixIconColorEmailField = AppColor.greyColor;
  final FocusNode focusNodeEmailField = FocusNode();
  Color borderColorEmailField = AppColor.lightGrey;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          prefixIconColor: prefixIconColorEmailField,
          onTap: () {
            setState(() {
              prefixIconColorEmailField = AppColor.primaryLightColor;
            });
          },
          onTapOutside: (event) {
            focusNodeEmailField.unfocus();
            setState(() {
              prefixIconColorEmailField = AppColor.greyColor;
            });
          },
          onChanged: (value) {
            if (value.endsWith('@gmail.com') &&
                !value.startsWith('@gmail.com')) {
              suffixIconColorEmailField = Colors.green;
            } else {
              suffixIconColorEmailField = AppColor.greyColor;
            }
            BlocProvider.of<ResetPasswordCubit>(context).email = value;
            setState(() {});
          },
          borderColor: borderColorEmailField,
          focusNode: focusNodeEmailField,
          suffixIcon: suffixIconColorEmailField == AppColor.greyColor
              ? null
              : Icons.check,
          suffixIconColor: suffixIconColorEmailField,
          controller: emailController,
          hint: S.of(context).hintEmail,
          prefixIcon: Icons.email_outlined,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              borderColorEmailField = Colors.red;

              return S.of(context).validateEmail;
            } else if (!value.contains('@gmail.com')) {
              borderColorEmailField = Colors.red;

              return S.of(context).errorFormateEmail;
            }
            borderColorEmailField = AppColor.lightGrey;
            setState(() {});
            return null;
          },
        ),
      ],
    );
  }
}
