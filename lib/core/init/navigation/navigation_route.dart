import 'package:flutter/material.dart';
import 'package:to_do_app2/core/constants/navigation/navigation_constants.dart';
import 'package:to_do_app2/product/widget/card/navigation_not_found.dart';
import 'package:to_do_app2/view/opening/opening_view.dart';
import 'package:to_do_app2/view/task/view/task_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.TASK_VIEW:
        return MaterialPageRoute(builder: (context) => const TaskView());
      case NavigationConstants.OPENING_VIEW:
        return MaterialPageRoute(builder: (context) => const OpeningView());
      default:
        return MaterialPageRoute(
            builder: (context) => const NotFoundNavigationWidget());
    }
  }
}
