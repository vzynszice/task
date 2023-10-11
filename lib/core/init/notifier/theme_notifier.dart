import 'package:flutter/material.dart';
import 'package:to_do_app2/core/constants/enum/app_theme/app_theme_enum.dart';
import 'package:to_do_app2/core/init/theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.themeData;
  ThemeData get currentTheme => _currentTheme;

  void changeTheme(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
