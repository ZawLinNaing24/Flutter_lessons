import 'package:flutter/material.dart';
import 'package:my_app/concept/inherited_widget_demo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("build main Inherited Widget");
    return const MaterialApp(
        title: "flutter testing",
        debugShowCheckedModeBanner: false,
        home: MainWidget());
  }
}
