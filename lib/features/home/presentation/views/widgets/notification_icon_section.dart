import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';

class NotificationIconSection extends StatelessWidget {
  const NotificationIconSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          color: AppColor.lightGrey, borderRadius: BorderRadius.circular(23)),
      child: Center(
        child: Stack(
          children: [
            const Icon(
              Icons.notifications_none,
              size: 28,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColor.redColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
