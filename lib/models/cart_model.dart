import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["avocado", "4000", "images/avocado.png", Colors.green],
    ["banana", "10000", "images/banana.png", Colors.yellow],
    ["chicken", "8000", "images/chicken.png", Colors.brown],
    ["water", "2000", "images/water.png", Colors.blue],
  ];
  final List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //==================tambah
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //==================hapus
  void removeItemFromList(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //==================total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
