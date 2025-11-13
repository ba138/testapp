class UserModel {
  final String uid;
  final String email;
  final String name;
  final String? profile;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    this.profile,
  });
  Map<String, dynamic> toJson() {
    return {"uid": uid, "email": email, "name": name, "profile": profile};
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      profile: map['profile'],
    );
  }
}
