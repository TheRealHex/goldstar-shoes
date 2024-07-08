import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final int id;
  final String title, description, image;
  final double price;
  bool isFav;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.id,
    this.isFav = false,
  });
}
