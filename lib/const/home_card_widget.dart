import 'package:firstapp/const/my_Text.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final double averageRating;
  final String totalRating;
  final VoidCallback ontap;
  const HomeCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.averageRating,
    required this.totalRating,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.secondaryColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: ontap,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: AppColors.subtitleTextColor.withValues(
                              alpha: 0.2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: MyText(
                              text: "Most Recommended",
                              color: AppColors.subtitleTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  MyText(
                    text: title,
                    color: AppColors.toldTextColor,
                    weight: FontWeight.bold,
                  ),
                  RatingBar.builder(
                    initialRating: averageRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    tapOnlyMode: true,
                    updateOnDrag: false,
                    ignoreGestures: true,
                    itemCount: 5,
                    itemSize: 24,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: AppColors.primaryColor),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  MyText(text: totalRating, color: AppColors.subtitleTextColor),
                ],
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  text: "10 km away from your location",
                  color: AppColors.subtitleTextColor,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: MyText(
                        text: "\$10 a night",
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.subtitleTextColor.withValues(alpha: 0.2),
                    ),
                    child: Center(child: Icon(Icons.favorite_border)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
