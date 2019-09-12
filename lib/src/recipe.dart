class Recipe {
  String id;
  String name;
  List<String> ingredients;
  List<String> steps;
  String imgUrl;
  String tag;

  Recipe(this.id, this.name,this.ingredients, this.tag, this.imgUrl,);

  Map<String, dynamic> toJson() => <String, dynamic>{
    "id": id,
    "name": name,
    "ingredients": ingredients,
    "tag": tag,
    "imgUrl": imgUrl
  };

  Recipe.fromJson(Map<String, dynamic> json): this(json['id'], json['name'],
      json['ingredients'], json['tag'], json['imgUrl']);
}
