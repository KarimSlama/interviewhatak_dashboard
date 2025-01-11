import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/core/theming/app_colors/app_colors.dart';

class BuildTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final FormFieldValidator<String> validate;

  const BuildTextField({
    super.key,
    required this.hint,
    required this.controller,
    required this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: AppColors.light.withValues(alpha: .5),
          ),
        ),
      ),
    );
  }
}
