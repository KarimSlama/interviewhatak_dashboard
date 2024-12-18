import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/home/widget/categories_card_widget.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/home/widget/categories_overview_details_widget.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/home/widget/categories_overview_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 50, vertical: 30),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          spacing: 30,
          children: [
            Row(
              spacing: 20,
              children: [
                CategoriesCardWidget(
                  count: 20,
                  title: AppString.categories,
                  color: AppColors.orange,
                ),
                CategoriesCardWidget(
                  count: 10,
                  title: AppString.sections,
                  color: AppColors.black.withValues(alpha: .2),
                ),
                CategoriesCardWidget(
                  count: 30,
                  title: AppString.fields,
                  color: AppColors.black.withValues(alpha: .2),
                ),
                CategoriesCardWidget(
                  count: 120,
                  title: AppString.questions,
                  color: AppColors.black.withValues(alpha: .2),
                ),
              ],
            ),
            const CategoriesOverviewHeaderWidget(),
            const CategoriesOverviewDetailsWidget(),
          ],
        ),
      ),
    );
  }
}
