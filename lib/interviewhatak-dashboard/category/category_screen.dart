import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/di/dependency_injection.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/build_text_field.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/cancel_button.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/categories_bloc_listener.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/save_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: context.read<CategoryCubit>().formKey,
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
              controller: context.read<CategoryCubit>().categoryNameController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return AppString.enterValidCategoryName;
                }
              },
            ),
            BuildTextField(
              hint: AppString.description,
              controller: context.read<CategoryCubit>().categoryDescController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return AppString.enterValidCategoryDesc;
                }
              },
            ),
            Row(
              spacing: 10,
              children: [
                // Expanded(
                //   child: BuildTextField(
                //     controller: controller,
                //     hint:
                //         '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                //   ),
                // ),
                Expanded(
                  child: BuildTextField(
                    hint: AppString.imageUrl,
                    controller:
                        context.read<CategoryCubit>().categoryImageController,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.enterValidCategoryImageUrl;
                      }
                    },
                  ),
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
            CategoriesBlocListener(),
          ],
        ),
      ),
    );
  }
}
