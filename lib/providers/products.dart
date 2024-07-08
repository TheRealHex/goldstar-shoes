import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _availables = [
    Product(
      id: 1,
      title: 'Rock 06 White/Sky',
      image: '1.jpg',
      price: 3049.0,
      description: 'Rock 06 White/Sky Goldstar Sneakers For Men',
      isFav: true,
    ),
    Product(
      id: 2,
      title: 'Rock 06 White/Grey',
      image: '2.jpg',
      price: 3049.0,
      description: 'Rock 06 White/Grey Goldstar Sneakers For Men',
    ),
    Product(
        id: 3,
        title: 'Rock 06 White',
        image: '3.jpg',
        price: 3049.0,
        description: 'Rock 06 White Goldstar Sneakers For Men'),
    Product(
        id: 4,
        title: 'Rock 06 Black/Red',
        image: '4.jpg',
        price: 3049.0,
        description: 'Rock 06 Black/Red Goldstar Sneakers For Men'),
    Product(
        id: 5,
        title: 'River 05 White/Yellow',
        image: '5.jpg',
        price: 3049.0,
        description: 'River 05 Goldstar White/Yellow Sneakers For Women'),
    Product(
        id: 6,
        title: 'River 05 White',
        image: '6.jpg',
        price: 3049.0,
        description: 'River 05 Goldstar White Sneakers For Women'),
    Product(
        id: 7,
        title: 'Concord Air',
        image: '7.jpg',
        price: 1025.0,
        description: 'Concord Air Goldstar Sneakers for Men'),
    Product(
        id: 8,
        title: 'River 05 White',
        image: '6.jpg',
        price: 3049.0,
        description: 'River 05 Goldstar White Sneakers For Women'),
    Product(
        id: 9,
        title: 'Rock 06 White/Grey',
        image: '2.jpg',
        price: 3049.0,
        description: 'Rock 06 White/Grey Goldstar Sneakers For Men'),
    Product(
        id: 10,
        title: 'Rock 06 White',
        image: '3.jpg',
        price: 3049.0,
        description: 'Rock 06 White Goldstar Sneakers For Men'),
    Product(
        id: 11,
        title: 'Rock 06 Black/Red',
        image: '4.jpg',
        price: 3049.0,
        description: 'Rock 06 Black/Red Goldstar Sneakers For Men'),
    Product(
        id: 12,
        title: 'River 05 White/Yellow',
        image: '5.jpg',
        price: 3049.0,
        description: 'River 05 Goldstar White/Yellow Sneakers For Women'),
    Product(
        id: 13,
        title: 'River 05 White',
        image: '6.jpg',
        price: 3049.0,
        description: 'River 05 Goldstar White Sneakers For Women'),
  ];
  List<Product> get availables => _availables;

  void toggleFav(Product product) {
    product.isFav = !product.isFav;
    notifyListeners();
  }
}
