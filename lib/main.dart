import 'package:car2go/presentaion/resources/theme_manager.dart';
import 'package:car2go/presentaion/screens/car_details.dart';
import 'package:car2go/presentaion/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:car2go/presentaion/screens/car_details.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: const CarDetails(),
    );
  }
}

