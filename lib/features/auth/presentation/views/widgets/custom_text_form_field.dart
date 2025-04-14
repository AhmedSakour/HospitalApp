import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.textInputType,
      required this.prefixIcon,
      required this.hint,
      this.obscureText = false,
      this.suffixIcon,
      this.suffixFunction,
      required this.validator,
      this.onChanged,
      required this.suffixIconColor,
      this.onTap,
      this.onTapOutside,
      required this.focusNode,
      required this.borderColor});
  final TextEditingController controller;
  final TextInputType textInputType;
  final IconData prefixIcon;
  final String hint;

  final bool obscureText;
  final IconData? suffixIcon;
  final Function()? suffixFunction;
  final Function(String)? onChanged;

  final Function(PointerDownEvent)? onTapOutside;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final Color suffixIconColor;
  final FocusNode focusNode;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      focusNode: focusNode,
      onTapOutside: onTapOutside,
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      cursorColor: Theme.of(context).colorScheme.onPrimary,
      keyboardType: textInputType,
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: suffixIconColor,
          ),
          suffixIcon: IconButton(
              onPressed: suffixFunction,
              icon: Icon(
                suffixIcon,
                color: AppColor.greyColor,
              )),
          hintText: hint,
          hintStyle: AppStyles.styleRegular14
              .copyWith(fontSize: 16, color: AppColor.greyColor),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(48)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(48)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(48),
            borderSide: BorderSide(
              width: 1,
              color: borderColor,
            ),
          )),
    );
  }
}
