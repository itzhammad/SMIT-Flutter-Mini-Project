import 'package:ecommerce_app/api_data.dart';
import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  final String categoryName;
  const ProductsView({super.key, required this.categoryName});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10), // Adjust margin as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Make it circular
                        color: Color(0xffF8F9FB), // Background color
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Handle back button press
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      widget.categoryName,
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 35,
                                color: Colors.black,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  child: Text(
                                    "${ApiData.cartData.length}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.mainFont,
                                      fontSize: 10,
                                    ),
                                  ),
                                  radius: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(child: Text("Prodcuts page")),
    );
  }
}
