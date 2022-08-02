import '../presentaion/resources/assets_manager.dart';

class CarDetails {
  Specs specs;
  CarInfo carInfo;
  Capacity capacity;
  Body body;
  List<String> extras;
  List<String> images;
  int priceForDay;

  CarDetails({
    required this.specs,
    required this.carInfo,
    required this.capacity,
    required this.body,
    required this.extras,
    required this.images,
    required this.priceForDay,
  });
}

class Specs {
  int maxPower;
  int maxTorque;
  int topSpeed;
  int motorSize;
  double zeroToHundredSpeed;

  Specs(this.maxPower, this.maxTorque, this.topSpeed, this.motorSize,
      this.zeroToHundredSpeed);
}

class CarInfo {
  int numberOfPassengers;
  int numberOfDoors;
  String transmission;

  CarInfo(this.numberOfPassengers, this.numberOfDoors, this.transmission);
}

class Capacity {
  int fuelTankSize;
  int luggageSize;

  Capacity(this.fuelTankSize, this.luggageSize);
}

class Body {
  double width;
  double wheelBase;
  double carWeight;
  double maxLoad;

  Body(this.width, this.wheelBase, this.carWeight, this.maxLoad);
}

CarDetails porscheCayman = CarDetails(
  specs: Specs(350, 500, 300, 2000, 4.3),
  carInfo: CarInfo(2, 2, 'Automatic'),
  capacity: Capacity(80, 67),
  body: Body(2.3, 2, 2300, 400),
  extras: [
    'Bose Sound System',
    'Android Auto',
    'Apple Car Play',
  ],
  images: [
    ImageAssets.porscheCayman_1,
    ImageAssets.porscheCayman_2,
    ImageAssets.porscheCayman_3,
  ],
  priceForDay: 600,
);
