class CardDataModel {
  final String title;
  final String image;
  final double averageRating;
  final String totalRating;
  CardDataModel({
    required this.title,
    required this.image,
    required this.averageRating,
    required this.totalRating,
  });
  Map<String, dynamic> toJason() {
    return {
      "title": title,
      'image': image,
      "averageRating": averageRating,
      "totalRating": totalRating,
    };
  }

  factory CardDataModel.fromJson(Map<String, dynamic> map) {
    return CardDataModel(
      title: map['title'],
      image: map['image'],
      averageRating: map['averageRating'],
      totalRating: map['totalRating'],
    );
  }
}
