import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/home/widget/table_cells.dart';

class CategoriesOverviewDetailsWidget extends StatelessWidget {
  const CategoriesOverviewDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(2),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(1),
        },
        border: TableBorder.all(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.light.withValues(alpha: .1)),
        children: [
          buildHeaderRow(),
          ...tableData.map((data) => buildDataRow(data))
        ],
      ),
    );
  }

  TableRow buildHeaderRow() {
    return TableRow(
      children: [
        TableCells(text: 'Category Name', isHeader: true),
        TableCells(text: 'Added By', isHeader: true),
        TableCells(text: 'Level', isHeader: true),
        TableCells(text: 'Status', isHeader: true),
        TableCells(text: 'Date', isHeader: true),
      ],
    );
  }

  TableRow buildDataRow(Map<String, String> data) {
    return TableRow(
      children: [
        TableCells(text: data['category_name']),
        TableCells(text: data['added_by']),
        TableCells(text: data['level']),
        TableCells(text: data['status']),
        TableCells(text: data['date']),
      ],
    );
  }

  final List<Map<String, String>> tableData = const [
    {
      'category_name': 'Programming',
      'added_by': 'Karim Slama',
      'level': 'Intermediate',
      'status': 'Done',
      'date': 'Dec 18, 2024',
    },
    {
      'category_name': 'AI',
      'added_by': 'Karim Slama',
      'level': 'Advanced',
      'status': 'In Progress',
      'date': 'Jan 15, 2025',
    },
    {
      'category_name': 'Marketing',
      'added_by': 'Karim Slama',
      'level': 'Beginner',
      'status': 'Pending',
      'date': 'Feb 10, 2025',
    },
    {
      'category_name': 'Flutter',
      'added_by': 'Karim Slama',
      'level': 'Intermediate',
      'status': 'Done',
      'date': 'Mar 5, 2025',
    },
    {
      'category_name': 'Data Science',
      'added_by': 'Karim Slama',
      'level': 'Advanced',
      'status': 'In Progress',
      'date': 'Apr 20, 2025',
    },
    {
      'category_name': 'Data Science',
      'added_by': 'Karim Slama',
      'level': 'Advanced',
      'status': 'In Progress',
      'date': 'Apr 20, 2025',
    },
    {
      'category_name': 'Data Science',
      'added_by': 'Karim Slama',
      'level': 'Advanced',
      'status': 'In Progress',
      'date': 'Apr 20, 2025',
    },
  ];
}
