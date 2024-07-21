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
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerBtn(text: 'Home'),
          DrawerBtn(text: 'Purchases'),
          DrawerBtn(text: 'Wishlist'),
          DrawerBtn(text: 'Settings'),
        ],
      ),
    );
  }
}
