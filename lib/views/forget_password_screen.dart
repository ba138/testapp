import 'package:firstapp/Controllers/login_controller.dart';
import 'package:firstapp/const/primary_button.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  var emailcontroller = TextEditingController();
  var loginController = Get.put(LoginController());
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
            SizedBox(height: 20),
            PrimaryButton(
              buttontext: ('Reset Password'),
              onTap: () {
                loginController.resetPassword(emailcontroller.text.trim());
              },
            ),
          ],
        ),
      ),
    );
  }
}
