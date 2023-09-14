import 'package:ecommerce_app/api_data.dart';
import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:ecommerce_app/constants/app_images.dart';
import 'package:ecommerce_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 250,
          backgroundColor: AppColors.mainBlue,
          title: Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hey, Hammad",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      GestureDetector(
                        child: Stack(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              size: 35,
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
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: TextField(
                    style: TextStyle(color: AppColors.mainFont),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.mainFont,
                      ),
                      filled: true,
                      fillColor: Color(0xff153075),
                      hintText: 'Search Products or store',
                      hintStyle: TextStyle(color: AppColors.descFont),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DELIVERY TO",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: AppColors.descFont),
                          ),
                          Row(
                            children: [
                              Text(
                                "Green Way 3000, Sylhet",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainFont),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.descFont,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WITHIN",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: AppColors.descFont),
                          ),
                          Row(
                            children: [
                              Text(
                                "1 Hour",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainFont),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.descFont,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Slide Tiles
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.black,
                            child: SvgPicture.asset(AppImages.campImage),
                            width: 100,
                            height: 80,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Get",
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.mainFont),
                                ),
                                Text("50% OFF",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.mainFont)),
                                Text("On first 03 orders",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.mainFont)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.descFont,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.black,
                            child: SvgPicture.asset(AppImages.campImage),
                            width: 100,
                            height: 80,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Get",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text("50% OFF",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
                                Text("On first 03 orders",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "346",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                " USD",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          Center(
                            child: Text(
                              " Your total savings",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w100),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.descFont,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "215",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                " HRS",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          Center(
                            child: Text(
                              " Your time saved",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w100),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "Deals on Fruits & Tea",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
                ),
              ),
              Expanded(
                child: Container(
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.mainBlue,
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            ApiData.cartData.add(
                                                ApiData.productData[index]);
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: AppColors.mainFont,
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.amber)),
                                        ),
                                      ),
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
                ),
              )
            ],
          ),
        )),
        bottomNavigationBar: MyNavigationBar());
  }
}
