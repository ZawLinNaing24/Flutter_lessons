import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testing Inherited Widget"),
        centerTitle: false,
        actions: [
          // ShoppingCartWidget(),
        ],
      ),
    );
  }
}
