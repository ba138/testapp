import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/views/bottom_nav_bar/nav_bar.dart';
import 'package:firstapp/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onInit() {
    manageUserSection();
    super.onInit();
  }

  void manageUserSection() async {
    try {
      // if ( auth.currentUser?.uid.isEmpty == false) {
      //   Future.delayed(Duration(seconds: 3), () {
      //     Get.offAll(() => LoginScreen());
      //   });
      // } else {
      //   Future.delayed(Duration(seconds: 3), () {
      //     Get.offAll(() => NavBar());
      //   });
      // }
      Future.delayed(Duration(seconds: 3), () {
        if (auth.currentUser == null) {
          Get.offAll(() => LoginScreen());
        } else {
          Get.offAll(() => NavBar());
        }
      });
    } catch (e) {
      debugPrint("this is the error:$e");
    }
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
