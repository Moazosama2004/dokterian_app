import 'package:dokterian_app/core/utils/app_assets.dart';
import 'package:dokterian_app/core/utils/app_colors.dart';
import 'package:dokterian_app/core/utils/app_styles.dart';
import 'package:dokterian_app/widgets/custom_app_bar.dart';
import 'package:dokterian_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/doctor_card.dart';

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
                child: DoctorCard(),
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
            ],
          ),
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Category(),
        Category(),
        Category(),
        Category(),
      ],
    );
  }
}

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
