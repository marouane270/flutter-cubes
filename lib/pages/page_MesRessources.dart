import 'dart:convert';

import 'package:cubes/components/post.dart';
import 'package:cubes/config.dart';
import 'package:cubes/pages/page_accueil.dart';
import 'package:cubes/pages/page_compte.dart';
import 'package:cubes/pages/page_creerRessource.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PageMesRessources extends StatefulWidget {
  const PageMesRessources({Key? key}) : super(key: key);

  @override
  _PageMesRessourcesState createState() => _PageMesRessourcesState();
}


class _PageMesRessourcesState extends State<PageMesRessources> {

  @override
  void initState() {
    super.initState();
  }


  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String choix = "Aucun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Row(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                child: new Text("SW"),
                radius: 15.0,
              ),
              margin: EdgeInsets.only(right: 30.0),
            ),
            new Text(Config.appName)
          ],
        ),
        elevation: 3.0,
      ),

      backgroundColor: Color(0xFFF1F5F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageCreerRessource(),
            ),
          );

          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFF4B39EF),
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SingleChildScrollView(
        child: getAllPosts(),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Creer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profil"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              print("Goto page Alert");
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PageHome();
                  })
              );
              break;
            case 1:
              print("Goto Page Simple");
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PageCreerRessource();
                  })
              );
              break;
            case 2:
              print("Goto Page Snack");
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PageCompte(idUser: "62441e770105eda62d6385b1");
                  })
              );
              break;
          }
        },
        //onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[800],
      ),
    );
  }

  Future<void> bottom() async {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (contextDialog) {
          return Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFDBE2E7),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 8, 8),
                              child: Icon(
                                Icons.share_rounded,
                                color: Color(0xFF57636C),
                                size: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Partager',
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF262D34),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {},
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),

                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFDBE2E7),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6, 8, 8, 8),
                                child: Icon(
                                  Icons.check_circle_outline,
                                  color: Color(0xFF57636C),
                                  size: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(
                                      'Exploitée/Non exploitée',
                                      style: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF262D34),
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFDBE2E7),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 8, 8),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Color(0xFF57636C),
                                size: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'A regarder plus tard',
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF262D34),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 8, 12, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFDBE2E7),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 8, 8),
                              child: Icon(
                                Icons.supervisor_account_outlined,
                                color: Color(0xFF57636C),
                                size: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Identifier des personnes',
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF262D34),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  //getImage()
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Future allRessource() async {
    var client = http.Client();

    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    var url = Uri.http(Config.apiURL, "/ressource/user-ressource/&62bea7f0e6c8dddf8dd069ea");

    var response = await client.get(
      url,
      headers: requestHeaders,
    ).then((http.Response response) {
      final String res = response.body;
      final int statusCode = jsonDecode(res)["status"];
      //print(statusCode);
      if (statusCode == 200) {


        dynamic jsonData = json.decode(res)["data"];

        for(var data in jsonData) {
          print(data["posterId"]);
        }
      }
      else {
        return false;
      }
    });
  }

  Future<Widget> getAllRessource() async {
    print("Test");
    List<Widget> result = [];
    var client = http.Client();

    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    var url = Uri.http(Config.apiURL, "/ressource/user-ressource/&62bea7f0e6c8dddf8dd069ea");

    var response = await client.get(
      url,
      headers: requestHeaders,
    ).then((http.Response response) {
      final String res = response.body;
      final int statusCode = jsonDecode(res)["status"];
      print(statusCode);
      if (statusCode == 200) {
        print("Passe ici");

        dynamic jsonData = json.decode(res)["data"];

        print(jsonData[0]);

        for(var data in jsonData) {
          print(data);
          result.add(
              Post(
                  posterId: (data["posterId"] != null ? data["posterId"] : ""),
                  posterNom: (data["posterNom"] != null ? data["posterNom"] : ""),
                  posterPrenom: (data["posterPrenom"] != null ? data["posterPrenom"] : ""),
                  posterPseudo: (data["posterPseudo"] != null ? data["posterPseudo"] : ""),
                  message: (data["message"] != null ? data["message"] : ""),
                  photo: (data["photo"] != null ? data["photo"] : ""),
                  //likers: (data["likers"] != null ? data["createdAt"] : ""),
                  //comments: (data["comments"] != null ? data["createdAt"] : ""),
                  createdAt: (data["createdAt"] != null ? data["createdAt"] : "")
              )
          );
        }
      }
    });
    if(result.length > 0) {
      return Column(children: result);
    }
    print("Error");
    return Text("Error");
  }

  Widget getAllPosts() {
    return FutureBuilder(
      builder: (context, projectSnap) {
        if (projectSnap.connectionState == ConnectionState.waiting) {
          return const Text("LOADING");
        } else {
          if(projectSnap.hasData) {
            return projectSnap.data as Widget;
          } else {
            return const Text("ERROR");
          }
        }
      },
      future: getAllRessource(),
    );
  }

}
