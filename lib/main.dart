import 'package:flutter/material.dart';
import 'package:jan72024_groceryapp/models/cart_model.dart';
import 'package:jan72024_groceryapp/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CartModel();
      },
      child: const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
