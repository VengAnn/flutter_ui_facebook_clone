// ignore_for_file: file_names

import 'dart:async';
import 'package:facebook_clone/Screens/LoginScreen.dart';
import 'package:facebook_clone/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    durationNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                child: Image.network(
                  KLogoFbUrl,
                  width: 100,
                  height: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void navigationToLoginScreen() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }

  //
  void durationNavigation() {
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 3), navigationToLoginScreen);
  }
}
