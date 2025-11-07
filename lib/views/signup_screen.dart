import 'package:firstapp/Controllers/login_controller.dart';
import 'package:firstapp/const/primary_button.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var confirmpasswordcontroller = TextEditingController();
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8.0, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8.0, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "password",
                    style: TextStyle(
                      color: AppColors.toldTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: AppColors.subtitleTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8.0, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      color: AppColors.toldTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextField(
                    controller: confirmpasswordcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your confirm password",
                      hintStyle: TextStyle(
                        color: AppColors.subtitleTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                    ),
                  ),
                ],
              ),
            ),
            PrimaryButton(
              buttontext: "Register",
              onTap: () {
                if (passwordcontroller.text != confirmpasswordcontroller.text) {
                  Get.snackbar(
                    "Error",
                    "Password and Confirm Password do not match",
                  );
                  return;
                }
                loginController.registerUser(
                  emailcontroller.text,
                  passwordcontroller.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
