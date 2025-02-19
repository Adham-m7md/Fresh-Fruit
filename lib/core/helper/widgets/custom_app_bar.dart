import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String titel}) {
  return AppBar(
    backgroundColor: AppColors.kWiteColor,
    centerTitle: true,
    title: Text(
      titel,
      style: TextStyles.bold19,
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new),
    ),
  );
}
