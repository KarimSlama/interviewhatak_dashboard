import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/home/widget/view_all_button.dart';

class CategoriesOverviewHeaderWidget extends StatelessWidget {
  const CategoriesOverviewHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 10,
          children: [
            SelectableText(
              AppString.yourCategoriesOverview,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            ViewAllButton(),
          ],
        )
      ],
    );
  }
}
