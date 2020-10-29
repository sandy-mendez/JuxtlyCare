import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:juxtly_care/inicio.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => ingresa())));
  }

  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(180, 206, 243, 1),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: largo * 0.08,
              left: ancho * 0.0001,
              right: ancho * 0.0001,
              child: Image.asset(
                'assets/fondoIm.png',
                fit: BoxFit.fitWidth,
                //alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
                top: largo * 0.08,
                left: ancho * 0.25,
                child: Image.asset("assets/load2.gif")),
          ],
        ),
      ),
    );
  }
}
