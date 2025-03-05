import 'package:flutter/material.dart';

import '../../theme/appColor.dart';
import '../../theme/app_images.dart';
import '../../utilites/app_colors.dart';


class Search extends StatelessWidget {
  const Search({super.key});

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
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const TextField(
              cursorColor: AppColors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.white, width: 1)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.white, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(color: AppColors.white, width: 1)),
                prefixIcon: ImageIcon(
                  AssetImage(AppImage.iconSearchNotSelcted),
                  color: AppColors.white,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: AppColors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 25 / 930,
            ),
            Expanded(
              child: GridView.builder(
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
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
            ),
          ],
        ),
      ),
    );
  }
}
