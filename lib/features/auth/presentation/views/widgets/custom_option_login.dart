import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/auth/data/models/auth_option_model.dart';

class CustomOptionLogin extends StatelessWidget {
  const CustomOptionLogin({super.key, required this.authOptionModel});
  final AuthOptionModel authOptionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.lightGrey),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            authOptionModel.image,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            authOptionModel.title ?? '',
            style: AppStyles.styleMedium16
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          )
        ],
      ),
    );
  }
}
