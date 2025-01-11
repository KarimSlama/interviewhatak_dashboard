import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/helpers/constants.dart';
import 'package:interviewhatak_dashboard/core/widgets/loading_progress.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_state.dart';

class CategoriesBlocListener extends StatelessWidget {
  const CategoriesBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoryCubit, CategoryState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      child: SizedBox.shrink(),
      listener: (context, state) {
        final cubit = context.read<CategoryCubit>();
        state.whenOrNull(
          loading: () => LoadingProgress(),
          success: (data) {
            cubit.categoryNameController.text = '';
            cubit.categoryDescController.text = '';
            cubit.categoryImageController.text = '';
          },
          error: (error) => setupErrorState(context, error),
        );
      },
    );
  }
}
