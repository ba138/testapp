import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:firstapp/Models/post_model.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';

class GetServices extends GetxController {
  var postData = <PostModel>[].obs; // nullable single model
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      String url = "https://jsonplaceholder.typicode.com/posts";
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        debugPrint("Data fetched successfully: ${response.body}");
        final jsonData = jsonDecode(response.body);
        postData.value = jsonData.map((e) => PostModel.fromJson(e)).toList();
      } else {
        debugPrint("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("this is the error $e");
    }
  }
}
