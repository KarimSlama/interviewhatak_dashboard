import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/core/widgets/build_text_field.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/argument_model.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/controller/section_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/data/model/difficulty_enum.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/widget/section_bloc_listener.dart';

class SectionScreen extends StatelessWidget {
  final SectionScreenArguments sectionScreenArguments;

  const SectionScreen({super.key, required this.sectionScreenArguments});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: cubit.sectionFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                AppString.addingNewSection,
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
                    value: cubit.selectedField,
                    items:
                        sectionScreenArguments.fieldList.map((String fields) {
                      return DropdownMenuItem(
                        value: fields,
                        child: Text(fields),
                      );
                    }).toList(),
                    onChanged: (value) {
                      cubit.changeFieldItem(value ?? '');
                      print('Category value is $value');
                    },
                  ),
                  DropdownButton(
                    value: cubit.selectedCategory,
                    items: sectionScreenArguments.categoryList
                        .map((String category) {
                      return DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                    onChanged: (value) {
                      cubit.changeCategoryItem(value ?? '');
                      print('Field value is $value');
                    },
                  ),
                  DropdownButton(
                    value: cubit.selectedDifficulty,
                    items: DifficultyEnum.values.map((difficulty) {
                      return DropdownMenuItem(
                        value: difficulty,
                        child: Text(difficulty.toString().split('.').last),
                      );
                    }).toList(),
                    onChanged: (value) {
                      cubit.changeFieldDifficulty(value ?? '');
                      print('Difficulty value is $value');
                    },
                  ),
                ],
              ),
              BuildTextField(
                hint: AppString.sectionName,
                controller: cubit.sectionNameController,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.enterValidSectionName;
                  }
                },
              ),
              BuildTextField(
                hint: AppString.sectionDesc,
                controller: cubit.sectionDescController,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.enterValidSectionDesc;
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  if (cubit.sectionFormKey.currentState!.validate()) {
                    cubit.createNewSection(
                      cubit.selectedCategory,
                      cubit.selectedField,
                      cubit.selectedDifficulty.toString().split('.').last,
                    );
                    print('enum is ${cubit.selectedDifficulty}');
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
              SectionBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
