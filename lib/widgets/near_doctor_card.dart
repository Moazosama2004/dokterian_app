import 'package:dokterian_app/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_assets.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

class NearDoctorCard extends StatelessWidget {
  const NearDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightWhiteColor,
          boxShadow: [
            BoxShadow(color: AppColors.lightWhiteColor, blurRadius: 100),
          ],
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            leading: SvgPicture.asset(Assets.imagesDoctor2),
            title: const Text(
              'Dr. Joseph Brostito',
              style: AppStyles.font16Bold,
            ),
            subtitle: const Text(
              'Dental Specialist',
              style: AppStyles.font14Regular,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.imagesLocationIcon),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '1.2 KM',
                  style: AppStyles.font14Regular,
                )
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.white24,
            height: 32,
          ),
          const NearDoctorTimeWidget(),
        ],
      ),
    );
  }
}
