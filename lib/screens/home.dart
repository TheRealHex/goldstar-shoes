import 'package:flutter/material.dart';
import 'package:goldstar_shoes/components/drawer.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../providers/products.dart';
import 'item_details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final availables = Provider.of<Products>(context).availables;
    return Consumer2<Cart, Products>(
      builder: (context, cart, product, child) {
        return Scaffold(
          drawer: const MyDrawer(),
          appBar: AppBar(
            title: const Text(
              'GoldStar Shoes',
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
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
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
                            ),
                          ),
                          header: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rs. ${availables[index].price}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                  onPressed: () =>
                                      cart.addItem(availables[index]),
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.blueGrey,
                                    size: 16,
                                  )),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                  'assets/images/${availables[index].image}'),
                              Positioned(
                                bottom: 45,
                                child: Icon(
                                  availables[index].isFav
                                      ? Icons.favorite
                                      : null,
                                  size: 18,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));
              },
            ),
          ),
        );
      },
    );
  }
}
