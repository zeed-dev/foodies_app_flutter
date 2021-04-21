import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/splash.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/ic_spalsh.png",
              width: 225,
            ),
          ),
        ],
      ),
    );
  }
}
