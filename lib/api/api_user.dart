import 'dart:convert';
import 'dart:io';
import 'package:cubes/config.dart';
import 'package:cubes/models/user.dart';
import 'package:http/http.dart' as http;

class ApiRessource{
  final String Url = Config.apiURL + "/ressource";
  final String Url2 = "http://localhost:3005/user/oneUser";



  Future<Map<String,dynamic>> getPopularRessource() async{
    print(Url);

    http.Response response = await http.get(Uri.parse(Url));

    if(response.statusCode == 200){
      return {
        "code":200,
        "body": jsonDecode(response.body)
      };
    }

    return {
      "code":response.statusCode,
      "body": response.body
    };


  }

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


