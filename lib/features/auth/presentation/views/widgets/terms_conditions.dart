import 'package:flutter/material.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/auth/presentation/views/widgets/privacy_policy.dart';
import 'package:medsync/generated/l10n.dart';

void showTermsConditionsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: SizeConfig.screenHeight * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).terms, style: AppStyles.styleSemiBold22),
              const Divider(
                thickness: 1.5,
                color: AppColor.blackColor,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sectionTitle(S.of(context).agreement),
                      bulletText(S.of(context).agreementContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).modification),
                      bulletText(S.of(context).modificationContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).securityWarning),
                      bulletText(S.of(context).securityWarningContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).thirdParty),
                      bulletText(S.of(context).thirdPartyContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).networkUsage),
                      bulletText(S.of(context).networkUsageContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).deviceResponsibility),
                      bulletText(S.of(context).deviceResponsibilityContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).accuracy),
                      bulletText(S.of(context).accuracyContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).updates),
                      bulletText(S.of(context).updatesContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).termsChanges),
                      bulletText(S.of(context).termsChangesContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).contact),
                      Text(
                        S.of(context).contactTermsContent,
                        style: AppStyles.styleRegular15,
                      ),
                      const SizedBox(height: 16),
                      Text(S.of(context).dateTerms),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
