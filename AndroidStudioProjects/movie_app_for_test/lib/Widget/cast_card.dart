import 'package:flutter/material.dart';

import '../theme/appColor.dart';


class CastCard extends StatelessWidget {
  final String actorImage;
  final String actorName;
  final String characterName;

  const CastCard({
    Key? key,
    required this.actorImage,
    required this.actorName,
    required this.characterName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 92,
      decoration: BoxDecoration(
        color: AppColor.brown,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(
            actorImage,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                actorName,
                style: const TextStyle(
                  color: AppColor.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                characterName,
                style: const TextStyle(
                  color: AppColor.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
