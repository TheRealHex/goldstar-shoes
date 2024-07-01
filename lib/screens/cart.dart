import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, index) {
      return Scaffold(
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              'Checkout (Rs. ${cart.total})',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.blueGrey),
          title: const Text(
            'Cart',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
          centerTitle: true,
          // scrolledUnderElevation: 0,
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: cart.cartItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: Container(
                    color: Colors.blueGrey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        title: Text(
                          cart.cartItems[index].title,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          cart.cartItems[index].price.toString(),
                          style: const TextStyle(color: Colors.blueGrey),
                        ),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets/images/${cart.cartItems[index].image}'),
                        ),
                        trailing: IconButton(
                            onPressed: () =>
                                cart.deleteItem(cart.cartItems[index]),
                            icon: const Icon(
                              Icons.remove_shopping_cart,
                              color: Colors.blueGrey,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
