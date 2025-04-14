import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/generated/l10n.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).notHaveAccount,
          style: AppStyles.styleRegular15,
        ),
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, AppRoutes.signUp);
          },
          child: Text(S.of(context).sign,
              style: AppStyles.styleRegular15
                  .copyWith(color: AppColor.primaryLightColor)),
        ),
      ],
    );
  }
}
