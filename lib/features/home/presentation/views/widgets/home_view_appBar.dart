import 'package:flutter/material.dart';
import 'package:medsync/features/home/presentation/views/widgets/notification_icon_section.dart';
import 'package:medsync/features/home/presentation/views/widgets/titleAndSubtitle_homeViewAppBar_section.dart';
import 'package:medsync/features/home/presentation/views/widgets/user_avatar_section.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatarSection(),
              SizedBox(width: 12),
              TitleAndSubtitleHomeViewAppBarSection(),
            ],
          ),
          NotificationIconSection(),
        ],
      ),
    );
  }
}
