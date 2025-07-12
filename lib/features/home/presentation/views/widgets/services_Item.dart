import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/features/home/domain/entities/services_item_entity.dart';

class ServicesItem extends StatelessWidget {
  const ServicesItem({
    super.key,
    required this.servicesItemEntity,
  });
  final ServicesItemEntity servicesItemEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      height: 106,
      width: 99,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColor.lightSky,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            servicesItemEntity.image,
            width: 56,
            height: 56,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            servicesItemEntity.title,
            style: AppStyles.styleMedium12,
          )
        ],
      ),
    );
  }
}
