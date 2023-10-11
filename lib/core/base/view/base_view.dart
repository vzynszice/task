import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext contex, T value) onPageBuilder;
  final T viewModel;
  final void Function(T model)? onModelReady;
  final VoidCallback? onDispose;
  BaseView(
      {super.key,
      required this.onPageBuilder,
      required this.viewModel,
      this.onModelReady,
      this.onDispose});

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T model;
  @override
  void initState() {
    model = widget.viewModel;
    widget.onModelReady!(model);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose?.call();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, model);
  }
}
