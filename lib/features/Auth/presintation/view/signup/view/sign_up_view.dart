import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_app_bar.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';

import 'package:fresh_fruit/features/Auth/presintation/view/signup/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String id = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWiteColor,
      appBar: buildAppBar(context, titel: 'حساب جديد'),
      body: const SignUpViewBody(),
    );
  }
}
