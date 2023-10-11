import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);

  double get dynamicHeight => MediaQuery.of(context).size.height;
  double get dynamicWidth => MediaQuery.of(context).size.width;
}

abstract class BaseStateless extends StatelessWidget {
  const BaseStateless({super.key});

  ThemeData themeData(BuildContext context) => Theme.of(context);

  double dynamicHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  double dynamicWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
