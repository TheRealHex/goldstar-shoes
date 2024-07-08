import 'package:flutter/material.dart';

import 'product.dart';

class Cart with ChangeNotifier {
  final List<Product> _products = [];
  double _total = 0;

  List<Product> get cartItems => _products;

  int get count => _products.length;

  double get total => _total;
  void addItem(Product product) {
    _products.add(product);
    _total += product.price;
    notifyListeners();
  }

  void deleteItem(Product product) {
    _products.remove(product);
    _total -= product.price;
    notifyListeners();
  }

}
