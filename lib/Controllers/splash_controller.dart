import 'package:firstapp/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigationToLoginScreen();
    super.onInit();
  }

  void navigationToLoginScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => LoginScreen());
    });
  }

  _priviteFunction(String email, String password) {
    debugPrint("this user is avaliable");
  }

  void loginUser(String eamil, String password) {
    _priviteFunction(eamil, password);
  }
}
