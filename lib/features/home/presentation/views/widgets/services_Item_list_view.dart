import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/features/home/domain/entities/services_item_entity.dart';
import 'package:medsync/features/home/presentation/views/widgets/services_Item.dart';
import 'package:medsync/generated/l10n.dart';

class ServicesItemListView extends StatelessWidget {
  const ServicesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServicesItemEntity> items = [
      ServicesItemEntity(
          image: Assets.imagesAmbulance, title: S.of(context).ambulance),
      ServicesItemEntity(
          image: Assets.imagesMedicineIcon, title: S.of(context).medicine),
      ServicesItemEntity(
          image: Assets.imagesQuickHelpIcon, title: S.of(context).quickHelp),
    ];
    return SizedBox(
      height: 106,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          return ServicesItem(
            servicesItemEntity: items[index],
          );
        },
      ),
    );
  }
}
