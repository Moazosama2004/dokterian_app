import 'package:dokterian_app/core/utils/app_colors.dart';
import 'package:dokterian_app/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_assets.dart';
import '../core/utils/app_styles.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {super.key,
      required this.doctorName,
      required this.doctorSpecialist,
      this.trailing});

  final String doctorName;
  final String doctorSpecialist;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            leading: SvgPicture.asset(Assets.imagesDoctor1),
            title: Text(
              doctorName,
              style: AppStyles.font16Bold,
            ),
            subtitle: Text(
              doctorSpecialist,
              style: AppStyles.font14Regular,
            ),
            trailing: trailing ??
                SvgPicture.asset(
                  Assets.imagesArrowRightIcon,
                ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.white24,
            height: 32,
          ),
          const TimeWidget(),
        ],
      ),
    );
  }
}
