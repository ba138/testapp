import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  double? size = 14;
  FontWeight? weight = FontWeight.w400;
  Color? color = AppColors.subtitleTextColor;

  MyText({super.key, required this.text, this.size, this.weight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: weight, color: color),
    );
  }
}
