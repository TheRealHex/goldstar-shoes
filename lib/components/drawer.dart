import 'package:flutter/material.dart';
import 'package:goldstar_shoes/components/drawer_btn.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width / 2.5,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          DrawerBtn(text: 'Home'),
          DrawerBtn(text: 'New*'),
          DrawerBtn(text: 'Men'),
          DrawerBtn(text: 'Women'),
          DrawerBtn(text: 'Purchases'),
          DrawerBtn(text: 'Wishlist'),
          DrawerBtn(text: 'Settings'),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
