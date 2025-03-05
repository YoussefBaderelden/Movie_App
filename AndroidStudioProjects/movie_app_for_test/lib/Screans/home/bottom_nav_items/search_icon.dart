import 'package:flutter/material.dart';


import '../../../theme/appColor.dart';
import '../../../theme/app_images.dart';

class SearchIcon extends StatelessWidget {
  final bool isSelected;

  const SearchIcon({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImage.iconSearchNotSelcted,
      width: 24,
      height: 24,
      color: isSelected ? AppColor.primary : AppColor.white,
    );
  }
}
