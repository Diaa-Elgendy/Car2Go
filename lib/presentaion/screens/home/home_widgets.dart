import 'package:car2go/data/categories.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/style_manager.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        child: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.cardPadding),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    category.image,
                    height: 100,
                  ),
                  Text(
                    category.name,
                    style: getMediumStyle(
                      fontSize: FontSize.f20,
                      color: ColorManager.primary,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class BrandItem extends StatelessWidget {
  String brandImage;
  BrandItem({Key? key, required this.brandImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(AppSize.borderRadius),

        child: Padding(
          padding: const EdgeInsets.all(AppPadding.cardPadding),
          child: Image.asset(
            brandImage,
          ),
        ),
      ),
    );
  }
}
