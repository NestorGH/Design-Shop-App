import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demoProduct = [
  Product(
      image: "assets/images/product_0.png",
      title: "Long shirts",
      price: 165,
      bgColor: const Color(0xFFFEFBF9)),
  Product(
      image: "assets/images/product_1.png", title: "Casual shirt", price: 99),
  Product(
      image: "assets/images/product_2.png", title: "Curved shirts", price: 180),
  Product(
      image: "assets/images/product_3.png", title: "Casual Nolin", price: 149),
];
