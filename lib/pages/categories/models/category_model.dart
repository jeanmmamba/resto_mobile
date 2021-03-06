// To parse this JSON data, do
//
//     final categorieData = categorieDataFromJson(jsonString);

import 'dart:convert';

List<CategorieData> categorieDataFromJson(String str) =>
    List<CategorieData>.from(
        json.decode(str).map((x) => CategorieData.fromJson(x)));

String categorieDataToJson(List<CategorieData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategorieData {
  CategorieData({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.article,
  });

  int id;
  String name;
  String description;
  dynamic createdAt;
  dynamic updatedAt;
  List<dynamic> article;

  factory CategorieData.fromJson(Map<String, dynamic> json) => CategorieData(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        article: List<dynamic>.from(json["article"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "article": List<dynamic>.from(article.map((x) => x)),
      };
}
