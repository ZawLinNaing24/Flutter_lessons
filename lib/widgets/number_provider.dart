import 'package:flutter/widgets.dart';

class NumberProvider extends InheritedWidget {
  const NumberProvider(
      {super.key,
      required this.child,
      required this.number,
      required this.onPressed})
      : super(child: child);
  final int number;
  final VoidCallback onPressed;
  @override
  final Widget child;

  static NumberProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberProvider>();
  }

  @override
  bool updateShouldNotify(NumberProvider oldWidget) {
    //oldNumber=3; newNumber=3;

    //oldWidget is NumberProvider
    debugPrint("oldWidget ====> $oldWidget");

    //only return True when oldWidget.number != number
    return oldWidget.number != number;
  }
}
