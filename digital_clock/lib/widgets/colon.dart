import 'package:flutter/material.dart';

class Colon extends StatelessWidget {
  final bool isDarkTheme;
  const Colon({
    Key key,
    @required this.isDarkTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildDot(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
        ),
        buildDot()
      ],
    );
  }

  Container buildDot() {
    return Container(
        height: 9,
        width: 9,
        decoration: BoxDecoration(
          color: isDarkTheme ? Colors.green : Colors.black87,
          shape: BoxShape.circle,
        ));
  }
}
