import 'package:firstapp/Controllers/splash_controller.dart';
import 'package:firstapp/utills/colors.dart';
import 'package:firstapp/views/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController splashController = SplashController(
    email: "email",
    password: "password",
  );
  @override
  void initState() {
    splashController.navigationToLoginScreen(context);
    splashController.loginUser("eamil", "password");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("this is user:${splashController.name}");
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset("assets/Logo.png", height: 100, width: 300),
      ),
    );
  }
}
