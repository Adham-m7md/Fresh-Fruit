import 'package:flutter/material.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/widgets/onboarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Expanded(child: OnboardingPageView())],
    );
  }
}
