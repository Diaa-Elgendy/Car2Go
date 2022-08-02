import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Space extends StatelessWidget {
  double width, height;

  Space({Key? key, this.width = 15, this.height = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}

class HeaderWithDivider extends StatelessWidget {
  String title;

  HeaderWithDivider({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          thickness: 1,
          color: ColorManager.primaryLight,
        )),
        Text(
          '    $title   ',
          style: getMediumStyle(
              color: ColorManager.primary, fontSize: FontSize.f20),
        ),
        const Expanded(
            child: Divider(
          thickness: 1,
          color: ColorManager.primaryLight,
        )),
      ],
    );
  }
}

class SpecsCard extends StatelessWidget {
  String title;
  String value;
  String unit;

  SpecsCard(this.title, this.value, this.unit, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.cardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                title,
                style: getRegularStyle(
                    fontSize: FontSize.f16, color: ColorManager.textColorLight),
              )),
              Space(),
              Text(
                value,
                style: getMediumStyle(
                    color: ColorManager.primary, fontSize: FontSize.f18),
              ),
              Text(
                unit,
                style: getRegularStyle(
                    fontSize: FontSize.f16, color: ColorManager.textColorLight),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageText extends StatelessWidget {
  String iconData;
  String text;
  double size;
  double paddingValue;

  ImageText(
      {required this.iconData,
      required this.text,
      this.size = 23,
      this.paddingValue = 0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(paddingValue),
          child: Image.asset(iconData,
              width: size, height: size, fit: BoxFit.fill),
        ),
        Text(
          '   $text',
          style: getRegularStyle(color: ColorManager.textColorLight),
        ),
      ],
    );
  }
}

class IconText extends StatelessWidget {
  String text;
  IconData iconData;

  IconText({required this.text,required this.iconData, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: ColorManager.primary,
          size: 23,
        ),
        Space(),
        Text(
          text,
          style: getRegularStyle(color: ColorManager.textColorLight),
        ),
      ],
    );
  }
}

class RowWith2Texts extends StatelessWidget {
  String title, value;
  double fontSize;
  RowWith2Texts({required this.title, required this.value, this.fontSize = FontSize.f16, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getRegularStyle(color: ColorManager.textColorLight, fontSize: fontSize),
        ),
        Text(
          value,
          style: getRegularStyle(color: ColorManager.primaryLight, fontSize:fontSize),
        )
      ],
    );
  }
}

