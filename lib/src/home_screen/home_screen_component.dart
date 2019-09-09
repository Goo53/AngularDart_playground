import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'home_screen',
  templateUrl: 'home_screen_component.html',
  styleUrls: [
  // This is a wrapper around mdc-card styling to allow it to be imported
  // in dart.
  'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
  'home_screen_component.css'
],
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    NgFor,
    NgIf,
  ],
)
class HomeScreenComponent {}
