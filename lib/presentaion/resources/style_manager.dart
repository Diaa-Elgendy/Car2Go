import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontSize, color: color, fontFamily: fontFamily);
}

//Regular text style
TextStyle getRegularStyle(
    {double fontSize = FontSize.f16, Color color = ColorManager.textColor}) {
  return TextStyle(
      fontWeight: FontWeightManger.regular,
      fontSize: fontSize,
      fontFamily: FontConstant.fontFamily,
      color: color);
}

//Regular text style
TextStyle  getMediumStyle(
    {double fontSize = FontSize.f16, Color color = ColorManager.textColor}) {
  return TextStyle(
      fontWeight: FontWeightManger.medium,
      fontSize: fontSize,
      fontFamily: FontConstant.fontFamily,
      color: color);
}


//AppBar text style
TextStyle getAppBarStyle(){
  return getSemiBoldStyle(
    fontSize: FontSize.f18,
    color: ColorManager.textColor,
  );
}

//Bold text style
TextStyle getBoldStyle({double fontSize = FontSize.f16, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManger.bold, color);
}

//SemiBold text style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.f16, Color color =  ColorManager.textColor}) {
  return TextStyle(
      fontWeight: FontWeightManger.semiBold,
      fontSize: fontSize,
      fontFamily: FontConstant.fontFamily,
      color: color);
}

