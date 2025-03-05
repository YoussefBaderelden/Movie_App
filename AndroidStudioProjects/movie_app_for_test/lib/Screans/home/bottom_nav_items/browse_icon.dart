import 'package:flutter/material.dart';


import '../../../theme/appColor.dart';
import '../../../theme/app_images.dart';

class BrowseIcon extends StatelessWidget {
  final bool isSelected;

  const BrowseIcon({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImage.iconBrowseNotSelcted,
      width: 24,
      height: 24,
      color: isSelected ? AppColor.primary : AppColor.white,
    );
  }
}
