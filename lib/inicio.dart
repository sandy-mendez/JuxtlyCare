import 'package:flutter/material.dart';
import 'package:juxtly_care/inciciar.dart';

class ingresa extends StatefulWidget {
  @override
  _ingresaState createState() => _ingresaState();
}

class _ingresaState extends State<ingresa> {
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
              top: largo * 0.1,
              left: ancho * 0.0001,
              right: ancho * 0.0001,
              child: Image.asset(
                'assets/fondito.png',
                fit: BoxFit.fitWidth,
                //alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              top: largo * 0.37,
              left: ancho * 0.03,
              child: ccorreo(),
            ),
          ],
        ),
      ),
    );
  }
}
