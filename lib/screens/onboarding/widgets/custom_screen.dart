import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomScreen extends StatelessWidget {
  final String pageNum;
  final int index;
  const CustomScreen({super.key, required this.pageNum, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.mainBlue,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 42, top: 33, right: 39),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your holiday  ",
                  style: TextStyle(
                      fontSize: 35,
                      color: AppColors.mainFont,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "shopping",
                  style: TextStyle(
                      fontSize: 35,
                      color: AppColors.mainFont,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "delivered to Screen",
                  style: TextStyle(
                      fontSize: 35,
                      color: AppColors.mainFont,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      pageNum,
                      style: TextStyle(
                          fontSize: 35,
                          color: AppColors.mainFont,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      child: SvgPicture.asset(
                        "assets/icons/camp.svg",
                        height: 50,
                        width: 50,
                      ),
                      // const Icon(
                      //   Icons.facebook,
                      //   color: Colors.white,
                      // ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "There's something for everyone to enjoy with Sweet Shop  ",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.descFont,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Favourites Screen ${pageNum == "one" ? "1" : "2"}",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.descFont,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  //color: Colors.yellow,
                  child: Row(
                    children: [
                      index == 0
                          ? Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            )
                          : Container(
                              width: 30,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xffB2BBCE),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                      SizedBox(
                        width: 10,
                      ),
                      index == 1
                          ? Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            )
                          : Container(
                              width: 30,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xffB2BBCE),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    child: Image.asset(
                      "assets/images/cart_gif.gif",
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
