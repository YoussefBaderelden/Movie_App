import 'package:flutter/material.dart';


import '../../utilites/app_colors.dart';
import '../../utilites/app_image.dart';
import '../loginAndRegister/login.dart';

class OnboardingSixScrean extends StatelessWidget {
  const OnboardingSixScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.white,
                  AppColors.gradintbuttom,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Image.asset(AppImage.onboarding6)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.24,
                decoration: const BoxDecoration(
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
                      const Text(
                        'Start Watching Now',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: AppColors.yallow),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              backgroundColor: AppColors.yallow),
                          onPressed: () {
                            Navigator.pushNamed(context, Login.routeName);
                          },
                          child: const Text(
                            'Finish',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: AppColors.yallow),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              backgroundColor: AppColors.black),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.yallow,
                            ),
                          ),
                        ),
                      ),
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
