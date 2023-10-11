import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_app2/core/base/state/base_state.dart';
import 'package:to_do_app2/product/constants/lottie_items/lottie_items.dart';
import 'package:to_do_app2/product/constants/padding/paddings.dart';
import 'package:to_do_app2/product/constants/text/text_constants.dart';
import 'package:to_do_app2/product/widget/button/opening_button.dart';
import 'package:to_do_app2/product/widget/text/opening_view_title_widget.dart';

class OpeningView extends StatefulWidget {
  const OpeningView({super.key});

  @override
  State<OpeningView> createState() => _OpeningViewState();
}

class _OpeningViewState extends BaseState<OpeningView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //ImagePaths.todolist.toWidget(height: 100),
          Expanded(
            flex: 2,
            child: Lottie.asset(LottieItems.toDoLottie.lottiePath),
          ),
          const Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OpeningTitleText(TextConstants.openingPageTitle),
                  Padding(
                    padding: PaddingConstants.openingTextPadding,
                    child:
                        OpeningSubTitleText(TextConstants.openingPageSubtitle),
                  ),
                  OpeningButton()
                ],
              ))
        ],
      )),
    );
  }
}

/*enum ImagePaths { todolist }

extension ImagePathExtension on ImagePaths {
  String path() {
    return ImagePathConstants.imagePath;
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}*/