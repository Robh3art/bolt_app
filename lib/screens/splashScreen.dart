import 'dart:async';

import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
  }


class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/bolt.jpg.jpg'
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) =>const splashScreen(),
        ),
      );
    });
  }
}
