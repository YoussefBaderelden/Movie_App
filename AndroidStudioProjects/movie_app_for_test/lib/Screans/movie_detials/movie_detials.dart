import 'package:flutter/material.dart';


import '../../Widget/MovieSummarySection.dart';
import '../../Widget/cast_card.dart';
import '../../Widget/info_container.dart';
import '../../Widget/screenshot_widget.dart';
import '../../Widget/similar_movies_section.dart';
import '../../theme/appColor.dart';
import '../../theme/app_images.dart';

class MovieDetails extends StatelessWidget {
  final String imagePath;
  final String title;
  final String year;

  const MovieDetails({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.67,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.67,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColor.backgroundcolor,
                        // ignore: deprecated_member_use
                        AppColor.backgroundcolor.withOpacity(0.5),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      AppImage.returnArrow,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      AppImage.iconSave,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.33 - 40,
                  left: screenWidth / 2.2 - 24,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      AppImage.iconVideo,
                      width: 97,
                      height: 97,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: AppColor.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          year,
                          style: const TextStyle(
                            color: AppColor.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.red,
                            minimumSize: Size(screenWidth - 32, 58),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Watch',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoContainer(
                      image: AppImage.love,
                      value: '15',
                      color: AppColor.yallow),
                  InfoContainer(
                      image: AppImage.time,
                      value: '90',
                      color: AppColor.primary),
                  InfoContainer(
                      image: AppImage.star2,
                      value: '7.6',
                      color: AppColor.primary),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Screen Shots",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      ScreenshotWidget(imagePath: AppImage.screenshot1),
                      SizedBox(height: 16),
                      ScreenshotWidget(imagePath: AppImage.screenshot3),
                      SizedBox(height: 16),
                      ScreenshotWidget(imagePath: AppImage.screenshot2),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const SimilarMoviesSection(),
            const SizedBox(height: 24),
            const MovieSummarySection(
              summary:
                  "Following the events of Spider-Man No Way Home, Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it. Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.—Blazer346",
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cast",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  CastCard(
                    actorImage: AppImage.character1,
                    actorName: "Name : Hayley Atwell",
                    characterName: "Character : Captain Carter",
                  ),
                  SizedBox(height: 16),
                  CastCard(
                    actorImage: AppImage.character2,
                    actorName: "Name : Elizabeth Olsen",
                    characterName: " Character : Wanda Maximoff ",
                  ),
                  SizedBox(height: 16),
                  CastCard(
                    actorImage: AppImage.character3,
                    actorName: "Name : Rachel McAdams",
                    characterName: "Character : Dr. Christine Palmer",
                  ),
                  SizedBox(height: 16),
                  CastCard(
                    actorImage: AppImage.character4,
                    actorName: "Name : Charlize Theron",
                    characterName: "Character : Clea",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Genres",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InfoContainer(
                        image: '',
                        value: 'Action',
                        color: AppColor.yallow,
                        showImage: false,
                      ),
                      SizedBox(width: 16),
                      InfoContainer(
                        image: '',
                        value: 'Sci-Fi',
                        color: AppColor.yallow,
                        showImage: false,
                      ),
                      SizedBox(width: 16),
                      InfoContainer(
                        image: '',
                        value: 'Adventure',
                        color: AppColor.yallow,
                        showImage: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InfoContainer(
                        image: '',
                        value: 'Fantasy',
                        color: AppColor.yallow,
                        showImage: false,
                      ),
                      SizedBox(width: 16),
                      InfoContainer(
                        image: '',
                        value: 'Horror',
                        color: AppColor.yallow,
                        showImage: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
