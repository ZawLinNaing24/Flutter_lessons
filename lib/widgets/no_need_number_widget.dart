import 'package:flutter/material.dart';

class NoNeedNumberWidget extends StatelessWidget {
  const NoNeedNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build NoNeedNumber Widget");

    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
      child: const Text('No Need Number in this widget'),
    );
  }
}
