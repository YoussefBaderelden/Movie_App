import 'package:flutter/material.dart';


import '../../theme/app_images.dart';
import 'common/common_on_boarding.dart';
import 'onboarding_fouth_screan.dart';

class OnboardingThirdScrean extends StatelessWidget {
  const OnboardingThirdScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonOnBoarding(
          toNavigate: OnboardingFouthScrean(),
          title: 'Explore All Genres',
          subtitle:
              'Discover movies from every genre, in all\navailable qualities. Find something new\nand exciting to watch every day.',
          image: AppImage.onboarding3),
    );
  }
}
