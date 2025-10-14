import 'package:firstapp/const/my_Text.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback ontap;
  final String title;
  const CustomAppBar({super.key, required this.ontap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            height: 35,
            width: 35,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.subtitleTextColor.withValues(alpha: 0.2),
            ),
            child: Center(child: Icon(Icons.arrow_back_ios_new_sharp)),
          ),
        ),
        const SizedBox(width: 16),
        MyText(
          text: title,
          size: 16,
          weight: FontWeight.bold,
          color: AppColors.toldTextColor,
        ),
      ],
    );
  }
}
