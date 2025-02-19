import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.klightGrayColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Text(
            'أو',
            style: TextStyles.bold16,
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.klightGrayColor,
          ),
        ),
      ],
    );
  }
}
