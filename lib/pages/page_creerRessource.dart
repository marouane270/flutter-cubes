import 'package:cubes/pages/page_MesRessources.dart';
import 'package:cubes/pages/page_accueil.dart';
import 'package:cubes/pages/page_profil.dart';
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
        actions: [
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.94,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: InkWell(
                          onTap: () async {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.96,
                            height: 350,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F5F8),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'images/CreateRessources.PNG',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Color(0x3A000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Comment....',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
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
                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      20, 32, 20, 12),
                                ),
                                style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF090F13),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.start,
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
            child: TextFormField(

              decoration: InputDecoration(
                icon: Icon(
                Icons.place,
                color: Color(0xFF95A1AC),
                size: 16,
              ), hintText: 'Tag Location',
              hintStyle: TextStyle(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF95A1AC),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
              ),),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
            child: ElevatedButton(
              style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Color(0xFF4B39EF), fixedSize: Size(260, 40),
                  elevation: 3, textStyle: TextStyle(fontFamily: 'Lexend Deca',fontSize: 18, fontWeight: FontWeight.bold)),
              child: Text("Créer post"),
              onPressed: () async {
                print('Button pressed ...');
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageMesRessources(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
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
