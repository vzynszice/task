import 'package:flutter/material.dart';
import 'package:to_do_app2/core/base/state/base_state.dart';
//import 'package:to_do_app/product/constants/text/text_constants.dart';

class OpeningTitleText extends BaseStateless {
  const OpeningTitleText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: themeData(context).textTheme.titleMedium,
    );
  }
}

class OpeningSubTitleText extends BaseStateless {
  const OpeningSubTitleText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: themeData(context).textTheme.titleSmall,
      textAlign: TextAlign.justify,
    );
  }
}
