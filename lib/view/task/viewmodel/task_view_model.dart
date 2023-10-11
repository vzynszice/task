import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app2/core/base/viewmodel/base_view_model.dart';
import 'package:to_do_app2/core/constants/enum/app_theme/app_theme_enum.dart';
import 'package:to_do_app2/core/constants/enum/preferences/preferences_keys.dart';
//import 'package:to_do_app2/core/constants/navigation/navigation_constants.dart';
//import 'package:to_do_app2/core/init/cache/local_manager.dart';
import 'package:to_do_app2/core/init/notifier/theme_notifier.dart';
import 'package:to_do_app2/view/task/model/task_model.dart';

part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase extends BaseViewModel with Store {
  TaskModel? taskModel;
  TextEditingController textEditingController = TextEditingController();

  @observable
  int taskCount = 0;

  @observable
  var taskModels = ObservableList<TaskModel>.of([
    TaskModel(""),
    TaskModel(""),
    TaskModel(""),
    TaskModel(""),
    TaskModel("")
  ]);

  @action
  void finishTask(int index) {
    taskModels[index].isFinished = true;
  }

  @action
  Future<void> setDatas() async {
    await localeManager.setStringValue(
        PreferencesKeys.TOKEN, taskModels[taskCount].taskDescription);
    taskCount++;
  }

  @action
  Future<void> clearData() async {
    await localeManager.clearAll();
  }

  @action
  List<String>? getDatas() {
    return localeManager.getStrings(PreferencesKeys.TOKEN);
  }

  @action
  void onChangeValue(String value) {
    taskModels[taskCount].taskDescription = value;
  }

  @override
  void init() {}

  @override
  void setContext(BuildContext context) {
    viewModelContext = context;
  }

  void changeTheme() {
    Provider.of<ThemeNotifier>(viewModelContext, listen: false)
        .changeTheme(AppThemes.LIGHT);
  }

  @observable
  bool isLoading = false;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
}
