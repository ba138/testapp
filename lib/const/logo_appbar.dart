import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class LogoAppbar extends StatelessWidget {
  const LogoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/Logo.png', height: 30),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.subtitleTextColor.withValues(alpha: 0.1),
            ),
            child: Center(child: Icon(Icons.notification_important_outlined)),
          ),
        ],
      ),
    );
  }
}
