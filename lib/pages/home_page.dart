import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/pages/widgets/drawer.dart';
import 'package:my_app/pages/widgets/item_widget.dart';
import 'package:my_app/pages/widgets/themes.dart';
import 'package:my_app/util/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(CupertinoIcons.cart),
      ),
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65.0),
          child: Text(
            "Catalog App",
          ),
        ),
      ),
      body: (CatalogModel.Items.isNotEmpty)
          ? ListView.builder(
              itemCount: CatalogModel.Items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatalogModel.Items[index]);
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson)["products"];
    CatalogModel.Items =
        List.from(decodedData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }
}
