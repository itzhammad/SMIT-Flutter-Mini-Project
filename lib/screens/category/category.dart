import 'package:ecommerce_app/api_data.dart';
import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:ecommerce_app/widgets/custom_tile.dart';
import 'package:ecommerce_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: AppColors.mainBlue,
        title: SizedBox(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hey, Hammad",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.search,
                            size: 35,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.shopping_cart,
                                size: 35,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 10,
                                  child: Text(
                                    "${ApiData.cartData.length}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.mainFont,
                                      fontSize: 10,
                                    ),
                                  ),
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
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  "Shop",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w100,
                      color: AppColors.mainFont),
                ),
              ),
              Container(
                child: Text(
                  "By Category",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainFont),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: CustomProductTile(
        categories: ApiData.categoryData,
      )),
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
