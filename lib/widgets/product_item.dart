import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../providers/products.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final Cart cart;

  const ProductItem({
    super.key,
    required this.index,
    required this.cart,
  });

  @override
  Widget build(BuildContext context) {
    final availables = Provider.of<Products>(context).availables;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.blueGrey[300],
              title: Text(
                availables[index].title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () => cart.addItem(availables[index]),
                  icon: const Icon(Icons.add_shopping_cart)),
            ),
            child: Image.asset('assets/images/${availables[index].image}')),
      ),
    );
  }
}
