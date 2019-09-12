import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['package:angular_components/app_layout/layout.scss.css', 'app_component.css'],
  templateUrl: 'app_component.html',
  providers: const <dynamic>[materialProviders],
  directives: [
    routerDirectives,
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialToggleComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    MaterialFabComponent,
    MaterialButtonComponent],
  exports: [RoutePaths, Routes]
)
class AppComponent {
}
