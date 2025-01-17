import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/helpers/extensions.dart';
import 'package:interviewhatak_dashboard/core/routing/routes.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/core/widgets/build_text_field.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/controller/field_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/argument_model.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/widget/fields_bloc_listener.dart';

class FieldScreen extends StatelessWidget {
  final List<String> categoryList;

  const FieldScreen({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FieldCubit>();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: cubit.fieldFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                AppString.addingaNewField,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    value: cubit.selectedCategory,
                    items: categoryList.map((String category) {
                      return DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                    onChanged: (value) {
                      cubit.changeCategoryItem(value ?? '');
                      print('Category value is $value');
                    },
                  ),
                  DropdownButton<String>(
                    value: context.read<FieldCubit>().selectedColorName,
                    hint: Text('Choose a Color'),
                    items:
                        context.read<FieldCubit>().colors.entries.map((entry) {
                      return DropdownMenuItem<String>(
                        value: entry.key,
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: entry.value,
                            ),
                            SizedBox(width: 8),
                            Text(entry.key),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        cubit.changeColorItem(value);
                      }
                    },
                  ),
                ],
              ),
              BuildTextField(
                hint: AppString.fieldName,
                controller: context.read<FieldCubit>().fieldNameController,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.enterValidCategoryDesc;
                  }
                },
              ),
              BuildTextField(
                hint: AppString.fieldDescription,
                controller: context.read<FieldCubit>().fieldDescController,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.enterValidCategoryImageUrl;
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  if (cubit.fieldFormKey.currentState!.validate()) {
                    context.read<FieldCubit>().createNewField(
                          cubit.selectedCategory,
                          cubit.selectedColorHex,
                        );
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
              TextButton(
                  onPressed: () {
                    context.pushNamed(
                      Routes.sectionScreen,
                      arguments: SectionScreenArguments(
                          categoryList: categoryList, fieldList: cubit.fields),
                    );
                  },
                  child: Text('Click and add new Section')),
              FieldBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
