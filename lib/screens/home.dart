import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../providers/products.dart';
import 'item_details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final availables = Provider.of<Products>(context).availables;
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'GoldStar Shoes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            scrolledUnderElevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.blueGrey,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Stack(
                  children: [
                    Positioned(
                      right: 4.0,
                      child: Text(
                        cart.count.toString(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pushNamed('/cart'),
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Container(
            color: Colors.white,
            child: GridView.builder(
              itemCount: availables.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                childAspectRatio: 1 / 1,
              ),
              itemBuilder: (context, index) {
                // return ProductItem(index: index, cart: cart);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ItemDetails(product: availables[index]),
                      )),
                      child: GridTile(
                          footer: SizedBox(
                            height: 40,
                            child: GridTileBar(
                              backgroundColor: Colors.blueGrey[300],
                              title: Text(
                                availables[index].title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              trailing: IconButton(
                                onPressed: () =>
                                    cart.addItem(availables[index]),
                                icon: const Icon(Icons.add_shopping_cart),
                                iconSize: 20,
                              ),
                            ),
                          ),
                          header: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Rs. ${availables[index].price}',
                                  style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          child: Image.asset(
                              'assets/images/${availables[index].image}')),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
