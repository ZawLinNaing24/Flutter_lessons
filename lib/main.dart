import 'package:flutter/material.dart';
import 'package:my_app/widgets/stateful_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: StatefulWidgetLifecycle()),
      ),
    );
  }
}
