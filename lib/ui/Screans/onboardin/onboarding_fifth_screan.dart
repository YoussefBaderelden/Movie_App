import 'package:flutter/material.dart';


import '../../utilites/app_image.dart';
import 'common/common_on_boarding.dart';
import 'onboarding_six_screan.dart';

class OnboardingFifthScrean extends StatelessWidget {
  const OnboardingFifthScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonOnBoarding(
        toNavigate: const OnboardingSixScrean(),
        title: 'Rate, Review, and Learn',
        subtitle:
            "Share your thoughts on the movies\nyou've watched. Dive deep into film\ndetails and help others discover great\nmovies with your reviews.",
        image: AppImage.onboarding5);
  }
}
