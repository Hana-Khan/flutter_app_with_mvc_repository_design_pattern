import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SizeConfig {

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    double blockSizeHorizontal = screenWidth / 100;
    double blockSizeVertical = screenHeight / 100;
  }

  static convertHeight(BuildContext context, double n) {
    double i = (n) / 683;
    return i * MediaQuery.of(context).size.longestSide;
  }

  static convertWidth(BuildContext context, double n) {
    double i = (n) / 411;
    return i * MediaQuery.of(context).size.width;
  }
}
