import 'package:flutter/material.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/generated/l10n.dart';

void showPrivacyPolicyDialog(BuildContext context) {
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
              Text(S.of(context).privacy, style: AppStyles.styleSemiBold22),
              const Divider(
                thickness: 1.5,
                color: AppColor.blackColor,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sectionTitle(S.of(context).informationPrivacy),
                      bulletText(S.of(context).firstInformation),
                      bulletText(S.of(context).secondInformation),
                      bulletText(S.of(context).thirdInformation),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).partyAccess),
                      bulletText(S.of(context).firstPartyAccess),
                      bulletText(S.of(context).secondPartyAccess),
                      bulletText(S.of(context).thirdPartyAccess),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).rights),
                      bulletText(S.of(context).rightsContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).dataRetention),
                      bulletText(S.of(context).dataRetentionContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).child),
                      bulletText(S.of(context).firstChild),
                      bulletText(S.of(context).secondChild),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).security),
                      bulletText(S.of(context).securityContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).changes),
                      bulletText(S.of(context).changesContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).consent),
                      bulletText(S.of(context).consentContent),
                      const SizedBox(height: 16),
                      sectionTitle(S.of(context).contact),
                      Text(
                        S.of(context).contactContent,
                        style: AppStyles.styleRegular15,
                      ),
                      const SizedBox(height: 16),
                      Text(S.of(context).datePrivacy),
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

Widget sectionTitle(String title) {
  return Text(
    title,
    style: AppStyles.styleSemiBold16.copyWith(color: AppColor.blackColor),
  );
}

Widget bulletText(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• "),
        Expanded(
          child: Text(
            text,
            style: AppStyles.styleRegular15,
          ),
        ),
      ],
    ),
  );
}
