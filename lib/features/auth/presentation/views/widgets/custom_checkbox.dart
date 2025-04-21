import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const CustomCheckbox({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: AppColor.lightGrey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 16,
                color:
                    AppColor.primaryLightColor, // change to your primary color
              )
            : null,
      ),
    );
  }
}
