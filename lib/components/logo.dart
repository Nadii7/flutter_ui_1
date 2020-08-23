import 'package:flutter/material.dart';
import '../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key, this.mAxes,
  }) : super(key: key);
  final MainAxisAlignment mAxes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mAxes,
      children: [
        Text(
          'Library',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 24,
          ),
        ),
        Text(
          'on',
          style: TextStyle(
              color: kAccentColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
