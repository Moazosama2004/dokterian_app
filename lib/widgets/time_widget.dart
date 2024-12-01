import 'package:dokterian_app/core/utils/app_assets.dart';
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
