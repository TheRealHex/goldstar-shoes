import 'package:flutter/material.dart';
import 'package:goldstar_shoes/theme/style.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';
import 'providers/products.dart';
import 'screens/cart.dart';
import 'screens/home.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Cart()),
      ChangeNotifierProvider(create: (_) => Products()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      // home: Home(),
      routes: {
        '/': (_) => const Home(),
        '/cart': (_) => const CartPage(),
        // '/details': (_) => ItemDetails(),
      },
    );
  }
}
