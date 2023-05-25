class Item{
  final String id;
  final String name;
  final num price;
  final String desc;
  final String color;
  final String image;

  Item({required this.image, required this.id, required this.name, required this.price, required this.desc, required this.color});
}

final products=[
 Item(
     image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smartcellular.in%2Fapple-iphone-12-pro-max-128-gb-unlocked-gold-condition-pristine-4&psig=AOvVaw0XAYghRmAuPNq2qMVzsn5d&ust=1682774627353000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKjKjZHWzP4CFQAAAAAdAAAAABAL",
     id: "ADG",
     name: "Iphone 12 Pro",
     price: 69000,
     desc: "12th gen Iphone",
     color: "33505a",
 )
];