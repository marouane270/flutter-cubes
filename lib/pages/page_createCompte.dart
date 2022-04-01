import 'package:cubes/pages/page_accueil.dart';
import 'package:cubes/pages/page_connexion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageCreateCompte extends StatefulWidget {
  const PageCreateCompte({Key? key}) : super(key: key);

  @override
  _PageCreateCompteState createState() => _PageCreateCompteState();
}

class _PageCreateCompteState extends State<PageCreateCompte> {

  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? passwordController1;
  bool? passwordVisibility1;
  TextEditingController? passwordController2;
  bool? passwordVisibility2;

  @override
  void initState() {
    super.initState();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
    passwordController1 = TextEditingController();
    passwordVisibility1 = false;
    passwordController2 = TextEditingController();
    passwordVisibility2 = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: SingleChildScrollView(
                       child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 30),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                    children: [Text('RE-Sources', style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold, fontSize:30), ), ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: emailAddressController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Full Name',
                                            labelStyle: TextStyle(
                                                          fontFamily: 'Lexend Deca',
                                                          color: Color(0xFF95A1AC),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.normal,
                                                        ),
                                                  hintText: 'Enter your name here...',
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
                                                  contentPadding:
                                                      EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                                                  ),
                                                  style:
                                                    TextStyle(
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
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: emailAddressController2,
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
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                                      ),
                                      style:
                                      TextStyle(
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
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: passwordController1,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
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
                                            16, 24, 24, 24),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                                () => passwordVisibility1 =
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
                                      style:
                                      TextStyle(
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
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: passwordController2,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: 'Confirm Password',
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
                                            16, 24, 24, 24),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                                () => passwordVisibility2 =
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
                                      style:
                                      TextStyle(
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
                              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  <Widget>[
                                  ElevatedButton(
                                    style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.black87, fixedSize: Size(210, 60),
                                        elevation: 3, textStyle: TextStyle(fontFamily: 'Lexend Deca',fontSize: 18, fontWeight: FontWeight.bold)),
                                    child: Text("Créer le compte"),
                                    onPressed: () async {
                                      print('Button pressed ...');
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PageHome(),
                                        ),
                                      );
                                    },
                                  ),]

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                              Text(
                                                'Pour avoir les fonctionnalités créer vous un compte',
                                                textAlign: TextAlign.center,
                                                style:
                                                  TextStyle(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  <Widget>[
                                  Text(
                                    'Vous avez déja un compte?',
                                    style:
                                    TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.teal, fixedSize: Size(70, 30),
                                        elevation: 0, textStyle: TextStyle(fontFamily: 'Lexend Deca',fontSize: 14, fontWeight: FontWeight.bold)),
                                    child: Text("Login"),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PageConnexion(),
                                        ),
                                      );
                                    },
                                  ),


                                ],),
                            ),
                          ],
                       ),
                    ),
                  ),
        ),

    );
  }
}
