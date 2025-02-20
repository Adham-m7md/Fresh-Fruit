import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/features/Auth/presintation/view/signup/view/sign_up_view.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟',
            style: TextStyles.semiBold16.copyWith(color: AppColors.kGrayColor),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignUpView.id);
              },
            text: ' قم بإنشاء حساب',
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.kprimaryColor),
          ),
        ],
      ),
    );
  }
}
