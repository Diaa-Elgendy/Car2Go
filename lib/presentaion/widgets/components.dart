import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/car_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../data/car_details.dart';

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
      height: 50,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.cardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: getRegularStyle(
                    fontSize: FontSize.f18, color: ColorManager.primary),
              ),
              Space(height: 5),
              Row(
                children: [
                  Text(
                    value,
                    style: getRegularStyle(color: ColorManager.textColorLight),
                  ),
                  Text(
                    ' $unit',
                    style: getRegularStyle(color: ColorManager.textColorLight),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
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

  IconText({required this.text, required this.iconData, super.key});

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

  RowWith2Texts(
      {required this.title,
      required this.value,
      this.fontSize = FontSize.f16,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getRegularStyle(
              color: ColorManager.textColorLight, fontSize: fontSize),
        ),
        Text(
          value,
          style: getRegularStyle(
              color: ColorManager.primaryLight, fontSize: fontSize),
        )
      ],
    );
  }
}

class ListItem extends StatefulWidget {
  CarDetails carDetails;

  ListItem({required this.carDetails, Key? key})
      : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Card(
        child: InkWell(
          onTap: () async {
            await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailsScreen(
                      carDetails: widget.carDetails),
                )).then((value) {
              setState(() {});
            });

            setState(() {
              print('object');
            });
          },
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          splashColor: ColorManager.primaryLight,
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.cardPadding),
            child: Row(
              children: [
                Image.asset(
                  widget.carDetails.coverPhoto,
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
                Space(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.carDetails.company,
                        style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f18),
                      ),
                      Space(height: 5),
                      Text(
                        widget.carDetails.model,
                        style:
                            getRegularStyle(color: ColorManager.textColorLight),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.carDetails.category.name,
                        style:
                        getRegularStyle(color: ColorManager.textColorLight),
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.carDetails.priceForDay} EGP/Day',
                            style: getRegularStyle(color: ColorManager.primary),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.carDetails.favourite =
                                      !widget.carDetails.favourite;
                                  if (widget.carDetails.favourite){
                                    for(int i =0; i<cars.length;i++){
                                      if (cars[i].id== widget.carDetails.id) {
                                        favourites.add(cars[i]);
                                        break;
                                      }
                                    }

                                  }else{
                                    for(int i =0; i<favourites.length;i++){
                                      if (favourites[i].id == widget.carDetails.id) {
                                        favourites.remove(favourites[i]);
                                        break;
                                      }
                                    }
                                  }
                                });
                              },
                              icon: Icon(
                                widget.carDetails.favourite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: ColorManager.primary,
                              ),
                              constraints: const BoxConstraints(
                                maxHeight: 30,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
