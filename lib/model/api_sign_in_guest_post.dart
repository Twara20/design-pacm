//
// import 'dart:convert';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
//
// Future<void> fetchPostGuest(
//
//     String firstname,
//     String lastname,
//     String companyname,
//
//
//     ) async {
//
//   Map<String, String> header = {
//     'Content-Type': 'application/json',
//   };
//
//   String postBody = json.encode({
//     'firstName':firstname,
//     'lastName':lastname,
//     'companyName':companyname,
//
//
//   });
//
//
//   //final response = await http.post(Uri.parse('http://192.168.1.172/project/minimonstars/index.php/wp-json/wp/v2/Api/user_register'),
//   final response = await http.post(Uri.parse('http://192.168.1.100:10265/api/User'),
//       headers: header,body: postBody);
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
//
//
