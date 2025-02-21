import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/features/Auth/presintation/view/login/view/login_view.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل؟',
            style: TextStyles.semiBold16.copyWith(color: AppColors.kGrayColor),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, LogInView.id);
              },
            text: ' تسجيل دخول',
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.kprimaryColor),
          ),
        ],
      ),
    );
  }
}
