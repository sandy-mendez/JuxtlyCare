import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:juxtly_care/inicio.dart';
import 'package:juxtly_care/menuPrincipal.dart';

class Exito extends StatefulWidget {
  Exito({
    this.correo,
    this.contrasena,
  });

  final String correo;
  final String contrasena;

  @override
  _ExitoState createState() => _ExitoState();
}

class _ExitoState extends State<Exito> {
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
                'assets/fondito.png',
                fit: BoxFit.fitWidth,
                //alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              top: largo * 0.4,
              left: ancho * 0.4,
              child: Icon(
                Icons.settings_bluetooth,
                size: 100,
              ),
            ),
            Positioned(
                top: largo * 0.6,
                left: ancho * 0.3,
                child: Container(
                  //decoration: BoxDecoration(color: Colors.white70),
                  child: Text("¡Conexión \n exitosa!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.black)),
                )),
          ],
        ),
      ),
    );
  }
}
