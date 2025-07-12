import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/home/presentation/views/widgets/banner_item_list_view.dart';
import 'package:medsync/features/home/presentation/views/widgets/home_view_appBar.dart';
import 'package:medsync/features/home/presentation/views/widgets/services_Item_list_view.dart';
import 'package:medsync/features/home/presentation/views/widgets/top_doctor_item_list_view.dart';
import 'package:medsync/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HomeViewAppBar(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverToBoxAdapter(child: BannerItemListView()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        const SliverToBoxAdapter(
          child: ServicesItemListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              S.of(context).topDoctors,
              style: AppStyles.styleSemiBold18
                  .copyWith(color: AppColor.blackColor),
            ),
          ),
        ),
        const SliverFillRemaining(child: TopDoctorItemListView())
      ],
    );
  }
}
