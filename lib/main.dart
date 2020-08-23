import 'package:flutter/material.dart';
import 'package:ui_1/screens/home_screen/home_screen.dart';
import 'package:ui_1/screens/intro_screen/intro_screen.dart';
import 'package:ui_1/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/intro': (context) => IntroScreen(),
        '/home': (context) => HomeScreen(),
      }));
}
