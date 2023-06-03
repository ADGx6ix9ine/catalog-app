import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              child: Image.network(catalog.image).h32(context).centered(),
              tag: catalog.id,
            ),
            Text(
              catalog.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ).p16(),
            Text(catalog.desc)
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 16 ),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price}",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red,fontSize: 30),
            ),
            InkWell(
              child: Column(
                children: [
                  Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                  ),
                  Text("Add to Card")
                ],
              ).h(51),
              onTap: () {
                print("pressed on add to cart");
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("pressed on Buy");
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
