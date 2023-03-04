import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../model/api_register_post.dart';
import '../util/common_button.dart';
import '../util/common_text.dart';
import '../util/common_textfield.dart';
import 'login_screen.dart';


class RegistrationForm extends GetView<RegistrationFormController>{
  static const pageId = '/form';
  final  _registrationFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
                () => Column(
              children: [
                Form(
                    key: _registrationFormKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Register",
                            style: TextStyle(
                                fontFamily: "regular",
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CommonText(
                            text: 'First Name \*',
                          ),
                          //Common(text: "hghghg", height: 50, width: 350,logoIcon: "assets/images/email_icon.png",fillcolor: Colors.purple,)
                          // CommonTextField(obscureText: false,),

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

                          SizedBox(
                            height: 15,
                          ),
                          CommonText(
                            text: 'Last Name \*',
                          ),
                          CommonTextField(
                            controller: controller.lastNameController.value,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                            ],
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required Last Name";
                              }
                            },
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          CommonText(
                            text: 'Business Name/Company \*',
                          ),
                          CommonTextField(
                            controller: controller.companyNameController.value,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                            ],
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required Business/Company Name";
                              }
                            },
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          CommonText(
                            text: 'Position/Role \*',
                          ),
                          CommonTextField(
                            controller: controller.positionNameController.value,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                            ],
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required Position/Role";
                              }
                            },
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          CommonText(
                            text: 'Phone Number \*',
                          ),
                          CommonTextField(
                            controller: controller.phoneNoController.value,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            obscureText: false,
                            keyboardType: TextInputType.number,

                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required Phone Number";
                              } else if (value.length > 10) {
                                return ("length must have 10 characters.");
                              } else if (value.length < 10) {
                                return ("length must have 10 characters.");
                              }

                              return null;
                            },
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          CommonText(
                            text: 'Email Address \*',
                          ),
                          CommonTextField(
                            controller: controller.emailController.value,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Email";
                              }
                              if (!RegExp(
                                  "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return 'Please enter a valid Email';
                              }
                              return null;
                            },
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "PACM Contact Person \*",
                                style: TextStyle(
                                  fontFamily: "semibold",
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/ques_circle.png",
                                color: Colors.black,
                              ),
                              // Icon(
                              //     IconData(0xe78C, fontFamily: 'AntdIcons'),
                              //     size: 20,
                              //     color: Colors.black
                              // )

                              // Icon(
                              //     AntdIcons.CI,
                              //     size: 20,
                              //     color: Colors.black
                              // )
                            ],
                          ),
                          CommonTextField(
                            controller: controller.pacmController.value,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                            ],
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required PACM Contact Person";
                              }
                            },
                          ),

                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            child: InkWell(
                              onTap: () => {
                                if (_registrationFormKey.currentState!
                                    .validate())
                                  {
                                    // fetchPost(
                                    //     controller
                                    //         .firstNameController.value.text,
                                    //     controller
                                    //         .lastNameController.value.text,
                                    //     controller.emailController.value.text
                                    // ),

                                    fetchPost(controller.firstNameController.value.text,
                                        controller.lastNameController.value.text,
                                        controller.companyNameController.value.text,
                                        controller.positionNameController.value.text,
                                        controller.phoneNoController.value.text,
                                        controller.emailController.value.text,
                                        controller.pacmController.value.text
                                        ),
                                    print("Successful"),
                                    Get.offAndToNamed(ApprovalScreen.pageId),
                                  }
                                else
                                  {print("unsuccessful")}
                              },
                              child: CommonButton(
                                text: "Register",
                                height: 50,
                                width: 350,
                                borderRadius: BorderRadius.circular(10),
                                fillcolor: Color(0xff660066),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "regular",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: "Already have an account? ",
                                style: TextStyle(
                                  fontFamily: "regular",
                                  fontSize: 14,
                                  color: Color(0xff565d5c),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Sign In',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => {
                                          Get.toNamed(LoginScreen.pageId),
                                        },
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontFamily: "semibold",
                                          color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}