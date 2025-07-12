import 'package:flutter/material.dart';
import 'package:medsync/core/themes/app_styles.dart';
import 'package:medsync/generated/l10n.dart';

class TitleAndSubtitleHomeViewAppBarSection extends StatelessWidget {
  const TitleAndSubtitleHomeViewAppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${S.of(context).hi} Albert !', style: AppStyles.styleBold18),
        const SizedBox(height: 4),
        Text(S.of(context).questionFeel, style: AppStyles.styleRegular13),
      ],
    );
  }
}
