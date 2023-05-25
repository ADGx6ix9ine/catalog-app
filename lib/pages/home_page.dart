import 'package:flutter/material.dart';
import 'package:my_app/pages/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days=10;
    String name="ADG";
    return Scaffold(
      appBar: AppBar(
        title:
        Text("My App",
          ),
      ),
      body:Center(
        child: Container(
          child: Text("Welcome to day $days of flutter with $name"),
        ),
      ),
      drawer: MyDrawer(
      ),
    );
  }
}