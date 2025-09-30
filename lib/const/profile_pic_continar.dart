import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class ProfilePicContinar extends StatelessWidget {
  final double height;
  final double width;
  final double size;
  const ProfilePicContinar({
    super.key,
    required this.height,
    required this.width,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.subtitleTextColor,
      ),
      child: Center(
        child: Icon(
          Icons.person_2_outlined,
          color: AppColors.secondaryColor,
          size: size,
        ),
      ),
    );
  }
}
