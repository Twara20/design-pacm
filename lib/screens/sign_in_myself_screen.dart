
import 'package:design_pacm/controller/sign_in_myself_controller.dart';
import 'package:design_pacm/screens/login_screen.dart';
import 'package:design_pacm/util/common_button.dart';
import 'package:design_pacm/util/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../model/api_signinscreen_get.dart';

import '../util/toggle_switch.dart';

class SignInScreen extends GetView<SignInController> {
  static const pageId = "/SignInScreen";
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  Icon(Icons.arrow_back_ios,size: 22,),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/back_arrow.png",
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(fontSize: 20, fontFamily: "semibold"),
                    )
                  ],
                ),
                Center(child: Image.asset("assets/images/jw.png")),
                Center(
                  child: Text("John White",
                      style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 22,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text("Electrical Engineer, PACM",
                      style: TextStyle(
                          color: Color(0xff717171),
                          fontSize: 14,
                          fontFamily: "regular",
                          fontWeight: FontWeight.w500)),
                ),

                SizedBox(
                  height: 40,
                ),

                CustomSwitchTab(
                  tabController: controller.tabController,
                  labelcolor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  boxDecorationColor: Colors.purple,
                  text1: "Sign In Myself",
                  text2: "Sign In Guest",
                ),

                SizedBox(
                  height: 30,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold,
                          color: Color(0xff444444)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownTextField(
                      hintText: "Select Project",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Select project");
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Estimated Time On Site",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold,
                          color: Color(0xff444444)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownTextField(
                      hintText: "Select estimated time",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Select estimated time");
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    InkWell(
                      onTap: () {
                        RemotServices().fetchGet();
                        if (_dropdownFormKey.currentState!.validate()) {
                          print("excellent");
                        }
                      },
                      child: CommonButton(
                        text: "Proceed",
                        height: 45,
                        width: 350,
                        borderRadius: BorderRadius.circular(10),
                        fillcolor: Color(0xff660066),
                        style: TextStyle(
                            color: Colors.white, fontFamily: "regular"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Get.offAndToNamed(LoginScreen.pageId);
                      },
                      child: CommonButton(
                        text: "Cancel",
                        height: 45,
                        width: 350,
                        borderRadius: BorderRadius.circular(10),
                        fillcolor: Color(0xfff2e2ee),
                        style: TextStyle(
                            color: Colors.purple,
                            fontFamily: "regular",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      "06:30am, 25 January 2022",
                      style:
                          TextStyle(fontFamily: "regular", color: Colors.grey),
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }

  void setState(Null Function() param0) {}
}
