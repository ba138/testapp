import 'package:firstapp/const/filter_card.dart';
import 'package:firstapp/const/my_Text.dart';
import 'package:firstapp/const/primary_button.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List filterData = [
    {"title": "Apartments", 'image': 'assets/apartments.png'},
    {"title": "Homes", 'image': 'assets/homes.png'},
    {"title": "Villas", 'image': 'assets/villas.png'},
    {"title": "Bungalows", 'image': 'assets/bungalows.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Logo.png", height: 30),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.subtitleTextColor.withValues(
                          alpha: 0.2,
                        ),
                      ),
                      child: Center(child: Icon(Icons.notifications_outlined)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyText(
                text: "Looking For?",
                color: AppColors.toldTextColor,
                size: 24,
                weight: FontWeight.bold,
              ),
              const SizedBox(height: 8),

              MyText(
                text: "Which of this suits you for this stay",
                color: AppColors.subtitleTextColor,
                size: 14,
              ),
              // FilterCard(title: 'Apartment', image: 'assets/apartments.png'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: GridView.builder(
                  itemCount: filterData.length,
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    var data = filterData[index];
                    return FilterCard(
                      title: data['title'],
                      image: data['image'],
                    );
                  },
                ),
              ),
              PrimaryButton(buttontext: "Next", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
