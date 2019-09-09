import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';

import './recipes_list/recipes_list_component.template.dart' as recipes_list_template;
import './add_recipe/add_recipe_component.template.dart' as add_recipe_template;
import './login/login_component.template.dart' as login_template;
import './home_screen/home_screen_component.template.dart' as home_screen_template;
import './home/home_component.template.dart' as home_template;

import 'not_found_component.template.dart' as not_found_template;

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
  );
  static final home_screen = RouteDefinition(
    routePath: RoutePaths.home_screen,
    component: home_screen_template.HomeScreenComponentNgFactory,
  );

  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
    useAsDefault: true,
  );

  static final recipes = RouteDefinition(
    routePath: RoutePaths.recipes,
    component: recipes_list_template.RecipesListComponentNgFactory,
  );

  static final add_recipe = RouteDefinition(
    routePath: RoutePaths.add_recipe,
    component: add_recipe_template.StepsComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home_screen,
    home,
    login,
    recipes,
    add_recipe,
    RouteDefinition(
      path: '.+',
      component: not_found_template.NotFoundComponentNgFactory,
    ),
  ];
}
