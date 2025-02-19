import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_text_form_feild.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.03,
            ),
            const CustomTextFormFeild(
              hintText: 'البريد الألكتروني',
              keyBoardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: context.screenHeight * 0.03,
            ),
            const CustomTextFormFeild(
              hintText: 'كلمة المرور',
              keyBoardType: TextInputType.visiblePassword,
              suffixIcon:
                  Icon(Icons.remove_red_eye, color: AppColors.kGrayColor),
            ),
          ],
        ),
      ),
    );
  }
}
