import 'package:firstapp/utills/colors.dart';
import 'package:firstapp/views/bottom_nav_bar/cart_screen.dart';
import 'package:firstapp/views/bottom_nav_bar/inbox_screen.dart';
import 'package:firstapp/views/bottom_nav_bar/profile_screen.dart';
import 'package:firstapp/views/home_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final List<Widget> screensList = [
    HomeScreen(),
    CartScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.toldTextColor,
        iconSize: 24,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart'),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_sharp),
            label: "Inbox",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: screensList[selectedIndex],
    );
  }
}
