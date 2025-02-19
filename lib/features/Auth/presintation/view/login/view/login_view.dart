import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/features/Auth/presintation/view/login/widgets/login_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const String id = 'loginView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'تسجيل دخول',
          style: TextStyles.bold19,
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: const LoginViewBody(),
    );
  }
}
