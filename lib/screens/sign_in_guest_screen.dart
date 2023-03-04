

import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/model/api_login_post.dart';
import 'package:design_pacm/util/common_signin_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../model/api_sign_in_guest_post.dart';
import '../util/common_button.dart';
import '../util/dropdown.dart';
import '../util/toggle_switch.dart';

class SignInGuest extends GetView<SignInGuestController> {
  static const pageId = '/SignInGuest';


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Form(
                  key: _formKey,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First Name",
                      style: TextStyle(
                          fontFamily: "regular",
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CommonSignInTextField(
                      controller: controller.firstNameController.value,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter First Name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Last Name",
                      style: TextStyle(
                          fontFamily: "regular",
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CommonSignInTextField(obscureText: false,
                      controller:controller.lastNameController.value ,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Last Name";
                        }
                        return null;
                      },),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Company",
                      style: TextStyle(
                          fontFamily: "regular",
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CommonSignInTextField(obscureText: false,
                        controller: controller.companyNameController.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Company Name";
                        }
                        return null;
                      },),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Guest Type",
                          style: TextStyle(
                              fontFamily: "regular",
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          "assets/images/ques_circle.png",
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    DropdownTextField(),
                    SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: (){
                        if(_formKey.currentState!.validate()){

                           // fetchPostGuest(
                           //     controller.firstNameController.value.text,
                           //     controller.lastNameController.value.text,
                           //     controller.companyNameController.value.text
                           //
                           // );
                          print("success");
                        }

                      },
                      child: CommonButton(
                        text: "Proceed",
                        height: 50,
                        width: 350,
                        borderRadius: BorderRadius.circular(10),
                        fillcolor: Color(0xff660066),
                        style:
                            TextStyle(color: Colors.white, fontFamily: "regular"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CommonButton(
                      text: "Cancel",
                      height: 50,
                      width: 350,
                      borderRadius: BorderRadius.circular(10),
                      fillcolor: Color(0xfff2e2ee),
                      style: TextStyle(
                          color: Colors.purple,
                          fontFamily: "regular",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "06:30am, 25 January 2022",
                  style: TextStyle(fontFamily: "regular", color: Colors.grey),
                )),
              ],
            ),
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
