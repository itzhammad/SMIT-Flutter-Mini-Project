import 'package:ecommerce_app/api_data.dart';
import 'package:ecommerce_app/constants/app_images.dart';
import 'package:flutter/material.dart';

class CustomProductTile extends StatefulWidget {
  const CustomProductTile({super.key});

  @override
  State<CustomProductTile> createState() => _CustomProductTileState();
}

class _CustomProductTileState extends State<CustomProductTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GridView.builder(
          itemCount: ApiData.productData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xffE0E2EE),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        AppImages.cartImage,
                        height: 120,
                        width: 120,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.amber)),
                        ),
                      )
                    ],
                  ),
                  Text(
                    ApiData.productData[index]['title'],
                    softWrap: true,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "(${ApiData.productData[index]['subtitle']})",
                    softWrap: true,
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Rs. ${ApiData.productData[index]['price']}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
