import 'package:flutter/material.dart';
import 'package:fresh_fruit/features/splash/presintation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String id = 'SplashView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
