import 'package:flutter/material.dart';
import 'package:fresh_fruit/features/splash/presintation/views/splash_view.dart';

void main() {
  runApp(const FreshFruit());
}
class FreshFruit extends StatelessWidget {
  const FreshFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}