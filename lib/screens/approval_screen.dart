import 'package:design_pacm/screens/login_screen.dart';
import 'package:design_pacm/util/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ApprovalScreen extends StatefulWidget {
  static const pageId = "/ApprovalScreen";
  const ApprovalScreen({Key? key}) : super(key: key);

  @override
  State<ApprovalScreen> createState() => _ApprovalScreenState();
}

class _ApprovalScreenState extends State<ApprovalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(child: Image.asset("assets/images/approval_logo.png")),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 320,
                width: 330,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Almost there...",
                        style: TextStyle(fontFamily: "bold", fontSize: 24),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Your account has been created but still requires PACM head office approval.",
                        style: TextStyle(
                          fontFamily: "regular",
                          fontSize: 16,
                          color: Color(0xff7A7A7A),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "For enquiries please contact support@pacm.com.au or Call 1300 335 069 and ask for Chrissy Sandell",
                        style: TextStyle(
                          fontFamily: "regular",
                          fontSize: 16,
                          color: Color(0xff7A7A7A),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Get.offAndToNamed(LoginScreen.pageId);
                        },
                        child: CommonButton(
                          text: "Return to Login",
                          height: 50,
                          width: 330,
                          borderRadius: BorderRadius.circular(5),
                          fillcolor: const Color(0xff660066),
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "regular",
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
