import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/generated/l10n.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).haveAccount,
          style: AppStyles.styleRegular15,
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.signUp);
          },
          child: Text(S.of(context).login,
              style: AppStyles.styleRegular15
                  .copyWith(color: AppColor.primaryLightColor)),
        ),
      ],
    );
  }
}
