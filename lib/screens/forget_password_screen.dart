import 'package:design_pacm/controller/forget_password_controller.dart';
import 'package:design_pacm/model/api_forgot_password_get.dart';
import 'package:design_pacm/model/model_class._login.dart';
import 'package:design_pacm/screens/check_your_email_screen.dart';
import 'package:design_pacm/screens/login_screen.dart';
import 'package:design_pacm/util/common_button.dart';
import 'package:design_pacm/util/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends GetView<ForgetPasswordController> {
  static const pageId = '/ForgetPasswordScreen';
  final _forgetPassword = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Image.asset("assets/images/forget_pass_logo.png")),
                SizedBox(
                  height: 100,
                ),
                Container(
                  // height: 320,
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
                        horizontal: 20, vertical: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(fontSize: 24, fontFamily: "bold"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Don't worry! Enter your email address below ",
                              style: TextStyle(
                                  color: Color(0xff7A7A7A), fontSize: 14)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("to receive password reset intructions",
                              style: TextStyle(
                                  color: Color(0xff7A7A7A), fontSize: 14)),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Email",
                            style:
                                TextStyle(fontFamily: "regular", fontSize: 14),
                          ),
                          Obx(
                            () => Form(
                              key: _forgetPassword,
                              child: CommonTextField(
                                  controller: controller.emailController.value,
                                  // validator: Validator.isEmail,
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
                                  obscureText: false),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              if (_forgetPassword.currentState!.validate()) {
                                RemotService().fetch();
                                Get.offAndToNamed(CheckEmail.pageId);
                                
                                print("Successful");
                              } else {
                                print("unsuccessful");
                              }
                            },
                            child: CommonButton(
                              text: "Submit",
                              height: 50,
                              width: 330,
                              borderRadius: BorderRadius.circular(5),
                              fillcolor: Color(0xff660066),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "regular",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Get.offAndToNamed(LoginScreen.pageId);
                  },
                  child: Text(
                    "Back to log In",
                    style: TextStyle(fontFamily: "bold", fontSize: 15),
                  ),
                )
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
