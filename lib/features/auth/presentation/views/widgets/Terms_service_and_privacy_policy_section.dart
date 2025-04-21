import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_checkbox.dart';
import 'package:medsync/features/auth/presentation/views/widgets/privacy_policy.dart';
import 'package:medsync/features/auth/presentation/views/widgets/terms_conditions.dart';
import 'package:medsync/generated/l10n.dart';

class TermsServiceAndPrivacyPolicySection extends StatefulWidget {
  const TermsServiceAndPrivacyPolicySection({super.key});

  @override
  State<TermsServiceAndPrivacyPolicySection> createState() =>
      _TermsServiceAndPrivacyPolicySectionState();
}

class _TermsServiceAndPrivacyPolicySectionState
    extends State<TermsServiceAndPrivacyPolicySection> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value;
            });
          },
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 5,
            children: [
              Text(
                S.of(context).agree,
                style: AppStyles.styleRegular15,
              ),
              GestureDetector(
                onTap: () {
                  showTermsConditionsDialog(context);
                },
                child: Text(
                  S.of(context).terms,
                  style: AppStyles.styleRegular15.copyWith(
                    color: AppColor.primaryLightColor,
                  ),
                ),
              ),
              Text(
                S.of(context).and,
                style: AppStyles.styleRegular15,
              ),
              GestureDetector(
                onTap: () {
                  showPrivacyPolicyDialog(context);
                },
                child: Text(
                  S.of(context).privacy,
                  style: AppStyles.styleRegular15.copyWith(
                    color: AppColor.primaryLightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
