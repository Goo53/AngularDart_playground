import 'package:angular/angular.dart';
import 'package:my_cookbook/src/recipe.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'recipes',
  styleUrls: ['recipes_list_component.css', 'package:angular_components/css/mdc_web/card/mdc-card.scss.css',],
  templateUrl: 'recipes_list_component.html',
  directives: [
  coreDirectives,
  materialInputDirectives,
],
providers: [])

class RecipesListComponent {

List<Recipe> recipes = [
  Recipe(1,'Tiramisu', ['2 jajka','csdcscsf jajka'], ['ajadwawadwdka','2 cokolwiek'], 'deser', 'asejeh'),
  Recipe(2,'Jajecznica', ['2 jajka','2 jajka'], ['2 jajka','2 jajka'], 'danie glowne', 'sdadasda'),
];

}
