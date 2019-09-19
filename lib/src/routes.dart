import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';

import './recipes_list/recipes_list_component.template.dart' as recipes_list_template;
import './add_recipe/add_recipe_component.template.dart' as add_recipe_template;
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

  static final recipes = RouteDefinition(
    routePath: RoutePaths.recipes,
    component: recipes_list_template.RecipesListComponentNgFactory,
    useAsDefault: true,
  );

  static final add_recipe = RouteDefinition(
    routePath: RoutePaths.add_recipe,
    component: add_recipe_template.AddRecipeComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home_screen,
    home,
    recipes,
    add_recipe,
    RouteDefinition(
      path: '.+',
      component: not_found_template.NotFoundComponentNgFactory,
    ),
  ];
}
