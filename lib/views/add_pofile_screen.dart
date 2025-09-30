import 'package:firstapp/const/my_Text.dart';
import 'package:firstapp/const/primary_button.dart';
import 'package:firstapp/const/profile_pic_continar.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';

class AddPofileScreen extends StatelessWidget {
  const AddPofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Logo.png", height: 30, width: 80),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'Profile Setup',
                color: AppColors.toldTextColor,
                size: 20,
                weight: FontWeight.bold,
              ),
              MyText(text: "Lets setup your profile first to know you better"),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: MyText(text: "1", color: AppColors.secondaryColor),
                    ),
                  ),
                  Expanded(child: Divider(color: AppColors.primaryColor)),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.strokeColor,
                    ),
                    child: Center(
                      child: MyText(
                        text: "2",
                        color: AppColors.subtitleTextColor,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: AppColors.primaryColor)),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.strokeColor,
                    ),
                    child: Center(
                      child: MyText(
                        text: "3",
                        color: AppColors.subtitleTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.strokeColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: AppColors.subtitleTextColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: MyText(
                  text: "Upload Profile",
                  size: 18,
                  color: AppColors.toldTextColor,
                  weight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.strokeColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Preview",
                        weight: FontWeight.bold,
                        color: AppColors.toldTextColor,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfilePicContinar(height: 80, width: 80, size: 40),
                          ProfilePicContinar(height: 60, width: 60, size: 30),
                          ProfilePicContinar(height: 45, width: 45, size: 25),
                          ProfilePicContinar(height: 35, width: 35, size: 20),
                          ProfilePicContinar(height: 25, width: 25, size: 18),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              PrimaryButton(buttontext: "Next", onTap: () {}),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: MyText(text: "Back", color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
