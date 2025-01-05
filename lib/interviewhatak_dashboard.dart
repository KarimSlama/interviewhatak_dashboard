import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/di/dependency_injection.dart';
import 'package:interviewhatak_dashboard/core/routing/app_router.dart';
import 'package:interviewhatak_dashboard/core/routing/routes.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/core/theming/app_themes/thme_light.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';

class InterviewhatakDashboard extends StatelessWidget {
  final AppRouter? appRouter;

  const InterviewhatakDashboard({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.interviewhatak,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.dashboardScreen,
      onGenerateRoute: appRouter?.generateRoute,
      theme: themeLight,
    );
  }
}
