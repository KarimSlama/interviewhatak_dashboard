import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/helpers/constants.dart';
import 'package:interviewhatak_dashboard/core/widgets/loading_progress.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/controller/field_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/controller/field_state.dart';

class FieldBlocListener extends StatelessWidget {
  const FieldBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FieldCubit, FieldState>(
      listenWhen: (previous, current) =>
          current is FieldLoading ||
          current is FieldSuccess ||
          current is FieldChanged ||
          current is FieldError,
      child: SizedBox.shrink(),
      listener: (context, state) {
        final cubit = context.read<FieldCubit>();
        state.whenOrNull(
          loading: () => LoadingProgress(),
          success: () {
            cubit.fieldNameController.text = '';
            cubit.fieldDescController.text = '';
          },
          error: (error) => setupErrorState(context, error),
        );
      },
    );
  }
}
