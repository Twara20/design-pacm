import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../util/bootomappbar_indicator.dart';
import '../util/common_account_setting_content.dart';

class AccountSetting extends GetView<AccountSettingController> {
  static const pageId = '/AccountSetting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        appBar: AppBar(
          elevation: 1,
          toolbarHeight: 60,
          flexibleSpace: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 80, left: 10),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/back_arrow.png",
                      color: Color(0xff383333)
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 18, fontFamily: "semibold", color: Color(0xff383333)),
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Center(
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "regular",
                          color: Color(0xff666666),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 270,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Column(
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonAcccountSettingContent(title: "Name",text: "John White",),
                      InkWell(
                        onTap: (){
                          Get.offAndToNamed(EditNameScreen.pageId);
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              fontFamily: "regular",
                              color: Color(0xff660066),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonAcccountSettingContent(title: "Phone",text: "0400 000 000",),
                          Text(
                            "Edit",
                            style: TextStyle(
                                fontFamily: "regular",
                                color: Color(0xff660066),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonAcccountSettingContent(title: "Email",text: "johnwhite@pacm.com.au",),
                          Text(
                            "Edit",
                            style: TextStyle(
                                fontFamily: "regular",
                                color: Color(0xff660066),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonAcccountSettingContent(title: "Password",text: "***********",),
                          Text(
                            "Edit",
                            style: TextStyle(
                                fontFamily: "regular",
                                color: Color(0xff660066),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),


          ]),
                ),
              )
            ),

            Container(
              height: 135,
              color: Colors.white,

              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonAcccountSettingContent(title: "Company",text: "PACM",),
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontFamily: "regular",
                              color: Color(0xff660066),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
     SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonAcccountSettingContent(title: "Position",text: "Electrical Engineer",),
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontFamily: "regular",
                              color: Color(0xff660066),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),

            )
              ]
              ),
        ),
        bottomNavigationBar: BottomIndicator(),

    );

    throw UnimplementedError();
  }
}
