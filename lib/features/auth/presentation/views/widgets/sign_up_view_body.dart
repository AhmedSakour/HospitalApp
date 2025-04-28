import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_routes.dart';
import 'package:medsync/core/widgets/custom_button.dart';
import 'package:medsync/features/auth/data/models/modal_bottom_sheet_model.dart';
import 'package:medsync/features/auth/presentation/views/widgets/Terms_service_and_privacy_policy_section.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_listview_options_login.dart';
import 'package:medsync/features/auth/presentation/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:medsync/features/auth/presentation/views/widgets/label_section.dart';
import 'package:medsync/features/auth/presentation/views/widgets/or_option_selection.dart';
import 'package:medsync/features/auth/presentation/views/widgets/sign_up_textformfields_section.dart';
import 'package:medsync/generated/l10n.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Form(
        key: formKey,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: SignUpTextformfieldsSection(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsServiceAndPrivacyPolicySection(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomButton(
                title: S.of(context).sign,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    showCustomModalBottomSheet(
                        context,
                        ModalBottomSheetModel(
                            title: S.of(context).success,
                            descritpion: S.of(context).registerSuccess,
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
                question: S.of(context).haveAccount,
                option: S.of(context).login,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.login);
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
      ),
    );
  }
}
