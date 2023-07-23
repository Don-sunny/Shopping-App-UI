import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        const Icon(
          Icons.sort,
          size: 30,
          color: Color(0xFF4c53A5),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Dp Shop",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        badges.Badge(
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
          ),
          badgeContent: const Text('3'),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'cartPage');
            },
            child: const Icon(Icons.shopping_bag_outlined),
          ),
        )
      ]),
    );
  }
}
