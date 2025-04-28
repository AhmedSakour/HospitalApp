import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/features/auth/data/models/modal_bottom_sheet_model.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:medsync/features/auth/presentation/views/widgets/login_textformfields_section.dart';
import 'package:medsync/generated/l10n.dart';

class CreateNewPasswordViewBody extends StatefulWidget {
  const CreateNewPasswordViewBody({super.key});

  @override
  State<CreateNewPasswordViewBody> createState() =>
      _CreateNewPasswordViewBodyState();
}

class _CreateNewPasswordViewBodyState extends State<CreateNewPasswordViewBody> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 66),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).newPassword,
                style: AppStyles.styleSemiBold24
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              const SizedBox(height: 40),
              const LoginTextFormFieldsSection(),
              const SizedBox(height: 60),
              CustomButton(
                title: S.of(context).createPassword,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    showCustomModalBottomSheet(
                      context,
                      ModalBottomSheetModel(
                        title: S.of(context).success,
                        descritpion: S.of(context).successResetPassword,
                        icon: Icons.message,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
