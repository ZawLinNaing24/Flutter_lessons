import 'package:flutter/material.dart';
import 'package:my_app/widgets/body_widget.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testing Inherited Widget"),
        centerTitle: false,
        actions: const [
          // ShoppingCartWidget()
        ],
      ),
      body: const BodyWidget(),
    );
  }
}
