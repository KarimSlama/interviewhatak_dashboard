import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/helpers/extensions.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: const Text(AppString.cancel),
    );
  }
}
