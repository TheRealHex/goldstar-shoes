import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  primaryColor: Colors.blueGrey,
  appBarTheme: const AppBarTheme(
    // color: Colors.blueGrey,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.blueGrey,
    ),
    titleTextStyle: TextStyle(
      color: Colors.blueGrey,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
  ),
  primaryTextTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Colors.blueGrey,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
  ),
);

