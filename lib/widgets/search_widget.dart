import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_assets.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0), // Adjust padding as needed
          child: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset(Assets.imagesSearchNormalIcon),
          ),
        ),
        hintText: 'Search doctor or health issue',
        hintStyle:
            AppStyles.font15Regular.copyWith(color: AppColors.deepWhiteColor),
        fillColor: AppColors.lightWhiteColor,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.transparent)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
