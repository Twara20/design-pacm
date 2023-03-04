// // import 'dart:convert';
// // import 'dart:io';
// //
// // import 'package:flutter/foundation.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // // import 'package:logger/logger.dart';
// //
// // class RemoteServices {
// //   // static var logger = Logger(
// //   //   printer: PrettyPrinter(
// //   //     methodCount: 0,
// //   //     errorMethodCount: 5,
// //   //     lineLength: 50,
// //   //     colors: true,
// //   //     printEmojis: true,
// //   //     printTime: true,
// //   //   ),
// //   // );
// //   static var client = http.Client();
// //
// //   /*Printing Response of API's in Terminal*/
// //   static void printResponse(
// //       Map<String, String> header, dynamic body, http.Response response) {
// //     debugPrint('Header: $header');
// //     debugPrint('Body : $body');
// //     debugPrint('URL: ${response.request!.url}');
// //     debugPrint('Response status: ${response.statusCode}');
// //     debugPrint('Response body: ${response.body}');
// //   }
// //
// //   /*Login and Social Login User API*/
// //   static Future<http.Response> login(
// //       String email,
// //       String password,
// //      ) async {
// //     Map<String, String> header = {
// //       // 'Content-Type': 'application/json; charset=UTF-8'
// //       "Content-Type": "application/json"
// //     };
// //     String postBody = json.encode({
// //       'email': email,
// //       'password': password,
// //     });
// //
// //     http.Response response = await http.post(
// //         Uri.parse('http://103.215.158.206:10265/api/Auth'),
// //         headers: header,
// //         body: postBody);
// //     printResponse(header, postBody, response);
// //     return response;
// //   }
// // }
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// //
// //
// // Future<void> fetchPost(String email,String password) async {
// //
// //   Map<String, String> header = {
// //     'Content-Type': 'application/json',
// //   };
// //
// //   String postBody = json.encode({
// //     'email':email,
// //     'password':password
// //   });
// //
// //
// //   final response = await http.post(Uri.parse('http://192.168.1.100:10265/api/Auth'),
// //       headers: header,body: postBody);
// //
// //   if (response.statusCode == 200) {
// //     print("hello");
// //     print(json.decode(response.body).toString());
// //     print(json.decode(response.body));
// //
// //     }
// //   else {
// //     throw Exception('Failed');
// //   }
// // }
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../screens/login_screen.dart';
//
//
// var client = http.Client();
// Future<Object> createAlbum(String email, String password) async {
//   final response = await http.post(
//     Uri.parse('https://reqres.in/api/login'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{'email': email, 'password': password}),
//   );
//
//   if (response.statusCode == 200) {
//     print("hii");
//     print(email);
//     print(password);
//     print(response.body);
//     print(response.statusCode);
//
//
//      print(json.decode(response.body));        //token value
//      print("welcome");
//
//       return Album.fromJson(jsonDecode(response.body));
//
//
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to load');
//   }
// }


import 'dart:convert';
import 'package:http/http.dart' as http;


Future<void> fetchPost(String email,String password) async {

  Map<String, String> header = {
    'Content-Type': 'application/json',
  };

  String postBody = json.encode({
    'email':email,
    'password': password,

  });


  //final response = await http.post(Uri.parse('http://192.168.1.172/project/minimonstars/index.php/wp-json/wp/v2/Api/user_register'),
  final response = await http.post(Uri.parse('http://192.168.1.100:10265/api/Auth'),//eve.holt@reqres.in,cityslicka
      headers: header,body: postBody);

  if (response.statusCode == 200) {
    print("welcome to login");
    print(json.decode(response.body).toString());
    print(postBody);


  }
  else {
    throw Exception('Failed');
  }
}
