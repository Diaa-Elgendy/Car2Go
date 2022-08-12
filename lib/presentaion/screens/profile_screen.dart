import 'package:car2go/data/car_details.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/payment_screen.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: getAppBarStyle(),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text(
                    'Logout',
                    style: getRegularStyle(),
                  ),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                navigateAndFinish(context, const LoginScreen());
              }
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppPadding.screenPadding),
        children: [
          const CircleAvatar(
            maxRadius: 50,
            backgroundColor: ColorManager.primaryLight,
            child: Icon(
              Icons.person,
              size: 60,
              color: ColorManager.white,
            ),
          ),
          Space(),
          Center(
            child: Text(
              'Diaa Elgendy',
              style: getSemiBoldStyle(
                  color: ColorManager.textColor, fontSize: FontSize.f20),
            ),
          ),
          Space(height: 5),
          Center(
            child: Text(
              'Diaaelgendy@gmail.com',
              style: getMediumStyle(
                  color: ColorManager.textColorLight, fontSize: FontSize.f16),
            ),
          ),
          Space(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      '3',
                      style: getSemiBoldStyle(
                          color: ColorManager.textColor,
                          fontSize: FontSize.f20),
                    ),
                  ),
                  Space(height: 5),
                  Center(
                    child: Text(
                      'Cars rented',
                      style: getMediumStyle(
                          color: ColorManager.textColorLight,
                          fontSize: FontSize.f16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
                child: VerticalDivider(
                  color: ColorManager.primary,
                  thickness: 0.5,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      '4.8',
                      style: getSemiBoldStyle(
                          color: ColorManager.textColor,
                          fontSize: FontSize.f20),
                    ),
                  ),
                  Space(height: 5),
                  Center(
                    child: Text(
                      'Rating',
                      style: getMediumStyle(
                          color: ColorManager.textColorLight,
                          fontSize: FontSize.f16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
                child: VerticalDivider(
                  color: ColorManager.primary,
                  thickness: 0.5,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      '3',
                      style: getSemiBoldStyle(
                          color: ColorManager.textColor,
                          fontSize: FontSize.f20),
                    ),
                  ),
                  Space(height: 5),
                  Center(
                    child: Text(
                      'Cars rented',
                      style: getMediumStyle(
                          color: ColorManager.textColorLight,
                          fontSize: FontSize.f16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Space(height: 30),

          //Wallet
          Card(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.cardPadding),
              child: Column(
                children: [
                  Text(
                    'Wallet',
                    style: getMediumStyle(
                        color: ColorManager.textColorLight,
                        fontSize: FontSize.f20),
                  ),
                  Space(),
                  Text(
                    '30,000 LE',
                    style: getMediumStyle(
                        color: ColorManager.textColor, fontSize: FontSize.f26),
                  ),
                  Space(height: 5),
                  Text(
                    'total balance',
                    style: getMediumStyle(color: ColorManager.textColorLight),
                  ),
                  Space(),
                  CustomButton(text: 'Charge Now', function: () {}),
                ],
              ),
            ),
          ),
          Space(height: 30),

          //Rented Card
          HeaderWithDivider(title: 'Your Rented Cars'),
          Space(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListItem(carDetails: cars[index]);
            },
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) =>
                Space(height: 5),
          )
        ],
      ),
    );
  }
}
