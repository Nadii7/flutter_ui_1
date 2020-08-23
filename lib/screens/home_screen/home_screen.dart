import 'package:flutter/material.dart';
import 'package:ui_1/constants.dart';
import 'package:ui_1/screens/home_screen/components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Home",
        ),
      ),
      body: Body(),
    );
  }
}