import 'package:flutter/material.dart';
import 'package:flutter_project_application_1/main/login.dart';
import 'package:flutter_project_application_1/main/register.dart';
import 'package:flutter_project_application_1/main/home.dart';
import 'package:flutter_project_application_1/main/mainproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // routes: {
      //   "productpage": (context) => productpage(),
      // },
      home: loginscreen(),
      routes: {
        'login': (context) => loginscreen(),
        'register': (context) => registerscreen(),
        'home': (context) => homescreen(),
        'mainproduct': (context) => productpage(),
      },
    );
  }
}
