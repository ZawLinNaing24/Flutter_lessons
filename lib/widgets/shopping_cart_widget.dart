import 'package:flutter/material.dart';
import 'package:my_app/widgets/number_provider.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build SchoolCart Widget");
    final number = NumberProvider.of(context)!.number;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.shopping_cart_checkout_outlined),
        Positioned(
          top: -8,
          left: -10,
          child: CircleAvatar(
            radius: 10,
            child: Text(number.toString()),
          ),
        )
      ],
    );
  }
}
