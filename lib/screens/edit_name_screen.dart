import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/model/api_edit_name_post.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../util/bootomappbar_indicator.dart';
import '../util/common_button.dart';
import '../util/common_textfield.dart';

class EditNameScreen extends GetView<EditNameController>{
  static const pageId = "/EditName";

  final  _editName = GlobalKey<FormState>();

  clearText(){
    controller.firstNameController.value.clear();
    controller.lastNameController.value.clear();
  }



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
                InkWell(
                  onTap: (){
                    Get.offAndToNamed(AccountSetting.pageId);
                  },
                  child: Image.asset(
                      "assets/images/back_arrow.png",
                      color: Color(0xff383333)
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Back",
                  style: TextStyle(fontSize: 18, fontFamily: "semibold", color: Color(0xff383333)),
                ),
                SizedBox(
                  width: 58,
                ),
                Center(
                  child: Text(
                    "Edit Name",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
        child: Obx(()=>
           Form(
            key: _editName,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Name",style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xff383333),
                      fontFamily: "regular",
                      fontWeight: FontWeight.w600),),

                  CommonTextField(
                    controller: controller.firstNameController.value,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                    ],
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required First Name";
                      }
                    },
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 50,),


                  Text("Last Name",style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xff383333),
                      fontFamily: "regular",
                      fontWeight: FontWeight.w600),),

                  CommonTextField(
                    controller: controller.lastNameController.value,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                    ],
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required Last Name";
                      }
                    },
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 50,),
                  InkWell(
                    onTap: (){
                      if(_editName.currentState!.validate()){
                        fetchEditName(controller.firstNameController.value.text, controller.lastNameController.value.text);
                        print("Name Edited");
                      }
                    },
                    child: CommonButton(
                      text: "Save",
                      height: 45,
                      width: 350,
                      borderRadius: BorderRadius.circular(10),
                      fillcolor: Color(0xff660066),
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "regular",
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      clearText();
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

                ],
              ),
            ),
          ),
        ),
      ),








      bottomNavigationBar: BottomIndicator(),


    );















    throw UnimplementedError();
  }

}