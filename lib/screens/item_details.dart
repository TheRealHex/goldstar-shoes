import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../providers/products.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer<Products>(builder: (context, item, index) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.blueGrey),
          title: Text(
            product.title,
            style: Theme.of(context).primaryTextTheme.titleMedium,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  item.toggleFav(product);
                },
                icon: Icon(
                  product.isFav ? Icons.favorite : Icons.favorite_outline,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/${product.image}'),
                  ),
                ),
                Text(
                  'Shoe: ${product.title}',
                  style: Theme.of(context).primaryTextTheme.titleMedium,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10),
                  child: Text(
                    product.description,
                    style: Theme.of(context).primaryTextTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
