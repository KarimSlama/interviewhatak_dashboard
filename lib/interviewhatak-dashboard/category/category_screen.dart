import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/build_text_field.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/cancel_button.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/save_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            AppString.addingaNewCategory,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          BuildTextField(
            hint: AppString.categoryName,
            controller: controller,
          ),
          BuildTextField(
            hint: AppString.description,
            controller: controller,
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: BuildTextField(
                    controller: controller,
                    hint:
                        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}'),
              ),
              Expanded(
                child: BuildTextField(
                    hint: AppString.imageUrl, controller: controller),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CancelButton(),
              SaveButton(),
            ],
          ),
        ],
      ),
    );
  }
}
