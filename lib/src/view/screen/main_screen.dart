import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'cart/cartScreen.dart';
import 'profile/profile_screen.dart';
import 'home/shop_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selected = 0;
  List<Widget> screens = [
    ShopScreen(),
    CartPage(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Color(0x00ffffff),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.shopping_bag, size: 30),
          Icon(Icons.person_pin, size: 30),
        ],
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
      ),
      body: screens[selected],
    );
  }
}
