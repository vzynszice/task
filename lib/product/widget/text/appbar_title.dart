import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app2/core/init/theme/app_theme_light.dart';
import 'package:to_do_app2/product/constants/duration/duration_constants.dart';
import 'package:to_do_app2/product/constants/text/text_constants.dart';

class AppBarAnimatedText extends StatelessWidget {
  const AppBarAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(TextConstants.taskPageAppBar,
            textStyle: AppThemeLight.instance.themeData.textTheme.displayMedium,
            speed: DurationConstants().appBarAnimation),
      ],
      repeatForever: true,
    );
  }
}
