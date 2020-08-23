import 'package:flutter/material.dart';
import 'package:ui_1/screens/intro_screen/components/body.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}