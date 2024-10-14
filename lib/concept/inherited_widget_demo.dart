import 'package:flutter/material.dart';
import 'package:my_app/widgets/body_widget.dart';
import 'package:my_app/widgets/number_provider.dart';
import 'package:my_app/widgets/shopping_cart_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int number = 0;
  void increase() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NumberProvider(
      number: number,
      onPressed: increase,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Testing Inherited Widget"),
          centerTitle: false,
          actions: const [ShoppingCartWidget()],
        ),
        body: const BodyWidget(),
      ),
    );
  }
}
