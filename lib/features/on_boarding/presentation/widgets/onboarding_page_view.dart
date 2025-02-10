import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruit/core/utils/svg_images.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        SvgPicture.asset(Assets.imagesBackgroundOnboarding1),
      ],
    );
  }
}
