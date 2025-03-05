import 'package:flutter/material.dart';


import '../../theme/app_images.dart';
import '../../utilites/app_colors.dart';

import 'onboarding_second_screan.dart';

class OnboardingFirstScrean extends StatelessWidget {
  const OnboardingFirstScrean({super.key});

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset(AppImage.onboarding1),
          Padding(
            padding: const EdgeInsets.only(bottom: 33, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Find Your Next\nFavorite Movie Here',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Get access to a huge library of movies\nto suit all tastes. You will surely like it.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whitewithOpacity,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: AppColors.yallow),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnboardingSecondScrean(),
                              ));
                        },
                        child: Text(
                          'Explore Now',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
