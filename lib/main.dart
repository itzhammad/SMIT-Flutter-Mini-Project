import 'package:ecommerce_app/screens/category/category.dart';
import 'package:ecommerce_app/screens/home/home_view.dart';
import 'package:ecommerce_app/screens/onboarding/onboarding_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Manrope',
      ),
      debugShowCheckedModeBanner: false,
      //home: OnboardingScreens(),
      home: CategoryView(),
    );
  }
}
