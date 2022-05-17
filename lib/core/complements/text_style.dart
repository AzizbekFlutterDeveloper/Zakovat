import 'package:flutter/rendering.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class MyTextStyle{
  static TextStyle textStyleMain(){
    return TextStyle(
      fontSize: getHeight(36),
      color: ConstColor.white,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyleNormal(){
    return TextStyle(
      fontSize: getHeight(16),
      color: ConstColor.white,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyleBold(){
    return TextStyle(
      color: ConstColor.white,
      fontSize: getHeight(26),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle({double size = 16 }){
    return TextStyle(
      color: ConstColor.white,
      fontSize: getHeight(size),
      fontWeight: FontWeight.w500,
    );
  }
}