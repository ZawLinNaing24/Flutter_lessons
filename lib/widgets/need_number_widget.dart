import 'package:flutter/material.dart';

class NeedNumberWidget extends StatefulWidget {
  const NeedNumberWidget({super.key});

  @override
  State<NeedNumberWidget> createState() => _NeedNumberWidgetState();
}

class _NeedNumberWidgetState extends State<NeedNumberWidget> {
  int number = 0;
  void increase() {
    setState(() {
      number++;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint("didChangeDependencies is called");
  }

  @override
  Widget build(BuildContext context) {
    print("build needNumber Widget");
    return Column(
      children: [
        Text("Number: $number"),
        ElevatedButton(
            onPressed: () {
              increase();
            },
            child: const Icon(Icons.add))
      ],
    );
  }
}
