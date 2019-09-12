import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:my_cookbook/src/add_recipe/recipe_service.dart';
import 'package:my_cookbook/src/recipe.dart';

@Component(
  selector: 'add_recipe',
  styleUrls: ['add_recipe_component.css','package:angular_components/css/mdc_web/card/mdc-card.scss.css',],
  templateUrl: 'add_recipe_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [ClassProvider(AddRecipeService)],
)
class AddRecipeComponent implements OnInit {
  final AddRecipeService recipeService;

  List<String> items = [];
  List<String> steps = [];
  String newItem = '';
  String newStep = '';
  String name;

  AddRecipeComponent(this.recipeService);

  @override
  Future<Null> ngOnInit() async {
    steps = await recipeService.getStep();
    items = await recipeService.getIngridiend();
  }

    void additem() {
      items.add(newItem);
      newItem = '';
    }

    void addstep() {
      steps.add(newStep);
      newStep = '';
    }

  String remove(int index) => items.removeAt(index);
  String removestep(int index) => steps.removeAt(index);
}
