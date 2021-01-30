import 'package:flutter/material.dart';

class Categoris {
  String title;
  String img;
  Color color;
  Categoris({this.title, this.img, this.color});
}

List<Categoris> categoris = [
  Categoris(
    title: "vegetables",
    img: "assets/images/1.png",
    color: Colors.green[200],
  ),
  Categoris(
    title: "Legumes",
    img: "assets/images/2.png",
    color: Colors.brown[400],
  ),
  Categoris(
    title: "confectionery",
    img: "assets/images/3.png",
    color: Colors.red[300],
  ),
  Categoris(
    title: "fruits",
    img: "assets/images/4.png",
    color: Colors.yellow[400],
  ),
  Categoris(
    title: "drinks",
    img: "assets/images/5.png",
    color: Colors.green[200],
  ),
  Categoris(
    title: "Legumes",
    img: "assets/images/6.png",
    color: Colors.cyan[300],
  ),
  Categoris(
    title: "vegetables",
    img: "assets/images/1.png",
    color: Colors.green[200],
  ),
  Categoris(
    title: "Legumes",
    img: "assets/images/2.png",
    color: Colors.brown[400],
  ),
  Categoris(
    title: "confectionery",
    img: "assets/images/3.png",
    color: Colors.red[300],
  ),
  Categoris(
    title: "fruits",
    img: "assets/images/4.png",
    color: Colors.yellow[400],
  ),
  Categoris(
    title: "drinks",
    img: "assets/images/5.png",
    color: Colors.green[200],
  ),
  Categoris(
    title: "Legumes",
    img: "assets/images/6.png",
    color: Colors.cyan[300],
  ),
];

List<String> sliderList = [
  "https://static.dw.com/image/53348779_303.jpg",
  "https://static.webteb.net/images/content/tbl_articles_article_17115_954d041478c-7b0a-4c07-999a-124ec4b6d983.jpg",
  "https://cdn.al-ain.com/images/2019/6/24/78-141400-types-fruit-summer_700x400.png",
];

class Product {
  String img;
  String name;
  String typeShop;
  double price;
  Product({this.img, this.name, this.typeShop, this.price});
}

List<Product> products = [
  Product(
    img: "assets/images/7.png",
    name: "cauliflower",
    typeShop: "1 pc",
    price: 5.00,
  ),
  Product(
    img: "assets/images/8.png",
    name: "celery",
    typeShop: "1 pc",
    price: 7.00,
  ),
  Product(
    img: "assets/images/9.png",
    name: "Herbs",
    typeShop: "1 kg",
    price: 200.00,
  ),
  Product(
    img: "assets/images/10.png",
    name: "Lettuce",
    typeShop: "1 pc",
    price: 10.00,
  ),
  Product(
    img: "assets/images/11.png",
    name: "radish",
    typeShop: "1 kg",
    price: 6.00,
  ),
  Product(
    img: "assets/images/12.png",
    name: "Pineapple",
    typeShop: "1 pc",
    price: 50.00,
  ),
  Product(
    img: "assets/images/7.png",
    name: "cauliflower",
    typeShop: "1 pc",
    price: 5.00,
  ),
  Product(
    img: "assets/images/8.png",
    name: "celery",
    typeShop: "1 pc",
    price: 7.00,
  ),
  Product(
    img: "assets/images/9.png",
    name: "Herbs",
    typeShop: "1 kg",
    price: 200.00,
  ),
  Product(
    img: "assets/images/10.png",
    name: "Lettuce",
    typeShop: "1 pc",
    price: 10.00,
  ),
  Product(
    img: "assets/images/11.png",
    name: "radish",
    typeShop: "1 kg",
    price: 6.00,
  ),
  Product(
    img: "assets/images/12.png",
    name: "Pineapple",
    typeShop: "1 pc",
    price: 50.00,
  ),
  Product(
    img: "assets/images/7.png",
    name: "cauliflower",
    typeShop: "1 pc",
    price: 5.00,
  ),
  Product(
    img: "assets/images/8.png",
    name: "celery",
    typeShop: "1 pc",
    price: 7.00,
  ),
  Product(
    img: "assets/images/9.png",
    name: "Herbs",
    typeShop: "1 kg",
    price: 200.00,
  ),
  Product(
    img: "assets/images/10.png",
    name: "Lettuce",
    typeShop: "1 pc",
    price: 10.00,
  ),
  Product(
    img: "assets/images/11.png",
    name: "radish",
    typeShop: "1 kg",
    price: 6.00,
  ),
  Product(
    img: "assets/images/12.png",
    name: "Pineapple",
    typeShop: "1 pc",
    price: 50.00,
  ),
];

class Quntity {
  bool selected;
  String quntity;

  Quntity({this.selected, this.quntity});
}

List<Quntity> quantity = [
  Quntity(quntity: "1 kg"),
  Quntity(quntity: "2 kg"),
  Quntity(quntity: "3 kg"),
  Quntity(quntity: "4 kg"),
  Quntity(quntity: "5 kg"),
  Quntity(quntity: "6 kg"),
];
