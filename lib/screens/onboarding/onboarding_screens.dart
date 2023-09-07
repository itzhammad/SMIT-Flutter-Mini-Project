import 'package:ecommerce_app/screens/home/home_view.dart';
import 'package:ecommerce_app/screens/onboarding/widgets/custom_screen.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [
              CustomScreen(
                pageNum: "one",
                index: currentPage,
              ),
              CustomScreen(
                pageNum: "two",
                index: currentPage,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeView(),
                ));
          },
          bckgrnd: Colors.white,
          frgrnd: Colors.black,
        ));
  }
}
