import 'package:design_pacm/screens/login_screen.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controller/check_email_controller.dart';
import '../util/common_button.dart';

class CheckEmail extends GetView<CheckEmailController>{
  static const pageId ="/CheckEmail";
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(child: Image.asset("assets/images/email_img.png")),


              SizedBox(height: 100,),
              Container(
                  height: 300,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Text("Check your email",style: TextStyle(fontSize: 24, fontFamily: "bold"),),
                        SizedBox(height: 15,),
                        Text("We have sent password reset instructions to your email.",style:
                        TextStyle(color: Color(0xff7A7A7A),
                            fontFamily: "regular",fontSize: 12),),
                        SizedBox(height: 105,),
                        InkWell(
                          onTap: (){
                            Get.offAndToNamed(CreateNewPassword.pageId);
                          },
                          child: CommonButton(text: "Return to Login", height: 45, width: 330,
                            borderRadius: BorderRadius.circular(5),
                            fillcolor: Color(0xff660066),
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "regular",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),),
                        ),
                      ],
                    ),
                  )

              )
            ],
          ),
        ),
      ),
    );













    throw UnimplementedError();
  }

}