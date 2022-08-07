import '../presentaion/resources/assets_manager.dart';

class CarDetails {
  int id;
  String company;
  String model;
  Specs specs;
  String coverPhoto;
  CarInfo carInfo;
  Capacity capacity;
  Body body;
  List<String> extras;
  List<String> images;
  int priceForDay;
  bool favourite;

  CarDetails({
    required this.id,
    required this.company,
    required this.model,
    required this.coverPhoto,
    required this.specs,
    required this.carInfo,
    required this.capacity,
    required this.body,
    required this.extras,
    required this.images,
    required this.priceForDay,
    required this.favourite,
  });
}

class Specs {
  int maxPower;
  int maxTorque;
  int topSpeed;
  int motorSize;
  double zeroToHundredSpeed;

  Specs(
      {required this.maxPower,
      required this.maxTorque,
      required this.topSpeed,
      required this.motorSize,
      required this.zeroToHundredSpeed});
}

class CarInfo {
  int numberOfPassengers;
  int numberOfDoors;
  String transmission;

  CarInfo(
      {required this.numberOfPassengers,
      required this.numberOfDoors,
      required this.transmission});
}

class Capacity {
  int fuelTankSize;
  int luggageSize;

  Capacity({required this.fuelTankSize, required this.luggageSize});
}

class Body {
  double width;
  double wheelBase;
  double carWeight;
  double maxLoad;

  Body(
      {required this.width,
      required this.wheelBase,
      required this.carWeight,
      required this.maxLoad});
}


List<CarDetails> favourites = [];

List<CarDetails> cars = [
  CarDetails(
    id: 1,
    company: 'Porsche',
    model: '718 Cayman - 2020',
    coverPhoto: ImageAssets.porscheCaymanCover,
    specs: Specs(
        maxPower: 350,
        maxTorque: 500,
        topSpeed: 300,
        motorSize: 2000,
        zeroToHundredSpeed: 4.3),
    carInfo: CarInfo(
        numberOfPassengers: 2, numberOfDoors: 2, transmission: 'Automatic'),
    capacity: Capacity(fuelTankSize: 80, luggageSize: 67),
    body: Body(width: 2.3, maxLoad: 2, carWeight: 2300, wheelBase: 400),
    favourite: false,
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
  ),
  CarDetails(
    id: 2,

    company: 'Kia',
    model: 'Cerato - 2022',
    coverPhoto: ImageAssets.kiaCeratoCover,

    specs: Specs(
        maxPower: 170,
        maxTorque: 280,
        topSpeed: 250,
        motorSize: 1600,
        zeroToHundredSpeed: 10),
    carInfo: CarInfo(
        numberOfPassengers: 4, numberOfDoors: 2, transmission: 'Automatic'),
    capacity: Capacity(fuelTankSize: 80, luggageSize: 67),
    body: Body(width: 2.3, wheelBase: 2, carWeight: 2300, maxLoad: 400),
    favourite: false,
    extras: [
      'Bose Sound System',
      'Android Auto',
      'Apple Car Play',
    ],
    images: [
      ImageAssets.kiaCerato_1,
      ImageAssets.kiaCerato_2,
      ImageAssets.kiaCerato_3,
    ],
    priceForDay: 300,
  ),
  CarDetails(
    id: 3,

    company: 'Toyota',
    model: 'Corolla - 2022',
    coverPhoto: ImageAssets.toyotaCorollaCover,

    specs: Specs(
        maxPower: 170,
        maxTorque: 280,
        topSpeed: 250,
        motorSize: 1600,
        zeroToHundredSpeed: 10),
    carInfo: CarInfo(
        numberOfPassengers: 4, numberOfDoors: 2, transmission: 'Automatic'),
    capacity: Capacity(fuelTankSize: 80, luggageSize: 67),
    body: Body(width: 2.3, wheelBase: 2, carWeight: 2300, maxLoad: 400),
    favourite: false,
    extras: [
      'Bose Sound System',
      'Android Auto',
      'Apple Car Play',
    ],
    images: [
      ImageAssets.toyotaCorolla_1,
      ImageAssets.toyotaCorolla_2,
      ImageAssets.toyotaCorolla_3,
    ],
    priceForDay: 350,
  ),
  CarDetails(
    id: 4,

    company: 'Ford',
    model: 'Mustang GT - 2022',
    coverPhoto: ImageAssets.fordMustangCover,

    specs: Specs(
        maxPower: 300,
        maxTorque: 400,
        topSpeed: 350,
        motorSize: 2500,
        zeroToHundredSpeed: 10),
    carInfo: CarInfo(
        numberOfPassengers: 2, numberOfDoors: 2, transmission: 'Automatic'),
    capacity: Capacity(fuelTankSize: 80, luggageSize: 67),
    body: Body(width: 2.3, wheelBase: 2, carWeight: 2300, maxLoad: 400),
    favourite: false,
    extras: [
      'Bose Sound System',
      'Android Auto',
      'Apple Car Play',
    ],
    images: [
      ImageAssets.fordMustang_1,
      ImageAssets.fordMustang_2,
      ImageAssets.fordMustang_3,
    ],
    priceForDay: 580,
  ),
];

CarDetails porscheCayman = CarDetails(
  id: 1,

  company: 'Porsche',
  model: '718 Cayman - 2020',
  coverPhoto: ImageAssets.porscheCaymanCover,

  specs: Specs(
      maxPower: 350,
      maxTorque: 500,
      topSpeed: 300,
      motorSize: 2000,
      zeroToHundredSpeed: 4.3),
  carInfo: CarInfo(
      numberOfPassengers: 2, numberOfDoors: 2, transmission: 'Automatic'),
  capacity: Capacity(fuelTankSize: 80, luggageSize: 67),
  body: Body(width: 2.3, maxLoad: 2, carWeight: 2300, wheelBase: 400),
  favourite: false,
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
