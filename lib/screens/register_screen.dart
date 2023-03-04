import 'package:design_pacm/screens/login_screen.dart';
import 'package:design_pacm/screens/registration_form_screen.dart';
import 'package:design_pacm/util/common_button.dart';
import 'package:design_pacm/util/common_button_icon.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  static const pageId = '/RegisterScreen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

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
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                child: Container(
                  // height: 600,
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

                   child:Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 18),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(
                           height: 30,
                         ),
                         Text(
                           "Register",
                           style: TextStyle(
                               fontFamily: "regular",
                               fontSize: 27,
                               fontWeight: FontWeight.bold),
                         ),
                         SizedBox(
                           height: 22,
                         ),
                         Text("Welcome to the PACM Application that is used for signing on and off project sites.",
                         style: TextStyle(fontSize: 15.5,fontFamily: "regular",color: Color(0xff565d5c)),),

                         SizedBox(
                           height: 22,
                         ),
                         Text("Get started by creating an account below.",
                           style: TextStyle(fontSize: 15.5,fontFamily: "regular",color: Color(0xff565d5c)),),

                         SizedBox(
                           height: 40,
                         ),
                        // Common(text: "Register With Email",
                        //     height: 50, width: 350,fillcolor: Color(0xff660066),
                         //     logoIcon: "assets/images/email_icon.png",style: TextStyle(
                        //       color: Colors.white, fontFamily: "regular"),),

                         InkWell(
                           onTap: (){
                             Get.offAndToNamed(RegistrationForm.pageId);
                           },
                           child: CommonButtonWithIcon(text: "Register With Email", height: 50, width: 350,fillcolor: Color(0xff660066),
                             imgIcon: "assets/images/email_icon.png",style: TextStyle(color: Colors.white,fontFamily: "regular"),
                             border: Border.all(color: Colors.transparent,width: 1),
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
                                 color: Color(0xff565d5c)
                               ),
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
                         CommonButtonWithIcon(text: "Register with Microsoft", height: 50, width: 350,imgIcon: "assets/images/vector.png",
                           style: TextStyle(
                               fontWeight: FontWeight.w600,
                               fontFamily: "regular",
                               fontSize: 15,),
                           border: Border.all(color: Colors.black,width:2),),

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
                               children:  <TextSpan>[
                                 TextSpan(
                                     text: 'Login',
                                     recognizer: TapGestureRecognizer()
                                       ..onTap = () => {
                                         Get.toNamed(
                                             LoginScreen
                                                 .pageId),
                                       },

                                     style: TextStyle(
                                         decoration: TextDecoration.underline,
                                         fontFamily:"semibold",color: Colors.black)),
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
                             style:
                             TextStyle(fontSize: 10, color: Colors.black),
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
                         SizedBox(height: 15,),
                       ],
                     ),
                   ) ,

                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
