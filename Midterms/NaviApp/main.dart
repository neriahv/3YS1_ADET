//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

//import 'package:filename/folder/file';
import 'package:naviapp/screens/logo_page.dart';

// void main() {runApp(MyApp());}
// or void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { //build method
    var logoPage = LogoPage(); //goes to LogoPage() without any parameters
    return MaterialApp( //The root widget for a Flutter app that uses Material Design
      debugShowCheckedModeBanner: false,
      title: 'Form Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: logoPage, //default screen page
    );
  }
}