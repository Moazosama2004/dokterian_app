import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_assets.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: AppColors.lightWhiteColor,
              borderRadius: BorderRadius.circular(500000),
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.imagesCovidIcon,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Covid 19',
            style: AppStyles.font15Regular.copyWith(
              color: AppColors.deepWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
