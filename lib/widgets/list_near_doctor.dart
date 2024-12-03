import 'package:flutter/material.dart';

import 'near_doctor_card.dart';

class ListNearDoctor extends StatelessWidget {
  const ListNearDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          
          childCount: 10,
      (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: NearDoctorCard(),
      ),
    ));
  }
}
