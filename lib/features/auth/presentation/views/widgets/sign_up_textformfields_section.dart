import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:medsync/generated/l10n.dart';

class SignUpTextformfieldsSection extends StatefulWidget {
  const SignUpTextformfieldsSection({super.key});

  @override
  State<SignUpTextformfieldsSection> createState() =>
      _SignUpTextformfieldsSectionState();
}

class _SignUpTextformfieldsSectionState
    extends State<SignUpTextformfieldsSection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visiblePassword = false;
  Color prefixIconColorNameField = AppColor.greyColor;
  Color prefixIconColorEmailField = AppColor.greyColor;
  Color suffixIconColorEmailField = AppColor.greyColor;
  Color prefixIconColorPasswordField = AppColor.greyColor;
  final FocusNode focusNodeNameField = FocusNode();
  final FocusNode focusNodeEmailField = FocusNode();
  final FocusNode focusNodePasswordField = FocusNode();
  Color borderColorNameField = AppColor.lightGrey;
  Color borderColorEmailField = AppColor.lightGrey;
  Color borderColorPasswordField = AppColor.lightGrey;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          prefixIconColor: prefixIconColorNameField,
          onTap: () {
            setState(() {
              prefixIconColorNameField = AppColor.primaryLightColor;
              prefixIconColorEmailField = AppColor.greyColor;
              prefixIconColorPasswordField = AppColor.greyColor;
            });
          },
          onTapOutside: (event) {
            focusNodeNameField.unfocus();
            setState(() {
              prefixIconColorNameField = AppColor.greyColor;
            });
          },
          borderColor: borderColorNameField,
          focusNode: focusNodeNameField,
          controller: nameController,
          hint: S.of(context).hintName,
          prefixIcon: Icons.person_outline,
          textInputType: TextInputType.name,
          validator: (value) {
            if (value!.isEmpty) {
              borderColorNameField = AppColor.redColor;

              return S.of(context).validateName;
            }
            borderColorNameField = AppColor.lightGrey;
            setState(() {});

            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          prefixIconColor: prefixIconColorEmailField,
          onTap: () {
            setState(() {
              prefixIconColorEmailField = AppColor.primaryLightColor;
              prefixIconColorNameField = AppColor.greyColor;
              prefixIconColorPasswordField = AppColor.greyColor;
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
              suffixIconColorEmailField = AppColor.greenColor;
            } else {
              suffixIconColorEmailField = AppColor.greyColor;
            }
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
              borderColorEmailField = AppColor.redColor;

              return S.of(context).validateEmail;
            } else if (!value.contains('@gmail.com')) {
              borderColorEmailField = AppColor.redColor;

              return S.of(context).errorFormateEmail;
            }
            borderColorEmailField = AppColor.lightGrey;
            setState(() {});
            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          prefixIconColor: prefixIconColorPasswordField,
          onTap: () {
            setState(() {
              prefixIconColorPasswordField = AppColor.primaryLightColor;
              prefixIconColorEmailField = AppColor.greyColor;
              prefixIconColorNameField = AppColor.greyColor;
            });
          },
          onTapOutside: (event) {
            focusNodePasswordField.unfocus();
            setState(() {
              prefixIconColorPasswordField = AppColor.greyColor;
            });
          },
          borderColor: borderColorPasswordField,
          focusNode: focusNodePasswordField,
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
              borderColorPasswordField = AppColor.redColor;

              return S.of(context).validatePassword;
            } else if (value.length < 8) {
              borderColorPasswordField = AppColor.redColor;

              return S.of(context).shortPassword;
            }
            borderColorPasswordField = AppColor.lightGrey;
            setState(() {});
            return null;
          },
        ),
      ],
    );
  }
}
