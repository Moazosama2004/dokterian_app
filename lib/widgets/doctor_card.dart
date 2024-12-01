import 'package:dokterian_app/core/utils/app_colors.dart';
import 'package:dokterian_app/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_assets.dart';
import '../core/utils/app_styles.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            leading: SvgPicture.asset(Assets.imagesDoctor1),
            title: Text(
              'Dr. Imran Syahir',
              style: AppStyles.font16Bold,
            ),
            subtitle: Text(
              'General Doctor',
              style: AppStyles.font14Regular,
            ),
            trailing: SvgPicture.asset(
              Assets.imagesArrowRightIcon,
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.white24,
            height: 32,
          ),
          TimeWidget(),
        ],
      ),
    );
  }
}
