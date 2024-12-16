import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/routing/app_router.dart';
import 'package:interviewhatak_dashboard/interviewhatak_dashboard.dart';

void main() {
  runApp(
    InterviewhatakDashboard(
      appRouter: AppRouter(),
    ),
  );
}
