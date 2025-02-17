import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_button.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/widgets/onboarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(); // Initialize the controller
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      }); //listenning to pageController && update the currentPage
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          position: currentPage,
          decorator: DotsDecorator(
            activeColor: AppColors.kprimaryColor,
            color: AppColors.kprimaryColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.03,
        ),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.05,
        ),
      ],
    );
  }
}
