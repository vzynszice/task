import 'package:flutter/material.dart';

class PaddingConstants {
  EdgeInsetsGeometry addingTaskPadding = const EdgeInsets.all(8.0);
  BorderRadius appBarPadding = const BorderRadius.horizontal(
      right: Radius.circular(20), left: Radius.circular(20));
  EdgeInsetsGeometry cardPadding =
      const EdgeInsets.only(top: 9, right: 8, left: 8);
  static const openingTextPadding = EdgeInsets.symmetric(horizontal: 40.0);

  PaddingConstants();
}
