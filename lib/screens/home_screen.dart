import 'package:design_pacm/controller/home_controller.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:design_pacm/util/bootomappbar_indicator.dart';
import 'package:design_pacm/util/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../util/bottom_appbar.dart';
import '../util/bottom_appbar_icon.dart';

class HomeScreen extends GetView<HomeController> {
  static const pageId = "/HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/home_icon.png"),
                        Image.asset("assets/images/search.png")
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Morning, John",
                      style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          fontFamily: "regular"),
                    ),
                    Text(
                      "what would you like to do today?",
                      style: TextStyle(
                          color: Color(0xff454545),
                          fontFamily: "regular",
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                            height: 200,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sign In",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "regular",
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff454545)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                       Get.offAndToNamed(LoginScreen.pageId);
                                    },
                                    child: CommonButton(
                                      text: "Sign In Myself",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "regular",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      height: 45,
                                      width: 260,
                                      borderRadius: BorderRadius.circular(10),
                                      fillcolor: Color(0xff14CC8A),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: CommonButton(
                                      text: "Sign In Guest",
                                      style: TextStyle(
                                          color: Color(0xff454545),
                                          fontFamily: "regular",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      height: 45,
                                      width: 260,
                                      borderRadius: BorderRadius.circular(10),
                                      fillcolor: Color(0xffe3f5ef),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Active Sign Ons",
                      style: TextStyle(
                          fontSize: 20,
                          // color: Color(0xff454545),
                          fontFamily: "regular",
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Review All",
                      style:
                          TextStyle(color: Colors.blue, fontFamily: "regular"),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Image.asset(
                        "assets/images/sj.png",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Card(
                        child: SizedBox(
                          width: 242,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:5,vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Samantha Johnson",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff454545),
                                      fontFamily: "regular",
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "EST06572 | Cultana Traning Area",
                                  style: TextStyle(
                                      fontFamily: "regular",
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w500),
                                ),

                                // SizedBox(height: 5,),
                                Text(
                                  "07:00 yesterday - now",
                                  style: TextStyle(
                                      fontFamily: "regular",
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonButton(
                                      text: "Working",
                                      style: TextStyle(
                                          fontFamily: "regular",
                                          fontSize: 12,
                                          color: Colors.white),
                                      height: 22,
                                      width: 95,
                                      borderRadius: BorderRadius.circular(5),
                                      fillcolor: Color(0xffeb5a46),
                                    ),
                                    // SizedBox(width: 105,),
                                    Text(
                                      "Sign Out >",
                                      style: TextStyle(
                                        color: Color(0xffeb5a46),
                                        fontSize: 15,
                                        fontFamily: "regular",
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "All Projects",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                        color: Color(0xff454545)),
                  ),
                ),
              ),
              Divider(
                color: Colors.black45,
              ),

            ],

          ),
        ),

      ),
      //bottomNavigationBar: BottomNavigation(),
      // bottomNavigationBar: Bottom(),
      bottomNavigationBar: BottomIndicator(),

    );


    throw UnimplementedError();
  }

}

