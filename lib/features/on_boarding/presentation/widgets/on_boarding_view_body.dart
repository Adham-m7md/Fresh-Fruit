import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_button.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/widgets/onboarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: OnboardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.kprimaryColor,
            color: AppColors.kprimaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        SizedBox(
          height: context.screenHeight * 0.05,
        ),
      ],
    );
  }
}
