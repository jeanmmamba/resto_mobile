// To parse this JSON data, do
//
//     final ordered = orderedFromJson(jsonString);

import 'dart:convert';

List<Ordered> orderedFromJson(String str) =>
    List<Ordered>.from(json.decode(str).map((x) => Ordered.fromJson(x)));

String orderedToJson(Ordered data) => json.encode(data.toJson());

class Ordered {
  Ordered({
    this.id,
    this.qte,
    this.articleId,
    this.userId,
    this.deliveryDate,
    this.time,
    this.createdAt,
    this.updatedAt,
    this.article,
    this.user,
  });

  int id;
  String qte;
  int articleId;
  int userId;
  DateTime deliveryDate;
  String time;
  dynamic createdAt;
  dynamic updatedAt;
  Article article;
  User user;

  factory Ordered.fromJson(Map<String, dynamic> json) => Ordered(
        id: json["id"],
        qte: json["qte"],
        articleId: json["article_id"],
        userId: json["user_id"],
        deliveryDate: DateTime.parse(json["delivery_date"]),
        time: json["time"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        article: Article.fromJson(json["article"]),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "qte": qte,
        "article_id": articleId,
        "user_id": userId,
        "delivery_date":
            "${deliveryDate.year.toString().padLeft(4, '0')}-${deliveryDate.month.toString().padLeft(2, '0')}-${deliveryDate.day.toString().padLeft(2, '0')}",
        "time": time,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "article": article.toJson(),
        "user": user.toJson(),
      };
}

class Article {
  Article({
    this.id,
    this.name,
    this.description,
    this.prix,
    this.photo,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String description;
  String prix;
  String photo;
  int categoryId;
  dynamic createdAt;
  dynamic updatedAt;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        prix: json["prix"],
        photo: json["photo"],
        categoryId: json["category_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "prix": prix,
        "photo": photo,
        "category_id": categoryId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  String phoneNumber;
  dynamic createdAt;
  dynamic updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phoneNumber: json["phone_number"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone_number": phoneNumber,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
