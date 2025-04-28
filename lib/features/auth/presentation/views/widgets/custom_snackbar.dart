import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/utils/functions/get_current_language.dart';
import 'package:medsync/generated/l10n.dart';

class CustomSnackBar {
  static show(BuildContext context, {required String message}) {
    SnackBar snackBar = SnackBar(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: AppColor.redColor.withAlpha(90), width: 2),
                color: AppColor.redColor.withAlpha(20)),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColor.redColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.error, color: Colors.white),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(S.of(context).error, style: AppStyles.styleBold16),
                      Text(message,
                          style: AppStyles.styleMedium14
                              .copyWith(color: AppColor.greyColor))
                    ],
                  ),
                )),
              ],
            ),
          ),
          Positioned(
            left: getCurrentLangauge() == 'ar' ? 5 : 290,
            top: -23,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.cancel, color: AppColor.redColor),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 16),
      duration: const Duration(seconds: 6),
      elevation: 0,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
