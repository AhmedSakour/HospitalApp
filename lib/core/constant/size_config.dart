import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;

  static const double desktop = 1200;
  static const double tablet = 800;

  void init(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    screenWidth = size.width;
    screenHeight = size.height;
  }
}
