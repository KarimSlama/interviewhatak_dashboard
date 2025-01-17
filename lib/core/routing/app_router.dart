import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/core/di/dependency_injection.dart';
import 'package:interviewhatak_dashboard/core/routing/routes.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/category_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/dashboard/dashboard_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/controller/field_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/argument_model.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/field_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/controller/section_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/section_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.dashboardScreen:
        return MaterialPageRoute(builder: (_) => DashboardScreen());

      case Routes.categoryScreen:
        return MaterialPageRoute(
          builder: (_) => CategoryScreen(),
        );

      case Routes.fieldScreen:
        final categoriesList = settings.arguments as List<String>;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<FieldCubit>()..getFields(categoriesList[3]),
            child: FieldScreen(
              categoryList: categoriesList,
            ),
          ),
        );

      case Routes.sectionScreen:
        final args = settings.arguments as SectionScreenArguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SectionCubit>(),
            child: SectionScreen(
              sectionScreenArguments: args,
            ),
          ),
        );

      default:
        return null;
    }
  }
}
