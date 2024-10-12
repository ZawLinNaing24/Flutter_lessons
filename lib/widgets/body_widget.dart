import 'package:flutter/material.dart';
import 'package:my_app/widgets/no_need_number_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build Body Widget");
    return const Center(
      child: Column(
        children: [NoNeedNumberWidget(), NeedNumberWidget()],
      ),
    );
  }
}
