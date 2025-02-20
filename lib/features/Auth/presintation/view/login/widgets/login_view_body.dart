import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/helper/widgets/Dont_Have_An_Account.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_button.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_text_form_feild.dart';
import 'package:fresh_fruit/core/helper/widgets/or_divider.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/core/utils/svg_images.dart';
import 'package:fresh_fruit/features/Auth/presintation/Widgets/custom_social_login_button.dart';

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
              height: context.screenHeight * 0.02,
            ),
            const CustomTextFormFeild(
              hintText: 'كلمة المرور',
              keyBoardType: TextInputType.visiblePassword,
              suffixIcon:
                  Icon(Icons.remove_red_eye, color: AppColors.kGrayColor),
            ),
            SizedBox(
              height: context.screenHeight * 0.015,
            ),
            GestureDetector(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ),
            ),
            SizedBox(
              height: context.screenHeight * 0.03,
            ),
            CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
            SizedBox(
              height: context.screenHeight * 0.03,
            ),
            const DontHaveAnAccount(),
            SizedBox(
              height: context.screenHeight * 0.03,
            ),
            const OrDivider(),
            SizedBox(
              height: context.screenHeight * 0.03,
            ),
            CustomSocialLoginButton(
              titel: 'تسجيل بواسطة جوجل',
              assetName: Assets.imagesGoogleIcon,
              onTap: () {},
            ),
            SizedBox(
              height: context.screenHeight * 0.02,
            ),
            CustomSocialLoginButton(
              titel: 'تسجيل بواسطة أبل',
              assetName: Assets.imagesAppleIcon,
              onTap: () {},
            ),
            SizedBox(
              height: context.screenHeight * 0.02,
            ),
            CustomSocialLoginButton(
              titel: 'تسجيل بواسطة فيسبوك',
              assetName: Assets.imagesFacebookIcon,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
