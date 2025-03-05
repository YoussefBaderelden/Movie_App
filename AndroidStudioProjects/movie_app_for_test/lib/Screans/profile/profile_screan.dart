import 'package:flutter/material.dart';

import '../../theme/appColor.dart';
import '../../theme/app_images.dart';
import '../../utilites/app_colors.dart';


class ProfileScrean extends StatelessWidget {
  const ProfileScrean({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Movies = [
      AppImage.movies1,
      AppImage.movies2,
      AppImage.movies3,
      AppImage.movies4,
      AppImage.movies5,
      AppImage.movies1,
      AppImage.movies2,
      AppImage.movies3,
      AppImage.movies4,
      AppImage.movies5,
      AppImage.movies1,
      AppImage.movies2,
      AppImage.movies3,
      AppImage.movies4,
      AppImage.movies5,
      AppImage.movies1,
      AppImage.movies2,
      AppImage.movies3,
      AppImage.movies4,
      AppImage.movies5,
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.brown,
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 52),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        AppImage.profile,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 15 / 930,
                      ),
                      const Text(
                        "user name",
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 55 / 480,
                  ),
                  const Column(
                    children: [
                      Text('12',
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Wish List',
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 65 / 480,
                  ),
                  const Column(
                    children: [
                      Text('10',
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 15,
                      ),
                      Text('History',
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 15 / 930,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 60,
                    child: SizedBox(
                      height: 56 / 930 * MediaQuery.of(context).size.height,
                      child: FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: AppColor.primary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {},
                          child: const Text('Edit Profile',
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 10 / 480,
                  ),
                  Expanded(
                    flex: 30,
                    child: SizedBox(
                      height: 56 / 930 * MediaQuery.of(context).size.height,
                      child: FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: AppColor.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Exit'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.exit_to_app,
                                color: AppColor.white,
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              const TabBar(
                  indicatorColor: AppColor.primary,
                  dividerColor: Colors.transparent,
                  labelColor: AppColor.white,
                  unselectedLabelColor: AppColor.white,
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.list,
                        color: AppColor.primary,
                      ),
                      text: 'Watch List ',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.folder,
                        color: AppColor.primary,
                      ),
                      text: 'History',
                    )
                  ]),
              Expanded(
                  child: TabBarView(children: [
                const Center(
                  child: Image(image: AssetImage(AppImage.empty)),
                ),
                GridView.builder(
                  itemCount: Movies.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 1 / 1.5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(Movies[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width * 58 / 430,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            '7.7',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                          ),
                          Image.asset(AppImage.star),
                        ],
                      ),
                    ),
                  ),
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
