/*class RessourcesAll {
  int? status;
  List<Data>? data;

  RessourcesAll({this.status, this.data});

  RessourcesAll.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> RessourcetoJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.DatatoJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? posterId;
  String? posterNom;
  String? posterPrenom;
  String? posterPseudo;
  String? message;
  String? photo;
  String? video;
  List<String>? likers;
  List<Comments>? comments;
  bool? ressourceIsValid;
  String? ressourceCategorieId;
  List<String>? ressourceTypeRelation;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? link;
  String? ressourceStatut;
  String? ressourceCategorie;

  Data(
      {this.sId,
        this.posterId,
        this.posterNom,
        this.posterPrenom,
        this.posterPseudo,
        this.message,
        this.photo,
        this.video,
        this.likers,
        this.comments,
        this.ressourceIsValid,
        this.ressourceCategorieId,
        this.ressourceTypeRelation,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.link,
        this.ressourceStatut,
        this.ressourceCategorie});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    posterId = json['posterId'];
    posterNom = json['posterNom'];
    posterPrenom = json['posterPrenom'];
    posterPseudo = json['posterPseudo'];
    message = json['message'];
    photo = json['photo'];
    video = json['video'];
    likers = json['likers'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
    ressourceIsValid = json['ressourceIsValid'];
    ressourceCategorieId = json['RessourceCategorieId'];
    ressourceTypeRelation = json['ressourceTypeRelation'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    link = json['link'];
    ressourceStatut = json['ressourceStatut'];
    ressourceCategorie = json['RessourceCategorie'];
  }

  Map<String, dynamic> DatatoJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['posterId'] = this.posterId;
    data['posterNom'] = this.posterNom;
    data['posterPrenom'] = this.posterPrenom;
    data['posterPseudo'] = this.posterPseudo;
    data['message'] = this.message;
    data['photo'] = this.photo;
    data['video'] = this.video;
    data['likers'] = this.likers;
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.CommenttoJson()).toList();
    }
    data['ressourceIsValid'] = this.ressourceIsValid;
    data['RessourceCategorieId'] = this.ressourceCategorieId;
    data['ressourceTypeRelation'] = this.ressourceTypeRelation;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['link'] = this.link;
    data['ressourceStatut'] = this.ressourceStatut;
    data['RessourceCategorie'] = this.ressourceCategorie;
    return data;
  }
}

class Comments {
  String? commenterId;
  String? commenterPseudo;
  String? text;
  int? timestamp;
  String? sId;

  Comments(
      {this.commenterId,
        this.commenterPseudo,
        this.text,
        this.timestamp,
        this.sId});

  Comments.fromJson(Map<String, dynamic> json) {
    commenterId = json['commenterId'];
    commenterPseudo = json['commenterPseudo'];
    text = json['text'];
    timestamp = json['timestamp'];
    sId = json['_id'];
  }

  Map<String, dynamic> CommenttoJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['commenterId'] = this.commenterId;
    data['commenterPseudo'] = this.commenterPseudo;
    data['text'] = this.text;
    data['timestamp'] = this.timestamp;
    data['_id'] = this.sId;
    return data;
  }
}*/





class RessourcesAll{
  final String? id;
  final String? posterId;
  final String? posterNom;
  final String? posterPrenom;
  final String? posterPseudo;
  final String? message;
  final String? photo;

  RessourcesAll({required this.id, required this.posterId, required this.posterNom, required this.posterPrenom, required this.posterPseudo, this.message, this.photo,});

  factory RessourcesAll.fromJson(Map <String, dynamic> json){
   return RessourcesAll(
     id: json["id"] as String,
     posterId: json["posterId"] as String,
     posterNom: json["posterNom"] as String,
     posterPrenom: json["posterPrenom"] as String,
     posterPseudo: json["posterPseudo"] as String,
     message: json["message"] as String,
     photo: json["photo"] as String,
   );
 }


}