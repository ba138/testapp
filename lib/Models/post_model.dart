class PostModel {
  final int id;
  final String title;
  final String body;
  final int userId;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  // Convert JSON to Dart object
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }
}
