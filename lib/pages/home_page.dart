import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days=2;
    String name="ADG";
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text("Catalog App",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ) ,
          ),
        ),
      ),
      body: Center(
        child: Text("welcome to day $days of flutter with $name"),
      ),
      drawer: Drawer(
      ),
    );
  }
}