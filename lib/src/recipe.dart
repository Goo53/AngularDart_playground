class Recipe {
  int id;
  String name;
  List<String> ingredientslist;
  List<String> stepslist;
  String imgUrl;
  String tag;

  Recipe(this.id, this.name, this.ingredientslist, this.stepslist, this.tag, this.imgUrl,);


  Map<String, dynamic> toJson() => <String, dynamic>{
    "id": id,
    "name": name,
    "ingredientslist": ingredientslist,
    "stepslist": stepslist,
    "tag": tag,
    "imgUrl": imgUrl,
  };


  Recipe.fromJson(Map<String, dynamic> json): this(json['id'], json['name'],
      json['ingridientslist'],json['stepslist'], json['tag'], json['imgUrl']);
}
