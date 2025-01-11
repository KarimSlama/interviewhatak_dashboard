import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';

class LoadingProgress extends StatelessWidget {
  const LoadingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitSpinningLines(size: 40, color: AppColors.orange),
    );
  }
}
