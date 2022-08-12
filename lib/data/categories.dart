import 'package:car2go/business_logic/enums.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class Category{
  String image;
  String name;
  CarType type;
  Category({required this.image, required this.name, required  this.type});
}
List<Category> dummyCategories = [
  Category(image: ImageAssets.sedan, name: 'Sedan', type: CarType.sedan),
  Category(image: ImageAssets.coupe, name: 'Coupe', type: CarType.coupe),
  Category(image: ImageAssets.suv, name: 'SUV', type: CarType.suv),
  Category(image: ImageAssets.crossover, name: 'Crossover', type: CarType.crossover),
  Category(image: ImageAssets.hatchback, name: 'Hatchback', type: CarType.minivan),
  Category(image: ImageAssets.roadster, name: 'Roadster', type: CarType.roadster),
];