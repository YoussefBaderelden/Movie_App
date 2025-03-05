import 'package:flutter/material.dart';

import '../theme/appColor.dart';


class InfoContainer extends StatelessWidget {
  final String image;
  final String value;
  final Color color;
  final bool showImage;

  const InfoContainer({
    Key? key,
    required this.image,
    required this.value,
    required this.color,
    this.showImage = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 140,
      decoration: BoxDecoration(
        color: AppColor.brown,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showImage)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                width: 27,
                height: 27,
                color: color,
              ),
            ),
          if (showImage) const SizedBox(width: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
