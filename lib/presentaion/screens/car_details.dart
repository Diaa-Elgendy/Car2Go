import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Porche', style: getMediumStyle(fontSize: FontSize.f16, color: ColorManager.primary),),
            Text('718 Cayman - 2020', style: getMediumStyle(fontSize: FontSize.f14, color: ColorManager.textColorLight),),
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
          Space(),
          Text('Specs', style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f18),),
          Space(),
          SizedBox(
            height: 103,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 100,
                  child: Card(
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.cardPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text('Max Power\n', style: getRegularStyle(fontSize: FontSize.f12),)),
                          Text('230', style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f18),),
                          Text('HP', style: getRegularStyle(fontSize: FontSize.f12), overflow: TextOverflow.ellipsis, maxLines: 1,),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,

                  child: Card(
                    elevation: 1,

                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.cardPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text('0-100 kmh\n', style: getRegularStyle(fontSize: FontSize.f12),)),
                          Text('6.1', style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f18),),
                          Text('Seconds', style: getRegularStyle(fontSize: FontSize.f12), overflow: TextOverflow.ellipsis, maxLines: 1,),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,

                  child: Card(
                    elevation: 1,

                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.cardPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text('Top Speed\n', style: getRegularStyle(fontSize: FontSize.f12),)),
                          Text('300', style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f18),),
                          Text('Km/h', style: getRegularStyle(fontSize: FontSize.f12), overflow: TextOverflow.ellipsis, maxLines: 1,),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,

                  child: Card(
                    elevation: 1,

                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.cardPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text('Motor\n', style: getRegularStyle(fontSize: FontSize.f12),)),
                          Text('2000', style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f18),),
                          Text('CC', style: getRegularStyle(fontSize: FontSize.f12), overflow: TextOverflow.ellipsis, maxLines: 1,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Space(),

        ],
      ),
    );
  }
}


final List<String> imgList = [
  ImageAssets.porscheCayman_1,
  ImageAssets.porscheCayman_2,
  ImageAssets.porscheCayman_3,
];

final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.borderRadius)),
        child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)))
    .toList();
