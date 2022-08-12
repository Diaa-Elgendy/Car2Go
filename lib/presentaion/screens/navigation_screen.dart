import 'package:car2go/presentaion/screens/favourite_screen.dart';
import 'package:car2go/presentaion/screens/home/home_screen.dart';
import 'package:car2go/presentaion/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: false);

  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          FavouriteScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: screenIndex,
        selectedItemColor: ColorManager.primary,
        backgroundColor: ColorManager.white,
        elevation: AppSize.appBarElevation,
        onTap: (value) {
          setState(() {
            screenIndex = value;
            pageController.animateToPage(screenIndex,
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate);
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
