import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/helpers/extensions.dart';
import 'package:interviewhatak_dashboard/core/routing/routes.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
import 'package:interviewhatak_dashboard/core/widgets/build_text_field.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/cancel_button.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/widget/categories_bloc_listener.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final categoryFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: categoryFormKey,
      child: Padding(
        padding: EdgeInsets.all(16),
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
            BuildTextField(
              hint: AppString.imageUrl,
              controller: context.read<CategoryCubit>().categoryImageController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return AppString.enterValidCategoryImageUrl;
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CancelButton(),
                TextButton(
                  onPressed: () {
                    if (categoryFormKey.currentState!.validate()) {
                      context.read<CategoryCubit>().createNewCategory();
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.orange),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: WidgetStateProperty.all(
                      Size(190, 50),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: Text(
                    AppString.save,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.white),
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  context.pushNamed(
                    Routes.fieldScreen,
                    arguments: context.read<CategoryCubit>().categoriesList,
                  );
                },
                child: Text('Click and add new field')),
            CategoriesBlocListener(),
          ],
        ),
      ),
    );
  }
}
