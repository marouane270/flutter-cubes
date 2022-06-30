import 'package:cubes/pages/page_MesRessources.dart';
import 'package:cubes/pages/page_accueil.dart';
import 'package:cubes/pages/page_profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageCreerRessource extends StatefulWidget {
  const PageCreerRessource({Key? key}) : super(key: key);

  @override
  _PageCreerRessourceState createState() => _PageCreerRessourceState();
}

class _PageCreerRessourceState extends State<PageCreerRessource> {

  String uploadedFileUrl = '';
  TextEditingController? textController;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Creer un Post',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF090F13),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          TextButton(
              child: Text('Tweet', style: TextStyle(color: Colors.black),),
              onPressed: () async {
                ;
                Navigator.pop(context);
              },
          ),

          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: IconButton(
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF95A1AC),
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: new Form(child: TextFormField(
            onChanged: (val) {
              setState(() {
                //text = val;
              });
            },
          ),),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Creer"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profil"),
        ],
        onTap: (int index){
          switch(index){
            case 0:
              print("Goto page Alert");
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context){
                    return PageHome();
                  })
              );
              break;
            case 1:
              print("Goto Page Simple");
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return PageCreerRessource();
                  })
              );
              break;
            case 2:
              print("Goto Page Snack");
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return PageProfil();
                  })
              );
              break;
          }
        },
        //onTap: _onItemTapped,
        currentIndex: 1,
        selectedItemColor: Colors.lightBlue[800],
      ),
    );
  }

}

String getInitial(String nom, String prenom) {
  var initial = nom.substring(0,1) + prenom.substring(0,1);
  return initial;
}

