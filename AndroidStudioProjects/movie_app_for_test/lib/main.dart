import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Screans/Splash/splash_screan.dart';
import 'Screans/home/home_screen.dart';
import 'Screans/loginAndRegister/forgetPassword.dart';
import 'Screans/loginAndRegister/login.dart';
import 'Screans/loginAndRegister/register.dart';
import 'Screans/onboardin/onboarding_first_screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  const MyApp({super.key});

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          _locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: _locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomeScreen(),
        routes: {
          '/SplashScrean': (context) => const SplashScrean(),
          '/onboarding': (context) => const OnboardingFirstScrean(),
          '/logIn': (context) => const Login(),
          '/register': (context) => const Register(),
          '/forgetPassword': (context) => ForgetPassword(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
