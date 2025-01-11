// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';
// import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
// import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
//
// class SaveButton extends StatelessWidget {
//   final GlobalKey<FormState> formKey;
//
//   const SaveButton({super.key, required this.formKey});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         validateThenCreate(context);
//       },
//       style: ButtonStyle(
//         backgroundColor: WidgetStateProperty.all(AppColors.orange),
//         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         minimumSize: WidgetStateProperty.all(
//           Size(190, 50),
//         ),
//         shape: WidgetStateProperty.all(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//       ),
//       child: Text(
//         AppString.save,
//         style: Theme.of(context)
//             .textTheme
//             .bodyMedium
//             ?.copyWith(color: AppColors.white),
//       ),
//     );
//   }
//
//   void validateThenCreate(BuildContext context) async {
//     if (formKey.currentState!.validate()) {
//       context.read<CategoryCubit>().createNewCategory();
//     }
//   }
// }
