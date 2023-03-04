import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/screens/register_screen.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../model/api_login_post.dart';
import '../util/common_button.dart';
import '../util/common_button_icon.dart';
import '../util/common_textfield.dart';
import 'package:http/http.dart';

class LoginScreen extends GetView<LoginController> {
  static const pageId = "/LoginScreen";

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(child: Image.asset("assets/images/splash_logo.png")),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.8,
                    width: 400,
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
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  fontFamily: "regular",
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "regular",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    CommonTextField(
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
                                      obscureText: false,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "regular",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    CommonTextField(
                                       controller: controller.passwordController.value,
                                        // validator: Validator.isPassword,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return ("Enter Password");
                                          } else if (value.length < 6) {
                                            return ("password length must be 6");
                                          }

                                          return null;
                                        },
                                        obscureText: true),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Get.offAndToNamed(ForgetPasswordScreen.pageId);
                                      },
                                      child: Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {

                                print('data emailController ${controller.emailController.value.text}');
                                print('data passwordController ${controller.passwordController.value.text}');
                                if (_formKey.currentState!.validate()) {
                                  fetchPost(controller.emailController.value.text,controller.passwordController.value.text);
                                  Get.offAndToNamed(RegisterScreen.pageId);

                                 // createAlbum(controller.emailController.value.text,controller.passwordController.value.text);
                                  print("Successful");
                                } else {
                                  print("unsuccessful");
                                }
                              },
                              child: CommonButton(

                                text: 'Login',
                                width: 350,
                                height: 50,
                                borderRadius: BorderRadius.circular(10),
                                fillcolor: Color(0xff660066),
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "regular"),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    indent: 0.0,
                                    endIndent: 25.0,
                                    thickness: 1,
                                    color: Color(0xff565d5c),
                                  ),
                                ),
                                Text(
                                  "Or",
                                  style: TextStyle(
                                      fontFamily: "regular",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff565d5c)),
                                ),
                                Expanded(
                                  child: Divider(
                                    indent: 25.0,
                                    endIndent: 0.0,
                                    thickness: 1,
                                    color: Color(0xff565d5c),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: (){
                                 // Get.offAndToNamed(HomeScreen.pageId);
                              },
                              child: CommonButtonWithIcon(
                                text: "Login with Microsoft",
                                height: 50,
                                width: 350,
                                imgIcon: "assets/images/vector.png",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "regular",
                                    fontSize: 15),
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                    fontFamily: "regular",
                                    fontSize: 14,
                                    color: Color(0xff565d5c),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Register',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => {
                                                Get.toNamed(
                                                    RegisterScreen.pageId),
                                              },
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "semibold",
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'By continuing you agree to the ',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'terms and conditions',
                                      style: TextStyle(
                                          fontFamily: "semibold",
                                          fontSize: 10)),
                                  TextSpan(
                                      text: ' of Parakeelya Pty Ltd',
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
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
        ));

    // TODO: implement build
    throw UnimplementedError();
  }
}

class Album {
   final String email;
  final String password;

  const Album({required this.email, required this.password});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      email: json['email'],
      password: json['password'],
    );
  }
}
