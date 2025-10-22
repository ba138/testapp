import 'package:firstapp/views/login_screen.dart';
import 'package:flutter/material.dart';

class SplashController {
  String name = "Ali";
  String email;
  String password;
  SplashController({required this.email, required this.password});
  void navigationToLoginScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (c) => LoginScreen()),
        (Route) => false,
      );
    });
  }

  _priviteFunction(String email, String password) {
    debugPrint("this user is avaliable");
  }

  void loginUser(String eamil, String password) {
    _priviteFunction(eamil, password);
  }
}
