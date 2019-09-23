import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:my_cookbook/app_component.template.dart' as ng;
import 'package:mdc_web/mdc_web.dart';
import 'dart:html';
import 'package:firebase/firebase.dart' as fb;
import 'package:my_cookbook/src/services/database_service.dart';
import 'main.template.dart' as self;

const useHashLS = false;
@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = self.injector$Injector;

void main() {
  fb.initializeApp(
      apiKey: apiKey,
      authDomain: authDomain,
      databaseURL: databaseURL,
      storageBucket: storageBucket
  );
  var database = fb.database();
  runApp(ng.AppComponentNgFactory, createInjector: injector);
  autoInit();
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);

}
