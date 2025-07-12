import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/core/themes/app_colors.dart';
import 'package:medsync/core/themes/app_styles.dart';

class TopDoctorItem extends StatelessWidget {
  const TopDoctorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 312,
      height: 172,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0A393C44),
              blurRadius: 30,
              offset: Offset(0, 4),
            )
          ]),
      child: Stack(
        children: [
          Positioned(
            left: 217.50,
            top: -34.44,
            child: Opacity(
              opacity: 0.80,
              child: Container(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(0.31),
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(-0.74, -1.19),
                    end: const Alignment(0.50, 1.00),
                    colors: [
                      AppColor.whiteColor.withAlpha(143),
                      const Color(0x022563EB),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 151,
            top: 3,
            child: Container(
              width: 161,
              height: 181,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesTopDoctor),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 22,
            top: 109,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
              decoration: ShapeDecoration(
                color: AppColor.primaryLightColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'احصل على موعد',
                    style: AppStyles.styleRegular13
                        .copyWith(color: AppColor.whiteColor, fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 3,
                  height: 70,
                  decoration: ShapeDecoration(
                    color: AppColor.greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الدكتور جاكوب جونز',
                          style: AppStyles.styleSemiBold14,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('أخصائي الطب النفسي',
                            style: AppStyles.styleRegular13),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
