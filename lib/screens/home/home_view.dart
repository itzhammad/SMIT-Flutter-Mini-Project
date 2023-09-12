import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:ecommerce_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

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
                                  "0",
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
            children: [
              Container(
                height: 200,
                color: Colors.red,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Hello World"),
                      );
                    }),
              )
            ],
          ),
        )),
        bottomNavigationBar: MyNavigationBar());
  }
}
