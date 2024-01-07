import 'package:flutter/material.dart';
import 'package:jan72024_groceryapp/pages/shop_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //================== Images
          Image.asset('images/avocado.png'),
          //================== Text
          const Text(
            'Selamat datang',
          ),
          //================== Gesture detector 
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ShopPage();
                  },
                ),
              );
            },
            child:  Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              color: Colors.amberAccent,
              child: const Text('get in'),
            ),
          ),
        ],
      ),
    );
  }
}
