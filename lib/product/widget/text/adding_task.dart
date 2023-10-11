import 'package:flutter/material.dart';
import 'package:to_do_app2/core/init/theme/app_theme_light.dart';
import 'package:to_do_app2/product/constants/padding/paddings.dart';
import 'package:to_do_app2/product/constants/text/text_constants.dart';

class AddingTaskWidget extends StatelessWidget {
  const AddingTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstants().addingTaskPadding,
      child: Text(TextConstants.addingTask,
          style: AppThemeLight.instance.themeData.textTheme.labelMedium),
    );
  }
}
