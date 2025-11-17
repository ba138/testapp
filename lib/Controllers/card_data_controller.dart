import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CardDataController extends GetxController {
  var selectedImage = Rxn<File>();
  var _imagePicker = ImagePicker();
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
}
