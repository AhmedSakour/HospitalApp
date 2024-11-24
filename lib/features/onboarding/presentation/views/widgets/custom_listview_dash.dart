import 'package:flutter/material.dart';
import 'package:medsync/features/onboarding/presentation/views/widgets/custom_dash.dart';

class CustomListviewDash extends StatelessWidget {
  const CustomListviewDash({super.key, this.isCurrentIndex = 0});
  final int isCurrentIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      width: 13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: CustomDash(
              isActiveIndex: isCurrentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
