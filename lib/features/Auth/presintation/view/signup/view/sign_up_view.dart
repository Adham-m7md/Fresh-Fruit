import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/features/Auth/presintation/view/signup/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String id = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SignUpViewBody(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: AppColors.kWiteColor,
    centerTitle: true,
    title: const Text(
      'حساب جديد',
      style: TextStyles.bold16,
    ),
    leading: Icon(Icons.arrow_back_ios_new_outlined),
  );
}
