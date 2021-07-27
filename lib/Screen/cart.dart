import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rentall/Screen/navbar_key.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
          child: RaisedButton(onPressed: (){
            final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
            navState.setPage(0);
          },
            child: Text("Continue Shopping"),
          ),
      ),
    );
  }
}
