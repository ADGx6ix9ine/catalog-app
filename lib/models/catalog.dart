class CatalogModel{
  static  List<Item>Items=[];
}



class Item{
  final int id;
  final String name;
  final num price;
  final String desc;
  final String color;
  final String image;

  Item({required this.image, required this.id, required this.name, required this.price, required this.desc, required this.color});

  factory Item.fromMap(Map<String,dynamic>map){
    return Item(image: map["image"],
        id: map["id"],
        name: map["name"],
        price: map["price"],
        desc: map["desc"],
        color: map["color"]
    );

  }
}

