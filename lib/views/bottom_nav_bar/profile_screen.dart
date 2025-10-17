import 'package:firstapp/const/logo_appbar.dart';
import 'package:firstapp/const/my_Text.dart';
import 'package:firstapp/const/profile_tile.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoAppbar(),
              MyText(
                text: "Account",
                size: 20,
                weight: FontWeight.bold,
                color: AppColors.toldTextColor,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.secondaryColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.1,
                      spreadRadius: 0.2,
                      color: AppColors.subtitleTextColor.withValues(alpha: 0.4),
                      offset: Offset(0.2, 0.2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ProfileTile(
                      iconData: Icons.person_4_outlined,
                      title: "Profile Settings",
                      ontap: () {},
                    ),
                    ProfileTile(
                      iconData: Icons.link_outlined,
                      title: "Linked Account",
                      ontap: () {},
                    ),
                    ProfileTile(
                      iconData: Icons.wallet,
                      title: "Payment Methods",
                      ontap: () {},
                    ),
                    ProfileTile(
                      iconData: Icons.favorite,
                      title: "Favorite",
                      ontap: () {},
                    ),
                    ProfileTile(
                      iconData: Icons.location_on,
                      title: "Trips",
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
