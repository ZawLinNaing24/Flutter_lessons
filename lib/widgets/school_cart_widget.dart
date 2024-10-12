import 'package:flutter/material.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build SchoolCart Widget");
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(Icons.shopping_cart_checkout_outlined),
        Positioned(
          top: -8,
          left: -10,
          child: CircleAvatar(
            radius: 10,
            child: Text("0"),
          ),
        )
      ],
    );
  }
}
