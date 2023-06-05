import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/pages/widgets/add_to_cart.dart';
import 'package:my_app/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatefulWidget {
  final Item catalog;

  const HomeDetailsPage({super.key, required this.catalog});

  @override
  State<HomeDetailsPage> createState() => _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddToCart(catalog: widget.catalog),
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              child:
                  Image.network(widget.catalog.image).h32(context).centered(),
              tag: widget.catalog.id,
            ),
            Text(
              widget.catalog.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ).p16(),
            Text(widget.catalog.desc)
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16, top: 32),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${widget.catalog.price}",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Buying not supported yet")));
              },
              child: Text("Buy"),
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size.fromWidth(90)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
            ),
          ],
        ),
      ),
    );
  }
}
