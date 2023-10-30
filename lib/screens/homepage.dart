import 'package:flutter/material.dart';
import 'package:flutter_bubble_tea_app/component/bottom_nav_bar.dart';
import 'package:flutter_bubble_tea_app/screens/cart_page.dart';
import 'package:flutter_bubble_tea_app/screens/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  //navigate bottom bar
  int _selectIndex = 0;
  void navigateBottombar(int newIndex) {
    setState(() {
      _selectIndex = newIndex;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottombar(index),
      ),
      body: _pages[_selectIndex],
    );
  }
}
