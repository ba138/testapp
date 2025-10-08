import 'package:firstapp/const/home_card_widget.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> myList = [
    "assets/apartments.png",
    "assets/homes.png",
    "assets/villas.png",
    'assets/bungalows.png',
  ];
  List cardData = [
    {
      'title': "ali",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 4.5,
      'totalRating': "13",
    },
    {
      'title': "ali",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 5,
      'totalRating': "24",
    },
    {
      'title': "ali",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 3.8,
      'totalRating': "10",
    },
    {
      'title': "ali",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 4,
      'totalRating': "18",
    },
    {
      'title': "ali",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 4,
      'totalRating': "18",
    },
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
                      Container(
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
                        child: Container(
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
                  child: ListView.builder(
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      var data = cardData[index];
                      return HomeCardWidget(
                        image: data['image'],
                        title: data['title'],
                        averageRating: data['averageRating'],
                        totalRating: data['totalRating'],
                      );
                    },
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
