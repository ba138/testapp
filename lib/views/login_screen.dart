import 'package:firstapp/const/auth_button.dart';
import 'package:firstapp/const/primary_button.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:firstapp/views/add_pofile_screen.dart';
import 'package:firstapp/views/bottom_nav_bar/nav_bar.dart';
import 'package:firstapp/views/home_screen.dart';
import 'package:firstapp/views/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: AppColors.primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset("assets/Logo.png", height: 50, width: 200),
              const SizedBox(height: 150),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: 4,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.strokeColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),
                          Text(
                            "Login",
                            style: TextStyle(
                              color: AppColors.toldTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Enter your credentials to login to your account",
                            style: TextStyle(
                              color: AppColors.subtitleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.textFieldFillColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.strokeColor),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8.0,
                                    top: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                          color: AppColors.toldTextColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextField(
                                        controller: emailcontroller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Enter your email",
                                          hintStyle: TextStyle(
                                            color: AppColors.subtitleTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          contentPadding: EdgeInsets.only(
                                            top: 12,
                                            bottom: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(color: AppColors.strokeColor),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8.0,
                                    top: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                          color: AppColors.toldTextColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextField(
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.visibility,
                                            color: AppColors.strokeColor,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "******",
                                          hintStyle: TextStyle(
                                            color: AppColors.subtitleTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          contentPadding: EdgeInsets.only(
                                            top: 12,
                                            bottom: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor.withValues(
                                    alpha: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "I agree with the",
                                style: TextStyle(
                                  color: AppColors.subtitleTextColor,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "terms & policies",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          PrimaryButton(
                            buttontext: "Login",
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavBar(),
                                ),
                                (route) => false,
                              );
                              debugPrint("Login tapped");
                            },
                          ),

                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: AppColors.subtitleTextColor,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "Or login with",
                                style: TextStyle(
                                  color: AppColors.subtitleTextColor,
                                ),
                              ),
                              const SizedBox(width: 4),

                              Expanded(
                                child: Divider(
                                  color: AppColors.subtitleTextColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AuthButton(
                                imagePath: "assets/google.png",
                                ontap: () {
                                  debugPrint("Google button tapped");
                                },
                              ),
                              AuthButton(
                                imagePath: "assets/fb.png",
                                ontap: () {
                                  debugPrint("Facebook button tapped");
                                },
                              ),
                              AuthButton(
                                imagePath: "assets/apple.png",
                                ontap: () {
                                  debugPrint("Apple button tapped");
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: AppColors.subtitleTextColor,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 4),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (c) => SignupScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
