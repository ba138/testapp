import 'package:firstapp/const/my_Text.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class FilterCard extends StatelessWidget {
  final String title;
  final String image;
  const FilterCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.subtitleTextColor,
            blurRadius: 0.1,
            spreadRadius: 0.8,
            offset: Offset(0.2, 0.2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 80, width: 80, fit: BoxFit.cover),
          MyText(
            text: title,
            color: AppColors.primaryColor,
            weight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
