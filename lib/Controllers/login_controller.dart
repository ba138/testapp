import 'package:firstapp/views/bottom_nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';

class LoginController {
  void divide(int a, int b) {
    try {
      int result = a ~/ b;
      debugPrint("the result is:$result");
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }

  Future<void> fetchData() async {
    try {
      debugPrint("fetching data...");
      await Future.delayed(Duration(seconds: 2));
      debugPrint("data fetched successfully");
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }

  void loginUser(String email, String pawword, BuildContext context) {
    try {
      if (email.isEmpty || pawword.isEmpty) {
        throw Exception("Email or password cannot be empty");
      } else {
        debugPrint("User logged in successfully");
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => NavBar()),
          (route) => false,
        );
      }
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }
}
