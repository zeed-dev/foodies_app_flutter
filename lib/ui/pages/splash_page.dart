import 'dart:async';

import 'package:flutter/material.dart';
import 'main_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<Timer> startTimer() async {
    return Timer(Duration(seconds: 2), onDone);
  }

  void onDone() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Image.asset(
          "assets/splash_screen.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
