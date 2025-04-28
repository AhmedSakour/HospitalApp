import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/features/auth/data/models/modal_bottom_sheet_model.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_listview_options_login.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:medsync/features/auth/presentation/views/widgets/label_section.dart';
import 'package:medsync/features/auth/presentation/views/widgets/login_textformfields_section.dart';
import 'package:medsync/features/auth/presentation/views/widgets/or_option_selection.dart';
import 'package:medsync/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
        child: Form(
          key: formKey,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: LoginTextFormFieldsSection()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 8,
                ),
              ),
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.resetPassword);
                    },
                    child: Text(
                      S.of(context).forgetPassword,
                      style: AppStyles.styleMedium14
                          .copyWith(color: AppColor.primaryLightColor),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomButton(
                  title: S.of(context).login,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      showCustomModalBottomSheet(
                          context,
                          ModalBottomSheetModel(
                              title: S.of(context).welcome,
                              descritpion: S.of(context).loginSuccess,
                              icon: Icons.verified));
                    }
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(
                child: LabelSection(
                  question: S.of(context).notHaveAccount,
                  option: S.of(context).sign,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signUp);
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 25,
                ),
              ),
              const SliverToBoxAdapter(child: OrOptionSelection()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              const CustomListviewOptionsLogin()
            ],
          ),
        ));
  }
}
