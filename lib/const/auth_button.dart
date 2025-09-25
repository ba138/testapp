import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback ontap;
  const AuthButton({super.key, required this.imagePath, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.subtitleTextColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
