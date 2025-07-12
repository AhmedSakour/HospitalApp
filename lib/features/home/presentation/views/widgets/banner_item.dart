import 'package:flutter/material.dart';
import 'package:medsync/core/constant/size_config.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: SizeConfig.screenWidth - 40,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              image,
            ),
          )),
    );
  }
}
