import 'package:flutter/material.dart';
import 'package:my_app/pages/second_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (ctx) {
          return Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.of(ctx).push(
                        MaterialPageRoute(builder: (_) => const SecondPage()));
                  },
                  child: const Text(
                    "Go to the Second Page",
                    style: TextStyle(color: Colors.red),
                  )));
        }),
      ),
    );
  }
}
