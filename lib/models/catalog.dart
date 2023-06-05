class CatalogModel {

  static final catModel=CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel()=> catModel;

  static List<Item> Items = [];

  Item getById(int id)=> Items.firstWhere((element) => element.id==id,orElse: null);

  Item getBypos(int pos)=> Items[pos];
}

class Item {
  final int id;
  final String name;
  final num price;
  final String desc;
  final String color;
  final String image;

  Item(
      {required this.image,
      required this.id,
      required this.name,
      required this.price,
      required this.desc,
      required this.color});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        image: map["image"],
        id: map["id"],
        name: map["name"],
        price: map["price"],
        desc: map["desc"],
        color: map["color"]);
  }
}
