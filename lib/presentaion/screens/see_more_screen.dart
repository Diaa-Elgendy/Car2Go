import 'package:car2go/data/car_details.dart';
import 'package:car2go/data/categories.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:flutter/material.dart';

class SeeMoreScreen extends StatefulWidget {
  String title;
  List<CarDetails> carsList;

  SeeMoreScreen({required this.title, required this.carsList, Key? key})
      : super(key: key);

  @override
  State<SeeMoreScreen> createState() => _SeeMoreScreenState();
}

class _SeeMoreScreenState extends State<SeeMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: getAppBarStyle(),
        ),
      ),
      body: Column(
        children: [
          Space(),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                  left: AppPadding.screenPadding,
                  right: AppPadding.screenPadding),
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: ColorManager.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.borderRadius)
                    ),
                  ),
                  child: Text(
                    dummyCategories[index].name,
                    style: getMediumStyle(),
                  ),
                );
              },
              itemCount: dummyCategories.length,
              separatorBuilder: (BuildContext context, int index) =>
                  Space(height: 5),
            ),
          ),
          Space(),
          ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(
                left: AppPadding.screenPadding,
                right: AppPadding.screenPadding,
                bottom: AppPadding.screenPadding),
            itemBuilder: (context, index) {
              return ListItem(carDetails: widget.carsList[index]);
            },
            itemCount: widget.carsList.length,
            separatorBuilder: (BuildContext context, int index) =>
                Space(height: 5),
          ),
        ],
      ),
    );
  }
}
