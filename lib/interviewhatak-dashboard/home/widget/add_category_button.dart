import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/category_screen.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showAnimatedDialog(context);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.orange),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          Size(190, 50),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Row(
        spacing: 10,
        children: [
          Icon(
            Icons.add,
            color: AppColors.white,
          ),
          Text(AppString.addCategory,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.white)),
        ],
      ),
    );
  }

  void showAnimatedDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: AppString.dismiss,
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, animation1, animation2) {
        return const SizedBox();
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: CategoryScreen(),
          ),
        );
      },
    );
  }
}
