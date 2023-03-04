import 'dart:convert';

import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/model/api_forgot_password_get.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../model/model_class._login.dart';

class ForgetPasswordController extends BaseController{

  Rx<TextEditingController> emailController = TextEditingController().obs;


  Rx<Contain> userModel = Contain().obs;

//   void getData() async {
//     var response = await RemotService().fetch();
//
//     if (response.statusCode == 200) {
//       print("Data Value :");
// // print(response.body);
//       var jsonData = json.decode(response.body);
//       userModel.value = Contain.fromJson(jsonData as Map<String, dynamic>);
//       // controller.userModel.value.data?.length
//       print(response.body);
//       print('hii');
//     }
//
//   }

  @override
  void errorHandler(e) {
    // TODO: implement errorHandler
  }
  
}