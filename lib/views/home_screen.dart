import 'package:firstapp/Controllers/home_controller.dart';
import 'package:firstapp/const/home_card_widget.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:firstapp/views/booking_detail_screen.dart';
import 'package:firstapp/views/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());
  List<String> myList = [
    "assets/apartments.png",
    "assets/homes.png",
    "assets/villas.png",
    'assets/bungalows.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
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
                          color: AppColors.subtitleTextColor.withValues(
                            alpha: 0.1,
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.notification_important_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.strokeColor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            homeController.search(value);
                          },
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(color: AppColors.strokeColor),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: AppColors.strokeColor,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => FilterScreen()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.filter_alt,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(myList[index]),
                        ),
                      );
                    },
                  ),
                ),
                // HomeCardWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Obx(
                    () => ListView.builder(
                      itemCount: homeController.cardData.length,
                      itemBuilder: (context, index) {
                        var data = homeController.cardData[index];
                        return HomeCardWidget(
                          image: data.image,
                          title: data.title,
                          averageRating: data.averageRating,
                          totalRating: data.totalRating,
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) =>
                                    BookingDetailScreen(data: data.fromJson()),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
