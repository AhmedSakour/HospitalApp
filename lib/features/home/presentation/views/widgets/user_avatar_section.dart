import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';

class UserAvatarSection extends StatelessWidget {
  const UserAvatarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      backgroundImage: AssetImage(Assets.imagesProfile),
    );
  }
}
