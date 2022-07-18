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



