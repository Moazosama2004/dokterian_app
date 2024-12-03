import 'package:dokterian_app/core/utils/app_styles.dart';
import 'package:dokterian_app/widgets/custom_app_bar.dart';
import 'package:dokterian_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/utils/app_assets.dart';
import '../core/utils/app_colors.dart';
import '../widgets/categories.dart';
import '../widgets/doctor_card.dart';
import '../widgets/list_near_doctor.dart';
import '../widgets/near_doctor_card.dart';
import '../widgets/time_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomAppBar(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              SliverToBoxAdapter(
                child: DoctorCard(
                  doctorName: 'Dr. Imran Syahir',
                  doctorSpecialist: 'General Doctor',
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: SearchWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(
                child: Categories(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'Near Doctor',
                  style: AppStyles.font16SemiBold,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              ListNearDoctor()
            ],
          ),
        ),
      ),
    );
  }
}
