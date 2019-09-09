import 'package:angular/angular.dart';
@Component(
  selector: 'home',
  template: '''
    <h2>This is yours home </h2>
    <p>Wohoo</p>
  ''',

  directives: [
    NgFor,
    NgIf,
  ],
)
class HomeComponent {}
