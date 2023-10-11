import 'package:flutter/material.dart';
import 'package:to_do_app2/core/init/navigation/INavigation_Service.dart';

class NavigationService extends INavigationService {
  static NavigationService _instance = NavigationService._init();
  static NavigationService get instance {
    return _instance;
  }

  NavigationService._init();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Future<void> navigateToPage({String? path, Object? object}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: object);
  }

  @override
  Future<void> navigateToPageClear({String? path, Object? object}) async {
    bool removeAllOldRoutes(Route<dynamic> route) => true;
    await navigatorKey.currentState!
        .pushNamedAndRemoveUntil(path!, removeAllOldRoutes, arguments: object);
  }
}
