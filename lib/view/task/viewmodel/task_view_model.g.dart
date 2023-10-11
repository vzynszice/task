// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskViewModel on _TaskViewModelBase, Store {
  late final _$taskCountAtom =
      Atom(name: '_TaskViewModelBase.taskCount', context: context);

  @override
  int get taskCount {
    _$taskCountAtom.reportRead();
    return super.taskCount;
  }

  @override
  set taskCount(int value) {
    _$taskCountAtom.reportWrite(value, super.taskCount, () {
      super.taskCount = value;
    });
  }

  late final _$taskModelsAtom =
      Atom(name: '_TaskViewModelBase.taskModels', context: context);

  @override
  ObservableList<TaskModel> get taskModels {
    _$taskModelsAtom.reportRead();
    return super.taskModels;
  }

  @override
  set taskModels(ObservableList<TaskModel> value) {
    _$taskModelsAtom.reportWrite(value, super.taskModels, () {
      super.taskModels = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_TaskViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$setDatasAsyncAction =
      AsyncAction('_TaskViewModelBase.setDatas', context: context);

  @override
  Future<void> setDatas() {
    return _$setDatasAsyncAction.run(() => super.setDatas());
  }

  late final _$clearDataAsyncAction =
      AsyncAction('_TaskViewModelBase.clearData', context: context);

  @override
  Future<void> clearData() {
    return _$clearDataAsyncAction.run(() => super.clearData());
  }

  late final _$_TaskViewModelBaseActionController =
      ActionController(name: '_TaskViewModelBase', context: context);

  @override
  void finishTask(int index) {
    final _$actionInfo = _$_TaskViewModelBaseActionController.startAction(
        name: '_TaskViewModelBase.finishTask');
    try {
      return super.finishTask(index);
    } finally {
      _$_TaskViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String>? getDatas() {
    final _$actionInfo = _$_TaskViewModelBaseActionController.startAction(
        name: '_TaskViewModelBase.getDatas');
    try {
      return super.getDatas();
    } finally {
      _$_TaskViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeValue(String value) {
    final _$actionInfo = _$_TaskViewModelBaseActionController.startAction(
        name: '_TaskViewModelBase.onChangeValue');
    try {
      return super.onChangeValue(value);
    } finally {
      _$_TaskViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading() {
    final _$actionInfo = _$_TaskViewModelBaseActionController.startAction(
        name: '_TaskViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_TaskViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
taskCount: ${taskCount},
taskModels: ${taskModels},
isLoading: ${isLoading}
    ''';
  }
}
