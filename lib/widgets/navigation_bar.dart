import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/screens/home/home_view.dart';
import 'package:ecommerce_app/screens/onboarding/onboarding_screens.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  final screens = [HomeView(), OnboardingScreens()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home_filled,
        size: 30,
        color: Colors.amber,
      ),
      Icon(
        Icons.category_outlined,
        color: Colors.amber,
        size: 30,
      ),
      Icon(
        Icons.favorite_outlined,
        color: Colors.amber,
        size: 30,
      ),
      Icon(
        color: Colors.amber,
        Icons.more_vert_outlined,
        size: 30,
      ),
    ];
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.black,
      items: items,
      height: 70,
      index: index,
      onTap: (index) => setState(
        () => this.index = index,
      ),
    );
  }
}
