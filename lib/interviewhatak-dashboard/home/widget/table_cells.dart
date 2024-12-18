import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';

class TableCells extends StatelessWidget {
  final String? text;
  final Widget? child;
  final bool isHeader;

  const TableCells({this.text, this.child, this.isHeader = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child ??
          SelectableText(
            text ?? '',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
                fontSize: isHeader ? 16 : 14,
                color: isHeader
                    ? AppColors.brown
                    : AppColors.white.withValues(alpha: .4)),
          ),
    );
  }
}
