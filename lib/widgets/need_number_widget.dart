import 'package:flutter/material.dart';
import 'package:my_app/widgets/number_provider.dart';

class NeedNumberWidget extends StatefulWidget {
  const NeedNumberWidget({super.key});

  @override
  State<NeedNumberWidget> createState() => _NeedNumberWidgetState();
}

class _NeedNumberWidgetState extends State<NeedNumberWidget> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint("didChangeDependencies is called");
  }

  @override
  Widget build(BuildContext context) {
    final number = NumberProvider.of(context)!.number;

    print("build needNumber Widget");
    return Column(
      children: [
        Text("Number: $number"),
        ElevatedButton(
            onPressed: NumberProvider.of(context)!.onPressed,
            child: const Icon(Icons.add))
      ],
    );
  }
}
