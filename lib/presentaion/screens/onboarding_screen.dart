import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/home_screen.dart';
import 'package:car2go/presentaion/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: getSemiBoldStyle(fontSize: FontSize.f28),
      bodyTextStyle: getRegularStyle(fontSize: FontSize.f20),
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: ColorManager.offWhite,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: ColorManager.offWhite,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: _buildImage(ImageAssets.logo, 0),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Choose your vehicle",
          body:
          "Get a real offer for your car."
              "Licensed, Bounded and Insured.",
          image: _buildImage(ImageAssets.onboarding1),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Huge database",
          body:
          "Choose your vehicle from a large collection of available cars and companies.",
          image: _buildImage(ImageAssets.onboarding2),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => navigateAndFinish(context, const LoginScreen()),
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Icon(Icons.arrow_back, color: ColorManager.primary),
      next: const Icon(Icons.arrow_forward, color: ColorManager.primary),
      done: Text('Done', style: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.f16)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(AppPadding.cardPadding),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(25.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}


// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset(
//             ImageAssets.onboarding,
//             fit: BoxFit.cover,
//             height: MediaQuery.of(context).size.height,
//           ),
//           Column(
//             children: [
//               const Expanded(
//                 flex: 1,
//                 child: SizedBox(),
//               ),
//               Expanded(
//                 flex: 6,
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.only(bottom: AppPadding.screenPadding),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Image.asset(
//                         ImageAssets.logo,
//                         width: 200,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Get',
//                             style: getSemiBoldStyle(
//                                 color: ColorManager.white, fontSize: 60),
//                           ),
//                           Text(
//                             'Your',
//                             style: getSemiBoldStyle(
//                                 color: ColorManager.white, fontSize: 60),
//                           ),
//                           Text(
//                             'Car Now',
//                             style: getSemiBoldStyle(
//                                 color: ColorManager.white, fontSize: 60),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: AppSize.buttonWidth,
//                         height: AppSize.buttonHeight,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Get Started',
//                             style: getMediumStyle(
//                                 color: ColorManager.white, fontSize: AppSize.buttonFontSize),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
