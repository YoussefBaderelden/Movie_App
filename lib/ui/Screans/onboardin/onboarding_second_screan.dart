import 'package:flutter/material.dart';


import '../../utilites/app_colors.dart';
import '../../utilites/app_image.dart';
import 'onboarding_third_screan.dart';

class OnboardingSecondScrean extends StatelessWidget {
  const OnboardingSecondScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.white,
                  AppColors.gradintbuttom,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Image.asset(AppImage.onboarding2)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: AppColors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 34, bottom: 20, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Discover Movies',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Explore a vast collection of movies in all\nqualities and genres. Find your next\nfavorite film with ease.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
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
                                      builder: (context) =>
                                          OnboardingThirdScrean(),
                                    ));
                              },
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ))),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
