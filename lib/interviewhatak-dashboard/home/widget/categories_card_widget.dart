import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';

class CategoriesCardWidget extends StatelessWidget {
  final int count;
  final String title;
  final Color? color;

  const CategoriesCardWidget(
      {super.key, required this.count, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.tight(Size(0, 150)),
        padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 18),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.white,
                  ),
            ),
            Spacer(),
            Row(
              children: [
                SelectableText(
                  '$count',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.white,
                        fontSize: 40,
                      ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.black.withValues(alpha: .2),
                    ),
                    child: Icon(
                      IconBroken.Activity,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              spacing: 10,
              children: [
                Icon(
                  IconBroken.Activity,
                ),
                SelectableText(
                  '2 Categories added',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*

Container(
        constraints: BoxConstraints.tight(Size(0, 100)),
        padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 18),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                verticalSpace(20),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.white,
                      ),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  IconBroken.Category,
                  color: AppColors.white,
                ),
                verticalSpace(15),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppString.viewAll,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.white,
                          ),
                    ))
              ],
            ),
          ],
        ),
      ),
    
*/
