import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:car2go/business_logic/functions.dart';
import 'package:car2go/data/car_details.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/payment_screen.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarDetailsScreen extends StatefulWidget {
  CarDetails carDetails;

  CarDetailsScreen({required this.carDetails, super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetailsScreen> {
  String startDate = DateTime.now()
          .add(const Duration(days: 1))
          .toString()
          .substring(0, 10),
      endDate = DateTime.now()
          .add(const Duration(days: 3))
          .toString()
          .substring(0, 10);

  String rentDuration = '2';
  int? cost;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.carDetails.images
        .map((item) => ClipRRect(
        borderRadius:
        const BorderRadius.all(Radius.circular(AppSize.borderRadius)),
        child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              widget.carDetails.company,
              style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f20),
            ),
            Text(
              widget.carDetails.model,
              style: getMediumStyle(
                  fontSize: FontSize.f18, color: ColorManager.textColorLight,),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppPadding.screenPadding),
        children: [
          SizedBox(
            height: 200,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
          Space(height: 25),
          HeaderWithDivider(title: 'Specs'),
          Space(),
          SizedBox(
            height: 90,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SpecsCard(
                    'Max Power', widget.carDetails.specs.maxPower.toString(), 'HP'),
                SpecsCard(
                    'Max Torque', widget.carDetails.specs.maxTorque.toString(), 'Nm'),
                SpecsCard('Top Speed', widget.carDetails.specs.topSpeed.toString(),
                    'Km/H'),
                SpecsCard(
                    '0-100 Km/H',
                    widget.carDetails.specs.zeroToHundredSpeed.toString(),
                    'Seconds'),

                SpecsCard('Motor Size',
                    widget.carDetails.specs.motorSize.toString(), 'CC'),

              ],
            ),
          ),
          Space(height: 35),
          HeaderWithDivider(title: 'Car Info'),
          Space(),
          IconText(
            iconData: Icons.person_outline,
            text: ' Passengers: ${widget.carDetails.carInfo.numberOfPassengers}',
          ),
          Space(height: 10),
          ImageText(
            iconData: ImageAssets.carDoor,
            text: 'Doors: ${widget.carDetails.carInfo.numberOfDoors}',
            size: 21,
            paddingValue: 4,
          ),
          Space(height: 10),
          ImageText(
            iconData: ImageAssets.motor,
            text: ' Transmission: ${widget.carDetails.carInfo.transmission}',
            paddingValue: 2,
          ),
          Space(height: 35),
          HeaderWithDivider(title: 'Capacities'),
          Space(),
          ImageText(
            iconData: ImageAssets.capacity,
            text: '  Luggage Volume: ${widget.carDetails.capacity.luggageSize} L',
            size: 20,
            paddingValue: 3,
          ),
          Space(height: 10),
          ImageText(
              iconData: ImageAssets.fuelTank,
              text:
                  ' Fuel Tank Volume: ${widget.carDetails.capacity.fuelTankSize} L',
              size: 23,
              paddingValue: 3),
          Space(height: 35),
          HeaderWithDivider(title: 'Dimensions'),
          Space(),
          IconText(
            iconData: Icons.width_wide_outlined,
            text: '  Width: ${widget.carDetails.body.width} m',
          ),
          Space(height: 10),
          ImageText(
            iconData: ImageAssets.wheel,
            text: '   Wheel Base: ${widget.carDetails.body.wheelBase} m',
            size: 20,
            paddingValue: 1,
          ),
          Space(height: 10),
          ImageText(
              iconData: ImageAssets.weight,
              text: '   Max Load: ${widget.carDetails.body.maxLoad} Kg'),
          Space(height: 10),
          ImageText(
              iconData: ImageAssets.weight,
              text: '   Weight: ${widget.carDetails.body.carWeight} Kg'),
          Space(height: 35),
          HeaderWithDivider(title: 'Pickup Location'),
          Space(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.cardPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Location:',
                        style:
                            getRegularStyle(color: ColorManager.textColorLight),
                      ),
                      Text(
                        'Haram St, Giza, Egypt',
                        style:
                            getRegularStyle(color: ColorManager.primaryLight),
                      ),
                    ],
                  ),
                  Space(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Start Date:',
                        style:
                            getRegularStyle(color: ColorManager.textColorLight),
                      ),
                      Text(
                        startDate,
                        style:
                            getRegularStyle(color: ColorManager.primaryLight),
                      ),
                    ],
                  ),
                  Space(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'End Date:',
                        style:
                            getRegularStyle(color: ColorManager.textColorLight),
                      ),
                      Text(
                        endDate,
                        style:
                            getRegularStyle(color: ColorManager.primaryLight),
                      ),
                    ],
                  ),
                  Space(),
                  CustomButton(
                    function: () {
                      selectTimeRange(context: context).then((value) {
                        //rentDuration = value[0].s
                        setState(() {
                          rentDuration = value[1]
                              .subtract(Duration(days: value[0]!.day))
                              .toString()
                              .substring(8, 10);
                          startDate = value[0].toString().substring(0, 10);
                          endDate = value[1].toString().substring(0, 10);
                          cost =
                              widget.carDetails.priceForDay * int.parse(rentDuration);
                        });
                      });


                      print(cost);
                    },
                    text: 'Change Time Range',
                    fontSize: FontSize.f16,
                    width: 190,
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          Space(height: 35),
          HeaderWithDivider(title: 'Checkout'),
          Space(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.cardPadding),
              child: Column(
                children: [
                  RowWith2Texts(title: 'Duration', value: "$rentDuration days"),
                  Space(),
                  RowWith2Texts(
                      title: 'Cost/Day',
                      value: '${widget.carDetails.priceForDay} EGP'),
                  Space(),
                  if (cost != null)...[
                    RowWith2Texts(title: 'Total Cost', value: '$cost EGP'),
                    Space(),
                  ],
                  CustomButton(
                    function: () {
                      navigateTo(
                          context: context, widget: PaymentScreen(cost: cost!));
                    },
                    text: 'Continue To Payment',
                    fontSize: FontSize.f16,
                    width: 190,
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.carDetails.favourite = !widget.carDetails.favourite;
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
        elevation: AppSize.appBarElevation,
        backgroundColor: ColorManager.primary,
        child: Icon(
            widget.carDetails.favourite
                ? Icons.favorite
                : Icons.favorite_border_outlined,
            size: 24),
      ),
    );
  }
}

