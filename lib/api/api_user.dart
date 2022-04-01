import 'dart:convert';
import 'dart:io';
import 'package:cubes/models/user.dart';
import 'package:http/http.dart' as http;

class ApiUser{
  final String Url = "http://localhost:3005/user/allUser";
  final String Url2 = "http://localhost:3005/user/oneUser";



  Future<User?> getOneUser(String id) async {
    String url = "${Url2}&${id}";

    final response = await http.get(
      Uri.parse(url),
      headers : {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json'
      },
    );
    print(response.statusCode);


    if(response.statusCode == 200){
      return  User.FromJson(jsonDecode(response.body));
    }

    return null;



  }

}


