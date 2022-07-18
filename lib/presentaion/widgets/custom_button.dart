import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback function;
  bool fullWidth;

  CustomButton(
      {Key? key,
        required this.text,
        required this.function,
        this.fullWidth = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: AppSize.buttonWidth,
          height: AppSize.buttonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.borderRadius),
            color: ColorManager.primary,
          ),
          child: MaterialButton(
            onPressed: function,
            child: Text(
              text,
              style:
              getMediumStyle(color: Colors.white, fontSize: FontSize.f20),
            ),
          ),
        ),
      ],
    );
  }
}