import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:my_cookbook/app_component.template.dart' as ng;
import 'package:mdc_web/mdc_web.dart';
import 'dart:html';
import 'main.template.dart' as self;

const useHashLS = false;
@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
  autoInit();
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);

}
