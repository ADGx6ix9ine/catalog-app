import 'package:flutter/material.dart';
import 'package:my_app/pages/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
        title:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90.0),
          child: Text("Cart"),
        ),
        ),
    );
  }
}
