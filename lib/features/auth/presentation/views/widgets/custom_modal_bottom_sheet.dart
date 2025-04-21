import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/features/auth/data/models/modal_bottom_sheet_model.dart';

void showCustomModalBottomSheet(
    BuildContext context, ModalBottomSheetModel modalBottomSheetModel) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                modalBottomSheetModel.title,
                style: AppStyles.styleSemiBold24,
              ),
              const SizedBox(height: 14),
              Text(modalBottomSheetModel.descritpion,
                  textAlign: TextAlign.center, style: AppStyles.styleRegular14),
              const SizedBox(height: 24),
              CustomButton(
                title: 'OK',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColor.primaryLightColor,
          radius: 40,
          child: Icon(modalBottomSheetModel.icon,
              color: AppColor.whiteColor, size: 40),
        ),
      ],
    ),
  );
}
