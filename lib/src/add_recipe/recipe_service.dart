import 'dart:async';

import 'package:angular/core.dart';

class AddRecipeService {
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
