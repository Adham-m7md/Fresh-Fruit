import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruit/core/utils/app_svg_images.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/view/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    excuteNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(Assets.imagesSplash1),
        ),
        Image.asset('assets/images/app_icon.png'),
        SvgPicture.asset(
          Assets.imagesSplash2,
          fit: BoxFit.fill,
        )
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, OnBoardingView.id),
    );
  }
}
