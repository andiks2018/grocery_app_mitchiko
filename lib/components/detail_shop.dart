import 'package:flutter/material.dart';

class DetailShop extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

   DetailShop({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color[100],
      child: Column(
        children: [
          //================== Images
          Image.asset(
            imagePath,
            height: 50,
          ),
          //================== Text
          Text(itemName),
          //================== price
          MaterialButton(
            onPressed: onPressed,
            child: Text(itemPrice),
          )
        ],
      ),
    );
  }
}
