import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rentall/Screen/account.dart';
import 'package:rentall/Screen/cart.dart';
import 'package:rentall/Screen/feed.dart';
import 'package:rentall/Screen/home.dart';
import 'package:rentall/Screen/message.dart';
import 'package:rentall/Screen/navbar_key.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}
class _MainScreen extends State<MainScreen> {
  int selectedIndex=0;
  final screen=[HomeScreen(),FeedScreen(),MessageScreen(),AccountScreen(),CartScreen()];
  @override
    Widget build(BuildContext context) {
      return Scaffold(
          bottomNavigationBar:CurvedNavigationBar(index:selectedIndex,
            key:NavbarKey.getKey(),
            items: [
            Icon(Icons.home,size:30),
            Icon(Icons.rss_feed,size:30),
            Icon(Icons.messenger,size:30),
            Icon(Icons.shopping_cart,size:30),
            Icon(Icons.person,size:30),
      ],
      onTap: (index){
            setState(() {
              selectedIndex=index;
            });

      },
            animationCurve: Curves.easeInBack,
            animationDuration: const Duration(milliseconds: 300),
    ),
        body: screen[selectedIndex],



    );
  }


  }
