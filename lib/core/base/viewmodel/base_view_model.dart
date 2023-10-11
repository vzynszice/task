import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do_app2/core/init/cache/local_manager.dart';
import 'package:to_do_app2/core/init/navigation/navigation_service.dart';

abstract class BaseViewModel {
  late BuildContext viewModelContext;
  @observable
  LocaleManager localeManager = LocaleManager.instance;

  NavigationService navigation = NavigationService.instance;
  void setContext(BuildContext context);
  void init();
}
