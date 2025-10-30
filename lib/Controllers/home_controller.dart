import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    originalData.assignAll(cardData);
    super.onInit();
  }

  var originalData = <Map<String, dynamic>>[].obs;

  var cardData = <Map<String, dynamic>>[
    {
      'title': "hotel",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 4.5,
      'totalRating': "13",
    },
    {
      'title': "apartment",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 5,
      'totalRating': "24",
    },
    {
      'title': "Cabin",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 3.8,
      'totalRating': "10",
    },
    {
      'title': "Home",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 4,
      'totalRating': "18",
    },
    {
      'title': "ali",
      "image":
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      'averageRating': 4,
      'totalRating': "18",
      'price': "100",
      "accodimation": "2",
      'badrooms': '2',
    },
  ].obs;

  void search(String query) {
    if (query.isEmpty) {
      cardData.assignAll(originalData);
      return;
    }
    var filtered = originalData.where((data) {
      final title = data["title"].toString().toLowerCase();
      return title.startsWith(query.toLowerCase());
    }).toList();
    cardData.assignAll(filtered);
  }
}
