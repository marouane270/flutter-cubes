
import 'dart:convert';

import 'package:cubes/pages/page_MDPoublie.dart';
import 'package:cubes/pages/page_accueil.dart';
import 'package:cubes/pages/page_createCompte.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class PageConnexion extends StatefulWidget {
  const PageConnexion({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageConnexion> {

  bool _isLoading = false;
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;
  bool? passwordVisibility;

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF262D34),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.teal,
              ],
            ),
            image: DecorationImage(
              fit: BoxFit.none,
              image: Image.asset(
                'images/LOGO.PNG',
              ).image,
            ),
          ),
          child: _isLoading ? Center(child: CircularProgressIndicator()) : Align(
            alignment: AlignmentDirectional(0, 1),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 68, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 355,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                       ),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Connexion',
                                    style: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.blue,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFFDBE2E7),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Colors.blue,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: emailAddressController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Email Address',
                                      labelStyle: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Enter your email here...',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF2B343A),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'Enter your password here...',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                              () => passwordVisibility =
                                          true,
                                        ),
                                        child: Icon(
                                          false
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF95A1AC),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF2B343A),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
                            child: Column(
                              children : [Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  <Widget>[
                                  TextButton(
                                    style: TextButton.styleFrom(primary: Colors.blue, backgroundColor: Colors.white, fixedSize: Size(150, 40),
                                        elevation: 0, textStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                    child: Text("Mot de passe oublié?"),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PageMDPoublie(),
                                        ),
                                      );
                                    },
                                  ),
                                  ElevatedButton(
                                    style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue, fixedSize: Size(150, 40),
                                        elevation: 0, textStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                    child: Text("Login"),
                                    onPressed: () {
                                      setState(() {
                                        _isLoading = true;
                                      });
                                      print(emailAddressController!.text);
                                      print(passwordController!.text);
                                      print("avant Login");
                                      login(emailAddressController!.text, passwordController!.text );
                                    },
                                  ),

                                ],

                              ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                  indent: 20,
                                  endIndent: 20,
                                  color: Color(0xFFDBE2E7),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: TextButton(
                              style: TextButton.styleFrom(primary: Colors.blue, backgroundColor: Colors.white, fixedSize: Size(200, 40),
                                  elevation: 0, textStyle: TextStyle(fontFamily: 'Lexend Deca', fontWeight: FontWeight.w500)),
                              child: Text("Créer votre compte ici !"),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageCreateCompte(),
                                  ),
                                );
                              },
                            ),

                            ),
                        ],
                    ),
                  ),
                ],
            ),
          ),
        ),

    );
  }
  login(String email, String password) async{
    Map data = {
      'userMail': email,
      'userPassword': password
    };
    var jsonData = null;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String url = 'http://localhost:3005/user/signin';
    print("avant fetch");
    print(jsonEncode(data));
    print(Uri.parse(url));
    var response = await http.post(Uri.parse(url), body: jsonEncode(data));
    print("apres fetch");

    print(response);
    if(response.statusCode == 200){
      jsonData = json.decode(response.body);
      setState(() {
        _isLoading = false;
        sharedPreferences.setString("token", jsonData['token']);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => PageHome()), (Route<dynamic> route) => false);
      });
    }
    else{
      print(response.body);
    }
  }
}


