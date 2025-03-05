import 'package:flutter/material.dart';

import '../../theme/app_images.dart';
import 'common/common_on_boarding.dart';
import 'onboarding_fifth_screan.dart';

class OnboardingFouthScrean extends StatelessWidget {
  const OnboardingFouthScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonOnBoarding(
          toNavigate: OnboardingFifthScrean(),
          title: 'Create Watchlists',
          subtitle:
              'Save movies to your watchlist to keep\ntrack of what you want to watch next.\nEnjoy films in various qualities and\ngenres.',
          image: AppImage.onboarding4),
    );
  }
}
