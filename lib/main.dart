import 'package:flutter/material.dart';
import 'package:flutter_statfull/ui/Screans/Splash/splash_screan.dart';
import 'package:flutter_statfull/ui/Screans/loginAndRegister/login.dart';
import 'package:flutter_statfull/ui/Screans/onboardin/onboarding_first_screan.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScrean.routeName: (context) => const SplashScrean(),
        OnboardingFirstScrean.routeName: (context) => const OnboardingFirstScrean(),
        Login.routeName: (context) => const Login(),
      },
      initialRoute: SplashScrean.routeName,
    );
  }
}
