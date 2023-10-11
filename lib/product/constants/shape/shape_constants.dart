import 'package:flutter/material.dart';

class ShapeConstants {
  static Radius topleft = const Radius.circular(120);
  static Radius topRight = const Radius.circular(120);
  static ShapeBorder? bottomSheetShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: ShapeConstants.topleft, topRight: ShapeConstants.topRight));
  static ShapeBorder? listTileShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
  static BorderSide textFieldBorderSide =
      const BorderSide(color: Colors.black, width: 3.0);
  static BorderRadius textFieldBorderRadius = BorderRadius.circular(10.0);
}
