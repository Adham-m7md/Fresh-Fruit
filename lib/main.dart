import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fresh_fruit/core/helper/on_generate_route.dart';
import 'package:fresh_fruit/features/splash/presintation/views/splash_view.dart';
import 'package:fresh_fruit/generated/l10n.dart';

void main() {
  runApp(const FreshFruit());
}

class FreshFruit extends StatelessWidget {
  const FreshFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.id,
    );
  }
}
