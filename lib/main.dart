import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/di/dependency_injection.dart';
import 'package:interviewhatak_dashboard/core/routing/app_router.dart';
import 'package:interviewhatak_dashboard/firebase_options.dart';
import 'package:interviewhatak_dashboard/interviewhatak_dashboard.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    InterviewhatakDashboard(
      appRouter: AppRouter(),
    ),
  );
}
