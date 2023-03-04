

import 'package:design_pacm/screens/screens.dart';
import 'package:design_pacm/util/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/create_new_password_controller.dart';
import '../model/api_create_new_password_get.dart';
import '../util/common_button.dart';
import '../util/common_textstyle.dart';

class CreateNewPassword extends GetView<CreateNewPasswordController> {
  static const pageId = '/CreateNewPassword';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Stack(
                  children: [
                    Container(
                        child: Image.asset("assets/images/password_img.png")),
                    Positioned(
                      left: 25,
                      top: 40,
                      child: Container(
                        child: Image.asset("assets/images/star_img.png"),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 80,
                      child: Container(
                        child: Image.asset("assets/images/star_img.png"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  // height: 400,
                  width: 330,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Create new Password",
                          style: TextStyle(fontSize: 24, fontFamily: "bold"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Create your new password below",
                          style: CommonTextStyle.regular,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "New password",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "regular",
                              fontSize: 11),
                        ),
                        Obx(()=>
                           Form(
                             key: _formKey,
                             child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  cursorColor: Colors.black,
                                   obscuringCharacter: "*",
                                   obscureText: controller.hidePassword.value,

                                  validator: (value){
                                    if(value!.isEmpty){
                                      return "Enter Password";
                                    }
                                    if(!RegExp(
                                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                                        .hasMatch(value)){
                                      return "Enter Valid Password";
                                    }
                                    return null;

                                   },




                                  decoration: InputDecoration(
                                    suffixIcon: InkWell(
                                        onTap: (){
                                          controller.hidePassword.value=!controller.hidePassword.value;
                                        },
                                        child: Icon(controller.hidePassword.value?Icons.visibility_off_rounded:Icons.visibility,size: 18,color: Colors.grey,)),


                                        // suffixIcon: InkWell(
                                        //   onTap: (){
                                        //     controller.hidePassword.value=!controller.hidePassword.value;
                                        //   },
                                        //   child: Row(
                                        //     mainAxisAlignment: MainAxisAlignment.end,
                                        //     children: [
                                        //       Icon(controller.hidePassword.value
                                        //           ? Icons.visibility_off_rounded
                                        //           : Icons.visibility),
                                        //
                                        //       SizedBox(width: 5,),
                                        //
                                        //       Text(controller.hidePassword.value?"Show":"Hide")
                                        //     ],
                                        //   ),
                                        // ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),


                                  ),

                                ),
                           ),
                        ),

                    SizedBox(height: 30,),
                    Text("Your Password must be:",style: CommonTextStyle.regular,),

                        SizedBox(height: 10,),
                        Row(
                          children: [

                            SizedBox(width: 5,),
                            Image.asset("assets/images/true.png"),
                            SizedBox(width: 8,),
                            Text("at least 8 characters long",style: CommonTextStyle.regular,)
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(height: 20,),
                            SizedBox(width: 5,),
                            Image.asset("assets/images/true.png"),
                            SizedBox(width: 8,),
                            Text("include both lower and upper case characters",style: CommonTextStyle.regular,)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 20,),
                            SizedBox(width: 5,),
                            Image.asset("assets/images/true.png"),
                            SizedBox(width: 8,),
                            Text("include at least one special character",style: CommonTextStyle.regular,)
                          ],
                        ),
                       SizedBox(height: 50,),

                       InkWell(
                         onTap: (){
                           if(_formKey.currentState!.validate()){
                             RemotService().fetch();
                              Get.offAndToNamed(HomeScreen.pageId);
                             print("True password");
                           }
                           else{
                             print("fail");
                           }
                         },
                         child: CommonButton(
                            text: "Set Password",
                            height: 45,
                            width: 330,
                            borderRadius: BorderRadius.circular(5),
                            fillcolor: Color(0xff660066),
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "regular",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                       ),
                        SizedBox(height: 10,),



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
