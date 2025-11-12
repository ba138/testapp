import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/Models/user_model.dart';
import 'package:firstapp/const/loading_dialog.dart';
import 'package:firstapp/views/bottom_nav_bar/nav_bar.dart';
import 'package:firstapp/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var name = "ali".obs;
  var ishow = false.obs;
  List myList = [].obs;
  Map myMap = {}.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
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
        Get.snackbar("Error", "Email or password cannot be empty");
        throw Exception("Email or password cannot be empty");
      } else {
        Get.dialog(LoadingDialog(), barrierDismissible: true);
        auth.signInWithEmailAndPassword(email: email, password: pawword);

        if (auth.currentUser != null && auth.currentUser!.emailVerified) {
          Get.snackbar("Success", "User logged in successfully");
          debugPrint("User logged in successfully");
          Get.offAll(() => NavBar());
        }
      }
      Get.back();
    } catch (e) {
      Get.back();
      debugPrint("this is the error:$e");
    }
  }

  void visible() {
    ishow.value = !ishow.value;
    debugPrint("this is the value:${ishow.value}");
  }

  Future<void> registerUser(String email, String password) async {
    try {
      if (email.isEmpty || password.isEmpty) {
        Get.snackbar("Error", "Email or password cannot be empty");
      } else {
        Get.dialog(LoadingDialog(), barrierDismissible: true);
        await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (auth.currentUser!.uid.isNotEmpty) {
          UserModel userData = UserModel(
            uid: auth.currentUser!.uid,
            email: email,
            name: "jhon doe",
          );
          await firestore
              .collection("users")
              .doc(auth.currentUser!.uid)
              .set(userData.toJson());
          auth.currentUser!.sendEmailVerification();
          Get.snackbar("Success", "User registered successfully");
          debugPrint("User registered successfully");
          Get.offAll(() => LoginScreen());
        }
      }
    } catch (e) {
      Get.back();
      debugPrint("this is the error:$e");
    }
  }

  void logoutUser() async {
    try {
      Get.dialog(LoadingDialog(), barrierDismissible: true);
      await auth.signOut();
      Get.offAll(() => LoginScreen());
      Get.snackbar("Success", "User logged out successfully");
    } catch (e) {
      Get.back();
      debugPrint("this is the error:$e");
    }
  }

  void resetPassword(String email) async {
    try {
      if (email.isEmpty) {
        Get.snackbar("Error", "Email cannot be empty");
        return;
      }
      Get.dialog(LoadingDialog(), barrierDismissible: true);
      await auth.sendPasswordResetEmail(email: email);
      Get.to(() => LoginScreen());
      Get.snackbar("Success", "Password reset email sent successfully");
    } catch (e) {
      Get.back();
      debugPrint("this is the error:$e");
    }
  }
}
