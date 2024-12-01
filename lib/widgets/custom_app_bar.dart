import 'package:dokterian_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: AppStyles.font16Regular,
            ),
            Text(
              'Hi James',
              style: AppStyles.font20Bold,
            ),
          ],
        ),
        SvgPicture.asset(Assets.imagesProfile),
      ],
    );
  }
}
