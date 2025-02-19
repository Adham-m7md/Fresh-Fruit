import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_app_bar.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';

import 'package:fresh_fruit/features/Auth/presintation/view/login/widgets/login_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const String id = 'loginView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWiteColor,
      appBar: buildAppBar(context, titel: 'تسجيل دخول'),
      body: const LoginViewBody(),
    );
  }
}
