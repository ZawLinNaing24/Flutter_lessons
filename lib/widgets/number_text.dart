import 'package:flutter/material.dart';

class NumberText extends StatefulWidget {
  const NumberText({super.key, required this.number});

  final int number; /* <== this is widget configuration */

  @override
  State<NumberText> createState() => _NumberTextState();
}

class _NumberTextState extends State<NumberText> {
  int localNumberState = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint(
        "InitState NumberText widgetConfiguration:${widget.number} localNumber:$localNumberState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint(
        "didChangeDependencies NumberText  widgetConfiguration:${widget.number}  localNumberState:$localNumberState ");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Build NumberText localNumber:$localNumberState");
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Text("Constructor Number: ${widget.number}"),
          Text("Local Number: $localNumberState"),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  localNumberState++;
                });
              },
              child: const Text("Increase Local Number"))
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant NumberText oldWidget) {
    /* this function work when widget configuration value is change */
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    debugPrint(
        "didUpdateWidget NumberText widgetConfiguration:${widget.number} localNumber:$localNumberState");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    debugPrint(
        "deactivate NumberText widgetConfiguration:${widget.number} localNumber: $localNumberState");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint(
        "dispose NumberText widgetConfiguration: ${widget.number} localNumber : $localNumberState");
  }
}
