import 'package:flutter/material.dart';
import 'package:to_do_app2/core/constants/navigation/navigation_constants.dart';
import 'package:to_do_app2/product/constants/color/color_utilities.dart';

class OpeningButton extends StatelessWidget {
  const OpeningButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.saveButtonColor),
          onPressed: () {
            Navigator.of(context).pushNamed(NavigationConstants.TASK_VIEW);
          },
          child: const SizedBox(
            width: 150,
            child: Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Inclusive Sans', fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
