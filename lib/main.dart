import 'package:flutter/material.dart' show BuildContext, Colors, Key, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';

void main(){
  runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      routes: {
        "/": (context)=> HomePage(),
        "login": (context)=> LoginPage(),
      },
    );
  }
}