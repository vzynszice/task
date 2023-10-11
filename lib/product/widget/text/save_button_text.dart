import 'package:flutter/material.dart';
import 'package:to_do_app2/core/init/theme/app_theme_light.dart';
import 'package:to_do_app2/product/constants/text/text_constants.dart';

class SaveButtonText extends StatelessWidget {
  const SaveButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextConstants.elevatedButtonText,
      textAlign: TextAlign.center,
      style: AppThemeLight.instance.themeData.textTheme.displayMedium,
    );
  }
}
