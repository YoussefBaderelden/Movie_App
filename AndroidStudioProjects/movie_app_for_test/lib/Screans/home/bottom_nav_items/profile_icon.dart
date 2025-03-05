import 'package:flutter/material.dart';

import '../../../theme/appColor.dart';
import '../../../theme/app_images.dart';

class ProfileIcon extends StatelessWidget {
  final bool isSelected;

  const ProfileIcon({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImage.iconProfileNotSelcted,
      width: 24,
      height: 24,
      color: isSelected ? AppColor.primary : AppColor.white,
    );
  }
}
