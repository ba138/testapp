import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp/Models/card_data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var firestore = FirebaseFirestore.instance;
  var isLoading = false.obs;
  @override
  void onInit() {
    fetchData();
    originalData.assignAll(cardDataList);
    super.onInit();
  }

  var originalData = <CardDataModel>[].obs;

  var cardDataList = <CardDataModel>[].obs;

  void search(String query) {
    if (query.isEmpty) {
      cardDataList.assignAll(originalData);
      return;
    }
    var filtered = originalData.where((data) {
      final title = data.title.toString().toLowerCase();
      return title.startsWith(query.toLowerCase());
    }).toList();
    cardDataList.assignAll(filtered);
  }

  void fetchData() {
    try {
      isLoading.value = true;
      firestore.collection("carData").snapshots().listen((snapshot) {
        var cardData = snapshot.docs.map((value) {
          return CardDataModel.fromJson(value.data());
        }).toList();
        cardDataList.assignAll(cardData);
        isLoading.value = false;
        debugPrint("this is the data = ${cardDataList.length}");
      });
    } catch (e) {
      isLoading.value = false;
      debugPrint("this is the error$e");
    }
  }
}
