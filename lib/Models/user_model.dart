class UserModel {
  final String uid;
  final String email;
  final String name;

  UserModel({required this.uid, required this.email, required this.name});
  Map<String, dynamic> toJson() {
    return {"uid": uid, "email": email, "name": name};
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(uid: map['uid'], email: map['email'], name: map['name']);
  }
}
