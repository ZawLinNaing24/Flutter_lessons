import 'package:flutter/material.dart';
import 'package:my_app/widgets/number_text.dart';

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
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberText(number: number),
            const SizedBox(
              height: 16,
            ),
            Text("Parent Numbe: $number"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });

                  debugPrint(number.toString());
                },
                child: const Text("Increase")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const NumberText(number: 99)));
                },
                child: const Text("Go to detail"))
          ],
        )));
  }
}
