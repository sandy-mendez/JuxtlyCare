import 'package:flutter/material.dart';
import 'package:juxtly_care/pageONE.dart';
import 'package:juxtly_care/pageTWO.dart';

class confDos extends StatefulWidget {
  confDos({
    this.correo,
    this.contrasena,
  });

  final String correo;
  final String contrasena;
  @override
  _confDosState createState() => _confDosState();
}

class _confDosState extends State<confDos> {
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
              child: pagDos(),
            ),
          ],
        ),
      ),
    );
  }
}
