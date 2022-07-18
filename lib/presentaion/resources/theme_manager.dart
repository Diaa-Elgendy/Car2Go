import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      //Main colors for the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      splashColor: ColorManager.primaryLight,
      backgroundColor: ColorManager.offWhite,
      scaffoldBackgroundColor: ColorManager.offWhite,

      //AppBar theme
      appBarTheme: AppBarTheme(
        color: ColorManager.offWhite,
        elevation: AppSize.appBarElevation,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.offWhite,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        titleTextStyle: getAppBarStyle(),
        iconTheme: const IconThemeData(color: ColorManager.textColor),
      ),

      //Card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          elevation: 0,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.borderRadius))),


      //Button theme
      buttonTheme: const ButtonThemeData(
          shape: StadiumBorder(),
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.primaryLight),

      //Elevated Button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(),
        primary: ColorManager.primary,


        elevation: 0,
        side: const BorderSide(width: 1.5, color: ColorManager.primaryLight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
        ),
      )),


      //outLined Button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.borderRadius)),
              side: const BorderSide(width: 1, color: ColorManager.primary))),

      //Text theme
      textTheme: TextTheme(
          headline1: getSemiBoldStyle(
            fontSize: FontSize.f16,
          ),
          subtitle1: getRegularStyle(
            fontSize: FontSize.f14,
          ),
          caption: getRegularStyle(),
          bodyText1: getRegularStyle()),

      //TextFormField theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.textFormFieldPadding),
        hintStyle: getRegularStyle(),
        labelStyle: getRegularStyle(),
        errorStyle: getRegularStyle(),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.textColorLight, width: AppSize.borderWidth),
            borderRadius:
                BorderRadius.all(Radius.circular(AppSize.borderRadius))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.primary, width: AppSize.borderWidth),
            borderRadius:
                BorderRadius.all(Radius.circular(AppSize.borderRadius))),
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.red, width: AppSize.borderWidth),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSize.borderRadius))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.red, width: AppSize.borderWidth),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSize.borderRadius))),
      ),
      dividerTheme: const DividerThemeData(
        color: ColorManager.textColorLight,
        thickness: 0.2,
        space: 25,
      ));
}
