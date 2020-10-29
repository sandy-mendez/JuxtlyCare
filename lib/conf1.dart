import 'package:flutter/material.dart';
import 'package:juxtly_care/pageONE.dart';

class confUno extends StatefulWidget {
  @override
  _confUnoState createState() => _confUnoState();
}

class _confUnoState extends State<confUno> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: largo * 0.1,
              left: ancho * 0.25,
              child: Container(
                width: ancho * 0.5,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.fitWidth,
                  //alignment: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              top: largo * 0.3,
              left: ancho * 0.03,
              child: pagUno(),
            ),
          ],
        ),
      ),
    );
  }
}
