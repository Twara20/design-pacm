import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_class_forget_password.dart';

/*Future<List<Contain>> fetch() async {

  final response =
  await http.get(Uri.parse('http://192.168.1.100:10265/api/Auth/forgot-password?email=yash.prajapati%40theonetechnologies.co.in'));

  if (response.statusCode == 200) {
    print("welcome");
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Contain>((json) => Contain.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load');
  }
}*/
class RemotService {
  Future<http.Response> fetch() async {
    Map<String, String> header = {
      'Content-Type': 'application/json; charset=UTF-8',
      //'Authorization':
      //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiIxMDgiLCJFbWFpbCI6ImJpcmVuLnJhbmFAdGhlb25ldGVjaG5vbG9naWVzLmNvLmluIiwiUGhvbmVOdW1iZXIiOiIxMjM2NTQ3ODkwIiwiRmlyc3ROYW1lIjoiQmlyZW4iLCJTdXJuYW1lIjoiUmFuYSIsIm5iZiI6MTY1NzcxNTMyMCwiZXhwIjoxNjU3NzE4OTIwLCJpYXQiOjE2NTc3MTUzMjAsImlzcyI6Imh0dHBzOi8vbG9jYWxob3N0OjQ0MzQzIiwiYXVkIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NDQzNDMifQ.6QRre0X4pIFj3Mts7ws3mmTBA-CJJryy0dXYV0BxKfk'
    };
    http.Response response = await http.get(
        Uri.parse('http://192.168.1.100:10265/api/Auth/forgot-password?email=twaraparekh20%40gmail.com'),

            //'http://192.168.1.100:10265/api/Auth/forgot-password?email=biren.rana%40theonetechnologies.co.in'),
        headers: header);
    print("welcome to forgot_password screen");
    print(json.decode(response.body).toString());
    print("thank you");
    //print(response.body);
    return response;
  }
}