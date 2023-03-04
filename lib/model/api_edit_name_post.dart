import 'dart:convert';
import 'package:http/http.dart' as http;


Future<void> fetchEditName(String firstname,String lastname) async {

  Map<String, String> header = {
    'Content-Type': 'application/json',
  };

  String postBody = json.encode({
    'firstName':firstname,
    'lastName': lastname,

  });


  //final response = await http.post(Uri.parse('http://192.168.1.172/project/minimonstars/index.php/wp-json/wp/v2/Api/user_register'),
  final response = await http.post(Uri.parse('http://192.168.1.100:10265/api/Auth/microsoftLogin'),//eve.holt@reqres.in,cityslicka
      headers: header,body: postBody);

  if (response.statusCode == 200) {
    print("welcome to login");
    print(json.decode(response.body).toString());
    print(postBody);


  }
  else {
    throw Exception('Failed to Edit Name');
  }
}
