// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'dart:convert';

List<Article> articleFromJson(String str) =>
    List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

String articleToJson(Article data) => json.encode(data.toJson());

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
