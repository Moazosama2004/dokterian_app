import 'package:dokterian_app/core/utils/app_assets.dart';
import 'package:dokterian_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesCalendarIcon,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Sunday, 12 June')
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesCalendarIcon,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Sunday, 12 June')
            ],
          ),
        ),
      ],
    );
  }
}

class NearDoctorTimeWidget extends StatelessWidget {
  const NearDoctorTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesClockIcon,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '4,8 (120 Reviews)',
                style:
                    AppStyles.font12Regular.copyWith(color: Color(0XFFFEB052)),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesCalendarIcon,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Open at 17.00', style: AppStyles.font12Regular)
            ],
          ),
        ),
      ],
    );
  }
}
