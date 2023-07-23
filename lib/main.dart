import 'package:flutter/material.dart';
import 'package:ui_tutorial/pages/cart_page.dart';
import 'package:ui_tutorial/pages/home_page.dart';
import 'package:ui_tutorial/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
