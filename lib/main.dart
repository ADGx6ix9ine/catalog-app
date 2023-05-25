import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBarTheme, BuildContext, Colors, Key, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/widgets/themes.dart';
import 'package:my_app/util/routes.dart';

void main(){
  runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "catalog app",
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=> LoginPage(),
        MyRoutes.homeRoute: (context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage()
      },
    );
  }
}