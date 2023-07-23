import 'package:flutter/material.dart';
import 'package:ui_tutorial/widgets.dart/cart_app_bar_widget.dart';
import 'package:ui_tutorial/widgets.dart/cart_bottom_navigation_bar.dart';
import 'package:ui_tutorial/widgets.dart/cart_item_samples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            //temporary height
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                const CartItemSamples(),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF4c53A5),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Add Coupon Code',
                          style: TextStyle(
                              color: Color(0xFF4c53A5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}
