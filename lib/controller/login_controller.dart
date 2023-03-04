import 'dart:convert';

import 'package:design_pacm/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../model/api_login_post.dart';

class LoginController extends BaseController{

  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  @override
  void errorHandler(e) {
    // TODO: implement errorHandler
  }
  

  // void socialLogin( email,  password) async {
  //     try {
  //       var response = await RemoteServices.login(email, password);
  //       var jsonData = json.decode(response.body);
  //       if (response.statusCode == 200) {
  //         print('hello World');
  //
  //       }
  //     } catch (e) {
  //
  //     }

     }

