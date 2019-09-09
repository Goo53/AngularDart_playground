import 'dart:async';

import 'package:angular/core.dart';

class StepsService {
  List<String> ingridiendList = <String>[];
  List<String> stepList = <String>[];
  String id;
  String name;
  String category;
  String directions;
  String imgUrl;
  int rating;

  Future<String> getName() async => name;
  Future<List<String>> getIngridiend() async => ingridiendList;
  Future<List<String>> getStep() async => stepList;

}

class Recipe {
  String id;
  String name;
  String category;
  List<String> ingredients;
  List<String> steps;
  String directions;
  String imgUrl;
  int rating;

  Recipe(this.id, this.name, this.category, this.ingredients, this.directions, this.rating,
         this.imgUrl);

  Map<String, dynamic> toJson() => <String, dynamic>{
    "id": id,
    "name": name,
    "category": category,
    "ingredients": ingredients,
    "directions": directions,
    "rating": rating,
    "imgUrl": imgUrl
  };

  Recipe.fromJson(Map<String, dynamic> json): this(json['id'], json['name'], json['category'],
      json['ingredients'], json['directions'], json['rating'], json['imgUrl']);
}
