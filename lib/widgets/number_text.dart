import 'package:flutter/material.dart';

class NumberText extends StatefulWidget {
  NumberText({super.key, required this.number});
  int number;

  @override
  State<NumberText> createState() => _NumberTextState();
}

class _NumberTextState extends State<NumberText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 3)),
      child: Column(
        children: [
          Text("Constructor Number: ${widget.number}"),
          Text("Local Number: ${widget.number}"),
          TextButton(
              onPressed: () {
                setState(() {
                  widget.number++;
                });
              },
              child: const SizedBox(
                width: 3,
                height: 4,
                child: Text("Increase Local Number"),
              ))
        ],
      ),
    );
  }
}
