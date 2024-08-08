import 'dart:ui';

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
}


class CatalogModel{
  static final items=[
    Item(
      id: 1,
      name: "Iphone 12 pro",
      desc: "Apple Iphone 12th Generation",
      price: 999,
      color: "33505a",
      image: "assets/images/iphone12.jpg",

    ),
    Item(
      id: 2,
      name: "M2 Macbook Air",
      desc: "Apple 2022 MacBook AIR Apple M2",
      price: 1090,
      color: "33505a",
      image: "assets/images/macbook.png",
    ),

    Item(
      id: 3,
      name: "Google Pixel 7a",
      desc: "With Tensor G2 processor,designed by Google",
      price: 420,
      color: "33505a",
      image: "assets/images/pixel7a.png",
    ),

    Item(
      id: 4,
      name: "IQOO Z7 Pro 5G",
      desc: "8 GB Extended RAM Vapour Chamber Liquid Cooling",
      price: 999,
      color: "33505a",
      image: "assets/images/iquoo.png",
    ),



    Item(
      id: 5,
      name: "Apple iPad Pro",
      desc: "With the A12Z Bionic Chip for seamless computing",
      price: 1465,
      color: "33505a",
      image: "assets/images/ipad.png",
    ),

    Item(
      id: 6,
      name: "Apple iPhone 13",
      desc: "With A15 Bionic Chip",
      price: 598,
      color: "33505a",
      image: "assets/images/iphone13.png",
    ),

    Item(
      id: 7,
      name: "Pixel 8a",
      desc: "With IP67 protection(Handle water and dust)",
      price: 634,
      color: "33505a",
      image: "assets/images/pixel8.png",
    ),

    Item(
      id: 8,
      name: "Noise Buds VS102 Plus",
      desc: "With 70 Hours Playtime ",
      price: 18,
      color: "33505a",
      image: "assets/images/noisebuds.png",
    ),

    Item(
      id: 9,
      name: "Xiaomi 14 Ultra",
      desc: "With the Leica 50 MP quad camera system",
      price: 999,
      color: "33505a",
      image: "assets/images/xiomi.png",
    ),

    Item(
      id: 10,
      name: "SAMSUNG Galaxy Z Flip3 5G",
      desc: "Comes with a Flex Mode Camera",
      price: 455,
      color: "33505a",
      image: "assets/images/samsungFlip.png",
    ),















  ];
}