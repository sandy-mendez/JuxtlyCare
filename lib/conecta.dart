import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:juxtly_care/inicio.dart';
import 'package:juxtly_care/menuPrincipal.dart';

class Conectando extends StatefulWidget {
  Conectando({
    this.correo,
    this.contrasena,
  });

  final String correo;
  final String contrasena;

  @override
  _ConectandoState createState() => _ConectandoState();
}

class _ConectandoState extends State<Conectando> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MenuInicio())));
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
                'assets/fondito.png',
                fit: BoxFit.fitWidth,
                //alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              top: largo * 0.40,
              left: ancho * 0.25,
              child: Image.asset("assets/load2.gif"),
            ),
            Positioned(
                top: largo * 0.75,
                left: ancho * 0.2,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white70),
                  child: Text("Sincronizando signos vitales...",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                )),
          ],
        ),
      ),
    );
  }
}
