import 'package:flutter/material.dart';

import '../../data/car_details.dart';
import '../resources/style_manager.dart';
import '../resources/values_manager.dart';
import '../widgets/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: getAppBarStyle(),
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.only(left: AppPadding.screenPadding,right: AppPadding.screenPadding,bottom: AppPadding.screenPadding),
          itemBuilder: (context, index) => FavouriteItem(carDetails: cars[index], index: index),
          separatorBuilder: (context, index) => Space(height: 5),
          itemCount: cars.length),
    );
  }
}
