import 'package:firstapp/Models/card_data_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    originalData.assignAll(cardData);
    super.onInit();
  }

  var originalData = <CardDataModel>[].obs;

  var cardData = <CardDataModel>[
    CardDataModel(
      title: "hotel",
      image:
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      averageRating: 3.5,
      totalRating: "4",
    ),

    CardDataModel(
      title: "hotel",
      image:
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      averageRating: 3.5,
      totalRating: "4",
    ),
    CardDataModel(
      title: "hotel",
      image:
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      averageRating: 3.5,
      totalRating: "4",
    ),
    CardDataModel(
      title: "hotel",
      image:
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      averageRating: 3.5,
      totalRating: "4",
    ),
    CardDataModel(
      title: "hotel",
      image:
          "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D",
      averageRating: 3.5,
      totalRating: "4",
    ),
  ].obs;

  void search(String query) {
    if (query.isEmpty) {
      cardData.assignAll(originalData);
      return;
    }
    var filtered = originalData.where((data) {
      final title = data.title.toString().toLowerCase();
      return title.startsWith(query.toLowerCase());
    }).toList();
    cardData.assignAll(filtered);
  }
}
