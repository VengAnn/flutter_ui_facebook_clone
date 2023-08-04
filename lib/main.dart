import 'package:flutter/material.dart';
// ignore: unused_import
import 'Screens/LoginScreen.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SplashScreen(),
    );
  }
}
