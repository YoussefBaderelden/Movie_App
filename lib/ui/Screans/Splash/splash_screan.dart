import 'dart:async';

import 'package:flutter/material.dart';


import '../../utilites/app_colors.dart';
import '../../utilites/app_image.dart';
import '../onboardin/onboarding_first_screan.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  static const routeName = '/SplashScrean';

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, OnboardingFirstScrean.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
          child: Image.asset(
        AppImage.logo,
        width: MediaQuery.of(context).size.width * 0.3,
      )),
    );
  }
}
