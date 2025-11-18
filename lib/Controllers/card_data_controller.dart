import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firstapp/Models/card_data_model.dart';
import 'package:firstapp/const/loading_dialog.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class CardDataController extends GetxController {
  var firestore = FirebaseFirestore.instance;
  var storage = FirebaseStorage.instance.ref();
  var selectedImage = Rxn<File>();
  final _imagePicker = ImagePicker();
  var uuid = Uuid().v1();
  Future<void> pickImage() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedImage != null) {
        selectedImage.value = File(pickedImage.path);
      }
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }

  Future<String?> uploadImage() async {
    try {
      final fileName = DateTime.now().microsecondsSinceEpoch.toString();
      final storageRef = storage.child('cardImages/$fileName');
      final uploadTask = storageRef.putFile(selectedImage.value!);
      final snapShot = await uploadTask;
      final downLoadUrl = await snapShot.ref.getDownloadURL();
      return downLoadUrl;
    } catch (e) {
      debugPrint("Error uploading image: $e");
      return null;
    }
  }

  void uploadToFirestore() async {
    try {
      Get.dialog(LoadingDialog(), barrierDismissible: false);
      final imageUrl = await uploadImage();

      if (imageUrl != null) {
        var cardModel = CardDataModel(
          title: "TestTitle",
          image: imageUrl,
          averageRating: 3.4,
          totalRating: "5",
        );

        await firestore
            .collection("carData")
            .doc(uuid)
            .set(cardModel.toJason());
        Get.back(); // Close the loading dialog
        Get.snackbar("Success", "Card data uploaded successfully");
      }
      Get.back();
      Get.snackbar(
        "Error",
        "Failed to upload image",
      ); // Close the loading dialog
    } catch (e) {
      Get.back();
      debugPrint("Error uploading to Firestore: $e");
    }
  }
}
