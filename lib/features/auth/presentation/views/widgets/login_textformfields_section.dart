import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:medsync/generated/l10n.dart';

class LoginTextFormFieldsSection extends StatefulWidget {
  const LoginTextFormFieldsSection({
    super.key,
  });

  @override
  State<LoginTextFormFieldsSection> createState() =>
      _LoginTextFormFieldsSectionState();
}

class _LoginTextFormFieldsSectionState
    extends State<LoginTextFormFieldsSection> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visiblePassword = false;
  Color suffixIconColorEmailField = AppColor.greyColor;
  Color suffixIconColorPasswordField = AppColor.greyColor;
  final FocusNode focusNodeNameField = FocusNode();
  final FocusNode focusNodeEmailField = FocusNode();
  Color borderColorEmailField = AppColor.lightGrey;
  Color borderColorPasswordField = AppColor.lightGrey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          onTap: () {
            setState(() {
              suffixIconColorEmailField = AppColor.primaryLightColor;
              suffixIconColorPasswordField = AppColor.greyColor;
            });
          },
          onTapOutside: (event) {
            focusNodeNameField.unfocus();
            setState(() {
              suffixIconColorEmailField = AppColor.greyColor;
            });
          },
          borderColor: borderColorEmailField,
          focusNode: focusNodeNameField,
          suffixIconColor: suffixIconColorEmailField,
          controller: emailController,
          hint: S.of(context).hintEmail,
          prefixIcon: Icons.email_outlined,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              setState(() {
                borderColorEmailField = Colors.red;
              });

              return S.of(context).validateEmail;
            } else if (!value.contains('@gmail.com')) {
              setState(() {
                borderColorEmailField = Colors.red;
              });
              return S.of(context).errorFormateEmail;
            }
            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          onTap: () {
            setState(() {
              suffixIconColorPasswordField = AppColor.primaryLightColor;
              suffixIconColorEmailField = AppColor.greyColor;
            });
          },
          onTapOutside: (event) {
            focusNodeEmailField.unfocus();
            setState(() {
              suffixIconColorPasswordField = AppColor.greyColor;
            });
          },
          borderColor: borderColorPasswordField,
          focusNode: focusNodeEmailField,
          suffixIconColor: suffixIconColorPasswordField,
          controller: passwordController,
          hint: S.of(context).hintPassword,
          prefixIcon: Icons.lock_outline,
          textInputType: TextInputType.visiblePassword,
          obscureText: visiblePassword,
          suffixFunction: () {
            visiblePassword = !visiblePassword;
            setState(() {});
          },
          suffixIcon: visiblePassword ? Icons.visibility_off : Icons.visibility,
          validator: (value) {
            if (value!.isEmpty) {
              setState(() {
                borderColorPasswordField = Colors.red;
              });
              return S.of(context).validatePassword;
            } else if (value.length < 8) {
              setState(() {
                borderColorPasswordField = Colors.red;
              });
              return S.of(context).shortPassword;
            }
            return null;
          },
        ),
      ],
    );
  }
}
