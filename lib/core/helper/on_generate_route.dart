import 'package:flutter/material.dart';

import 'package:fresh_fruit/features/Auth/presintation/view/login/view/login_view.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fresh_fruit/features/splash/presintation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.id:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    case LogInView.id:
      return MaterialPageRoute(builder: (_) => const LogInView());

    case SplashView.id:
      return MaterialPageRoute(builder: (_) => const SplashView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
