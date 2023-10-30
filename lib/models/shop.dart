import 'package:flutter/material.dart';
import 'package:flutter_bubble_tea_app/models/drink.dart';

class BubbleShop extends ChangeNotifier{
  //list of  drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
    Drink(
        name: "Peael milk tea",
        price: "4.00",
        imagepath: "lib/images/milk_tea.jpg")
  ];

  //list of drinks in user cart
  final List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;
  //get user cart
  List<Drink> get cart => _userCart;

  //add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  //remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();

  }
  
  void notifyListeners() {}
}
