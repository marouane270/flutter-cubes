import 'dart:ffi';

class User{
  final int id;
  final String? userNom;
  final String? userPrenom;
  final String? userPseudo;
  final String? userMail;
  final Array? likes;

  User({required this.id, required this.userNom, required this.userPrenom, required this.userPseudo, required this.userMail, this.likes });

  static User FromJson(Map<String, dynamic> json){
    return User(
        id: json["id"],
        userNom: json["userNom"],
        userPrenom: json["userPrenom"],
        userPseudo: json["userPseudo"],
        userMail: json["userMail"],
        likes: json["likes"]
    );
  }
}
