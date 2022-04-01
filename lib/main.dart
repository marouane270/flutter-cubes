import 'package:cubes/pages/page_MDPoublie.dart';
import 'package:cubes/pages/page_accueil.dart';
import 'package:cubes/pages/page_comments.dart';
import 'package:cubes/pages/page_compte.dart';
import 'package:cubes/pages/page_connexion.dart';
import 'package:cubes/pages/page_createCompte.dart';
import 'package:cubes/pages/page_creerRessource.dart';
import 'package:cubes/pages/page_profil.dart';
import 'package:cubes/pages/page_settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PageConnexion(),
    );
  }
}


