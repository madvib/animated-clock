import 'package:flutter/material.dart';

class ClockItemContainer extends StatelessWidget {
  final Widget child;
  const ClockItemContainer({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = (height * 5 / 3);

    return Container(
      constraints:
          BoxConstraints(maxHeight: height / 2, maxWidth: width / 6 - 25),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: child,
    );
  }
}
