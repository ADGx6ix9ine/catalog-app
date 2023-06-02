class CatalogModel{
  static final Items=[
    Item(
        image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000",
        id: 1,
        name: "iPhone 12 Pro",
        price: 999,
        desc: "Apple iPhone 12th generation",
        color: "#33505a"
    )
  ];
}



class Item{
  final int id;
  final String name;
  final num price;
  final String desc;
  final String color;
  final String image;

  Item({required this.image, required this.id, required this.name, required this.price, required this.desc, required this.color});
}

