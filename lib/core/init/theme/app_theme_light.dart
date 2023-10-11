import 'package:flutter/material.dart';
import 'package:to_do_app2/core/init/theme/app_theme.dart';
import 'package:to_do_app2/product/constants/color/color_utilities.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get themeData => ThemeData.light().copyWith(
      textTheme: const TextTheme(
          titleSmall: TextStyle(
              color: Colors.black38,
              fontFamily: 'Inclusive Sans',
              fontSize: 15),
          titleMedium: TextStyle(
              color: ColorConstants.saveButtonColor,
              fontFamily: 'Inclusive Sans',
              fontSize: 20,
              fontWeight: FontWeight.bold),
          labelMedium: TextStyle(
              color: ColorConstants.saveButtonColor,
              fontFamily: 'Inclusive Sans',
              fontSize: 25,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(
              color: Colors.white,
              fontFamily: 'Inclusive Sans',
              fontSize: 25,
              fontWeight: FontWeight.bold),
          labelSmall: TextStyle(
              color: Colors.white,
              fontFamily: 'Inclusive Sans',
              fontSize: 20,
              fontWeight: FontWeight.bold)));
}
