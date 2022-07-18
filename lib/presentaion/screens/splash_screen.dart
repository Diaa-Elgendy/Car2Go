import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(ImageAssets.logo, width: 250),
      nextScreen: const OnBoardingScreen(),
      backgroundColor: ColorManager.offWhite,
      centered: true,
      duration: 2000,
      splashTransition: SplashTransition.slideTransition,
      animationDuration: const Duration(milliseconds: 1500),
      splashIconSize: 170,
    );
  }
}
