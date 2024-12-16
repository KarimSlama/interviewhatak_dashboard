import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/routing/routes.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/dashboard/dashboard_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.dashboardScreen:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());

      default:
        return null;
    }
  }
}
