import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.keyBoardType});
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyBoardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kFillGrayColor,
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(),
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: AppColors.kGrayColor),
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: AppColors.klightGrayColor),
    );
  }
}
