import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'recipe_service.dart';

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
  providers: [ClassProvider(StepsService)],
)
class StepsComponent implements OnInit {
  final StepsService stepsService;

  List<String> items = [];
  List<String> steps = [];
  String newItem = '';
  String newStep = '';

  StepsComponent(this.stepsService);

  @override
  Future<Null> ngOnInit() async {
    steps = await stepsService.getStep();
    items = await stepsService.getIngridiend();
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
