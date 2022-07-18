import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

enum TextFieldType { Date, Time, Text }

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String text;
  bool isPassword;
  VoidCallback? suffixPressed;
  IconData? suffix;
  IconData? prefix;
  TextFieldType textFieldType;
  int maxLines;

  CustomTextField(
      {required this.controller,
        required this.textFieldType,
        required this.text,
        this.isPassword = false,
        this.suffixPressed,
        this.suffix,
        this.prefix,
        this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    TextInputType textInputType;
    bool readOnly = false;
    VoidCallback onTap = () {};

    if (textFieldType == TextFieldType.Date) {
      textInputType = TextInputType.datetime;
      prefix = Icons.date_range;
      readOnly = true;
      onTap = () {
        DatePicker.showDatePicker(context,
            showTitleActions: true,
            minTime: DateTime(1980, 3, 5),
            maxTime: DateTime(2025, 12, 30), onConfirm: (date) {
              controller.text = DateFormat('yyyy-MM-dd').format(date);
            });
      };
    } else if (textFieldType == TextFieldType.Time) {
      textInputType = TextInputType.datetime;
      prefix = FontAwesomeIcons.clock;
      readOnly = true;
      onTap = () {
        DatePicker.showTime12hPicker(context,
            showTitleActions: true,
            currentTime: DateTime.now(), onChanged: (time) {
              //debugPrint(DateFormat('hh:mm a').format(time));
            }, onConfirm: (time) {
              controller.text = DateFormat('hh:mm a').format(time).toString();
            });
      };
    } else {
      textInputType = TextInputType.text;
    }

    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(
          prefix,
          color: ColorManager.primary,
          size: 20,
        ),
        isDense: false,
        contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(suffix),
          onPressed: suffixPressed,
        )
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.borderRadius)),
        labelStyle: getRegularStyle(color: ColorManager.textColorLight),
        alignLabelWithHint: true,
      ),
      scrollPadding: const EdgeInsets.all(0),
      keyboardType: textInputType,
      style: getRegularStyle(),
      controller: controller,
      obscureText: isPassword,
      minLines: 1,
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.center,
      onTap: onTap,
      cursorColor: ColorManager.primary,
      readOnly: readOnly,
      validator: (value) {
        if (value!.isEmpty) {
          return '$text must not be empty';
        }
        return null;
      },
    );
  }
}
