import 'package:flutter/material.dart';

import '../theme/appColor.dart';


class MovieSummarySection extends StatelessWidget {
  final String summary;

  const MovieSummarySection({Key? key, required this.summary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Summary",
            style: TextStyle(
              color: AppColor.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            summary,
            style: const TextStyle(
                color: AppColor.white,
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
