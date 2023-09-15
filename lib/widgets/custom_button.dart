import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? bckgrnd, frgrnd;
  final void Function()? onPressed;
  const CustomButton({super.key, this.bckgrnd, this.frgrnd, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: const EdgeInsets.only(bottom: 40),
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: bckgrnd,
            foregroundColor: frgrnd,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Get Started",
              style: TextStyle(fontSize: 20),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
