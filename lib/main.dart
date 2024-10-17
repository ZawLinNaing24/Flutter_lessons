import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ValueNotifier<int> count = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build the widget");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Value Notifier"),
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ValueListenableBuilder(
                    valueListenable: count,
                    builder: (context, value, child) =>
                        Text("Your Counter value is : ${count.value}")),
                ElevatedButton(
                    onPressed: () {
                      count.value++;

                      debugPrint(count.value.toString());
                    },
                    child: const Icon(Icons.add))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
