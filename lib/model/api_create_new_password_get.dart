
import 'dart:convert';
import 'package:http/http.dart' as http;

class RemotService {
  Future<http.Response> fetch() async {
    Map<String, String> header = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization':
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiIxMDgiLCJFbWFpbCI6ImJpcmVuLnJhbmFAdGhlb25ldGVjaG5vbG9naWVzLmNvLmluIiwiUGhvbmVOdW1iZXIiOiIxMjM2NTQ3ODkwIiwiRmlyc3ROYW1lIjoiQmlyZW4iLCJTdXJuYW1lIjoiUmFuYSIsIm5iZiI6MTY1NzcxNTMyMCwiZXhwIjoxNjU3NzE4OTIwLCJpYXQiOjE2NTc3MTUzMjAsImlzcyI6Imh0dHBzOi8vbG9jYWxob3N0OjQ0MzQzIiwiYXVkIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NDQzNDMifQ.6QRre0X4pIFj3Mts7ws3mmTBA-CJJryy0dXYV0BxKfk'
    };
    http.Response response = await http.get(
        Uri.parse('http://192.168.1.100:10265//api/User/newPassword?add parameter'),

        //'http://192.168.1.100:10265/api/Auth/forgot-password?email=biren.rana%40theonetechnologies.co.in'),
        headers: header);
    print("welcome to create_new_screen");
    print(json.decode(response.body).toString());
    print("thank you");
    //print(response.body);
    return response;
  }
}