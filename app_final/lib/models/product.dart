import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id, categoria;
  final Color color;
  Product(
      {
        required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color,
      required this.categoria
      });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 100,
      size: 10,
      description: dummyText,
      image: "images/Gorras/Gorra1.jpg",
      color: Color(0xFF3D82AE),
      categoria: 1),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 200,
      size: 8,
      description: dummyText,
      image: "images/Gorras/Gorra2.jpg",
      color: Color(0xFFD3A984),
      categoria: 1),
  Product(
      id: 3,
      title: "Hang Top",
      price: 123,
      size: 10,
      description: dummyText,
      image: "images/Gorras/Gorra3.jpg",
      color: Color(0xFF989493),
      categoria: 1),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 456,
      size: 11,
      description: dummyText,
      image: "images/Gorras/Gorra4.jpg",
      color: Color(0xFFE6B398),
      categoria: 2),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/Gorras/Gorra5.jpg",
      color: Color(0xFFFB7883),
      categoria: 1),
  Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/Gorras/Gorra6.jpg",
      color: Color(0xFFAEAEAE),
      categoria: 1),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
