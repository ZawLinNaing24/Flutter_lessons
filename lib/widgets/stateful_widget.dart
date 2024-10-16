import 'package:flutter/material.dart';

class StatefulWidgetLifecycle extends StatefulWidget {
  const StatefulWidgetLifecycle({super.key});

  @override
  State<StatefulWidgetLifecycle> createState() =>
      _StatefulWidgetLifecycleState();
}

class _StatefulWidgetLifecycleState extends State<StatefulWidgetLifecycle> {
  int number = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("initState $number");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint("didChangeDependecies : $number");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build: $number");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget"),
        ),
        body: const Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        )));
  }
}
