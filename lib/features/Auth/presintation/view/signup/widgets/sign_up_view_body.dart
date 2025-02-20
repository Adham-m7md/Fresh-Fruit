import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_text_form_feild.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.03),
            const CustomTextFormFeild(
              hintText: 'الاسم كامل',
              keyBoardType: TextInputType.text,
            ),
            SizedBox(height: context.screenHeight * 0.02),
            const CustomTextFormFeild(
              hintText: 'البريد الإلكتروني',
              keyBoardType: TextInputType.text,
            ),
            SizedBox(height: context.screenHeight * 0.02),
            CustomTextFormFeild(
              hintText: 'كلمة المرور',
              keyBoardType: TextInputType.text,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: AppColors.kGrayColor,
                  )),
            ),
            SizedBox(height: context.screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
