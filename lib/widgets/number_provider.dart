import 'package:flutter/widgets.dart';

class NumberProvider extends InheritedWidget {
  const NumberProvider({super.key, required this.child}) : super(child: child);
  @override
  final Widget child;
  static NumberProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberProvider>();
  }

  @override
  bool updateShouldNotify(NumberProvider oldWidget) {
    return true;
  }
}
