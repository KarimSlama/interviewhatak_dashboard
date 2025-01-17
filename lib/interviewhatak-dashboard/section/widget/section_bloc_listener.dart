import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/helpers/constants.dart';
import 'package:interviewhatak_dashboard/core/widgets/loading_progress.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/controller/section_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/controller/section_state.dart';

class SectionBlocListener extends StatelessWidget {
  const SectionBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SectionCubit, SectionState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Loaded || current is Error,
      child: SizedBox.shrink(),
      listener: (context, state) {
        final cubit = context.read<SectionCubit>();
        state.whenOrNull(
          loading: () => LoadingProgress(),
          loaded: () {
            cubit.sectionNameController.text = '';
            cubit.sectionDescController.text = '';
          },
          error: (error) => setupErrorState(context, error),
        );
      },
    );
  }
}
