import 'package:car2go/data/brands.dart';
import 'package:car2go/data/car_details.dart';
import 'package:car2go/data/categories.dart';
import 'package:car2go/presentaion/modules/CarsModule.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/modules/CategoryModule.dart';
import 'package:car2go/presentaion/screens/car_details_screen.dart';
import 'package:car2go/presentaion/screens/home/home_widgets.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/modules/BrandsModule.dart';
import 'package:flutter/material.dart';
import '../../resources/style_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //late CarDetails carDetails;
  late int index;
  List<CategoryModule> categories = <CategoryModule>[
    CategoryModule(categoryName: "nessan", urlImage: ImageAssets.logo),
    CategoryModule(categoryName: "nessan", urlImage: ImageAssets.logo),
    CategoryModule(categoryName: "nessan", urlImage: ImageAssets.logo),
    CategoryModule(categoryName: "nessan", urlImage: ImageAssets.logo),
    CategoryModule(categoryName: "nessan", urlImage: ImageAssets.logo),
    CategoryModule(categoryName: "nessan", urlImage: ImageAssets.logo),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: getAppBarStyle(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppPadding.screenPadding),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Brands',
                style: getMediumStyle(
                    fontSize: FontSize.f20, color: ColorManager.primary),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'see more',
                  style: getMediumStyle(color: ColorManager.textColorLight),
                ),
              ),
            ],
          ),
          Space(),
          SizedBox(
            height: 220,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 1.1,
              children: List.generate(6, (index) {
                return BrandItem(brandImage: dummyBrands[index]);
              }),
            ),
          ),
          Space(
            height: 40
          ),


          HeaderWithDivider(title: 'Categories'),
          Space(
            height: 20,
          ),
          SizedBox(
            height: 245,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              children: List.generate(categories.length, (index) {
                return CategoryItem(category: dummyCategories[index]);
              }),
            ),
          ),
          Space(
            height: 40
          ),

          HeaderWithDivider(title: 'Most Liked Cars'),
          Space(
            height: 20,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListItem(carDetails: cars[index], index: index);
              },
              separatorBuilder: (context, index) => Space(height: 5),
              itemCount: cars.length)
        ],
      ),
    );
  }
}
