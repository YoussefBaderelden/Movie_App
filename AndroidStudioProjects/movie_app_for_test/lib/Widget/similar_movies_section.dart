import 'package:flutter/material.dart';

import '../theme/app_images.dart';
import 'movie_card.dart';


class SimilarMoviesSection extends StatelessWidget {
  const SimilarMoviesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Similar Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MovieCard(
                    imagePath: AppImage.movies2,
                    rating: "8.5",
                    title: "Movie A",
                    year: "2022",
                    cardWidth: 189,
                    cardHeight: 279,
                  ),
                  MovieCard(
                    imagePath: AppImage.movies7,
                    rating: "7.9",
                    title: "Movie B",
                    year: "2021",
                    cardWidth: 189,
                    cardHeight: 279,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MovieCard(
                    imagePath: AppImage.movies8,
                    rating: "8.2",
                    title: "Movie C",
                    year: "2020",
                    cardWidth: 189,
                    cardHeight: 279,
                  ),
                  MovieCard(
                    imagePath: AppImage.movies9,
                    rating: "7.5",
                    title: "Movie D",
                    year: "2019",
                    cardWidth: 189,
                    cardHeight: 279,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
