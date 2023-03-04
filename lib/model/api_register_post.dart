// import 'dart:convert';
// import 'dart:io';
//
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// // import 'package:logger/logger.dart';
//
// class RemoteServices {
//   // static var logger = Logger(
//   //   printer: PrettyPrinter(
//   //     methodCount: 0,
//   //     errorMethodCount: 5,
//   //     lineLength: 50,
//   //     colors: true,
//   //     printEmojis: true,
//   //     printTime: true,
//   //   ),
//   // );
//   static var client = http.Client();
//
//   /*Printing Response of API's in Terminal*/
//   static void printResponse(
//       Map<String, String> header, dynamic body, http.Response response) {
//     debugPrint('Header: $header');
//     debugPrint('Body : $body');
//     debugPrint('URL: ${response.request!.url}');
//     debugPrint('Response status: ${response.statusCode}');
//     debugPrint('Response body: ${response.body}');
//   }
//
//   /*Login and Social Login User API*/
//   static Future<http.Response> login(
//       String email,
//       String password,
//      ) async {
//     Map<String, String> header = {
//       // 'Content-Type': 'application/json; charset=UTF-8'
//       "Content-Type": "application/json"
//     };
//     String postBody = json.encode({
//       'email': email,
//       'password': password,
//     });
//
//     http.Response response = await http.post(
//         Uri.parse('http://103.215.158.206:10265/api/Auth'),
//         headers: header,
//         body: postBody);
//     printResponse(header, postBody, response);
//     return response;
//   }
// }



// import 'dart:convert';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
//
// Future<void> fetchPost(String firstname,String lastname,String email) async {
//
//   Map<String, String> header = {
//     'Content-Type': 'application/json',
//   };
//
//   String postBody = json.encode({
//     'firstname':firstname,
//     'lastname':lastname,
//     'email':email
//   });
//
//
//   //final response = await http.post(Uri.parse('http://192.168.1.172/project/minimonstars/index.php/wp-json/wp/v2/Api/user_register'),
//   final response = await http.post(Uri.parse('http://192.168.1.100:10265/api/Auth/microsoftLogin'),
//   headers: header,body: postBody);
//
//   if (response.statusCode == 200) {
//     print("hello");
//     print(json.decode(response.body).toString());
//     print(postBody);
//
//
//   }
//   else {
//     throw Exception('Failed');
//   }
// }

import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<void> fetchPost(
    String firstname,
    String lastname,
    String businessname,
    String role,
    String phonenumber,
    String email,
    String pacmcontactname
    ) async {

  Map<String, String> header = {
    'Content-Type': 'application/json',
  };

  String postBody = json.encode({
    'firstName':firstname,
    'lastName':lastname,
    'businessName':businessname,
    'role': role,
    'phoneNumber':phonenumber,
    'email':email,
    'pacmContactName': pacmcontactname


  });


  //final response = await http.post(Uri.parse('http://192.168.1.172/project/minimonstars/index.php/wp-json/wp/v2/Api/user_register'),
  final response = await http.post(Uri.parse('http://192.168.1.100:10265/api/User'),
  headers: header,body: postBody);

  if (response.statusCode == 200) {
    print("hello");
    print(json.decode(response.body).toString());
    print(postBody);


  }
  else {
    throw Exception('Failed');
  }
}


