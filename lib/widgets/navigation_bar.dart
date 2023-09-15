import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/screens/category/category.dart';
import 'package:ecommerce_app/screens/home/home_view.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  // final screens = [HomeView(), OnboardingScreens()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ));
          },
          icon: const Icon(
            Icons.home_filled,
            size: 30,
            color: Colors.amber,
          )),
      IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryView(),
                ));
          },
          icon: const Icon(
            Icons.category_outlined,
            size: 30,
            color: Colors.amber,
          )),
      IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ));
          },
          icon: const Icon(
            Icons.favorite_outlined,
            size: 30,
            color: Colors.amber,
          )),
      IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ));
          },
          icon: const Icon(
            Icons.more_vert_outlined,
            size: 30,
            color: Colors.amber,
          )),
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
