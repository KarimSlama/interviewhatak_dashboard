import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:interviewhatak_dashboard/core/helpers/extensions.dart';
import 'package:interviewhatak_dashboard/core/routing/routes.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
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
          loading: () => setupLoading(),
          success: () {
            cubit.categoryNameController.text = '';
            cubit.categoryDescController.text = '';
            cubit.categoryImageController.text = '';
          },
          error: (error) => setupErrorState(context, error),
        );
      },
    );
  }

  Widget setupLoading() =>
      Center(child: SpinKitSpinningLines(size: 40, color: AppColors.orange));

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text(
              'Got it',
            ),
          ),
        ],
      ),
    );
  }
}
