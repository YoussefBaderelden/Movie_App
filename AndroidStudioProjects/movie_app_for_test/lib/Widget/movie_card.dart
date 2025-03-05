import 'package:flutter/material.dart';

import '../Screans/movie_detials/movie_detials.dart';
import '../theme/app_images.dart';


class MovieCard extends StatelessWidget {
  final String imagePath;
  final String rating;
  final String title;
  final String year;
  final double cardWidth;
  final double cardHeight;

  MovieCard({
    required this.imagePath,
    required this.rating,
    required this.title,
    required this.year,
    required this.cardWidth,
    required this.cardHeight,
  });

  @override
  Widget build(BuildContext context) {
    print("Loading Image: $imagePath");

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetails(
              imagePath: imagePath,
              title: title,
              year: year,
            ),
          ),
        );
      },
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.network(
                  imagePath.isNotEmpty
                      ? imagePath
                      : 'https://yts.mx/assets/images/movies/the_holiday_list_2024/medium-cover.jpg',
                  width: cardWidth,
                  height: cardHeight,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      AppImage.movies4,
                      width: cardWidth,
                      height: cardHeight,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text(
                          rating,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          AppImage.star,
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
