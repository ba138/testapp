import 'package:firstapp/views/bottom_nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var name = "ali".obs;
  var ishow = false.obs;
  List myList = [].obs;
  Map myMap = {}.obs;
  Future<void> fetchData() async {
    try {
      debugPrint("fetching data...");
      await Future.delayed(Duration(seconds: 2));
      debugPrint("data fetched successfully");
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }

  void loginUser(String email, String pawword) {
    try {
      if (email.isEmpty || pawword.isEmpty) {
        throw Exception("Email or password cannot be empty");
      } else {
        debugPrint("User logged in successfully");
        Get.offAll(() => NavBar());
      }
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }

  void visible() {
    ishow.value = !ishow.value;
    debugPrint("this is the value:${ishow.value}");
  }
}
