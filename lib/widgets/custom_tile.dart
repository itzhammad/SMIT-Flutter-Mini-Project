import 'package:ecommerce_app/constants/app_images.dart';
import 'package:flutter/material.dart';

class CustomProductTile extends StatefulWidget {
  final List categories;
  const CustomProductTile({super.key, required this.categories});

  @override
  State<CustomProductTile> createState() => _CustomProductTileState();
}

class _CustomProductTileState extends State<CustomProductTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GridView.builder(
          itemCount: widget.categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xffE0E2EE),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.cartImage,
                      height: 120,
                      width: 120,
                    ),
                    Text(
                      widget.categories[index]['title'],
                      softWrap: true,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "(${widget.categories[index]['subtitle']})",
                      softWrap: true,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
