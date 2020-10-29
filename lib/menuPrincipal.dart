import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuInicio extends StatefulWidget {
  MenuInicio({
    this.correo,
    this.contrasena,
  });

  final String correo;
  final String contrasena;

  @override
  _MenuInicioState createState() => _MenuInicioState();
}

class _MenuInicioState extends State<MenuInicio> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(0.0, 0.0),
                    end: Alignment(0.6, 0.99),
                    colors: [Colors.blue[200], Colors.cyan[200]])),
            child: Column(
              children: [
                Container(
                  height: largo * 0.075,
                ),
                Text(
                  "Juxtly García",
                  style: GoogleFonts.secularOne(fontSize: 40),
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Icon(
                      Icons.sentiment_very_dissatisfied,
                      color: Colors.grey,
                      size: 60,
                    ),
                    Icon(Icons.sentiment_neutral, color: Colors.grey, size: 60),
                    Icon(Icons.sentiment_very_satisfied,
                        color: Colors.green[800], size: 60),
                    Expanded(child: Container()),
                  ],
                ),
                Text("¡Todo bien!", style: TextStyle(fontSize: 20)),
                Expanded(child: Container()),
                Container(
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Container(
                            width: ancho * 0.25,
                            child: Image.asset("assets/pulmon.png")),
                        oxigeno(ancho, largo, context),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Container(
                            width: ancho * 0.25,
                            child: Image.asset("assets/temp.png")),
                        temperatura(ancho, largo, context),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Container(
                            width: ancho * 0.25,
                            child: Image.asset("assets/cora.png")),
                        pulso(ancho, largo, context),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Container(
                      width: ancho * 0.4,
                      child: Image.asset("assets/conSombra.png"),
                    ),
                    Expanded(child: Container()),
                    Container(
                        child: Icon(
                      Icons.settings,
                      size: 50,
                    )),
                    Expanded(child: Container()),
                  ],
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget oxigeno(double anchooo, double altooo, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        width: anchooo * 0.7,
        height: altooo * 0.15,
        child: Stack(
          children: [
            Positioned(
              top: altooo * 0.02,
              left: anchooo * 0.05,
              child: Container(
                width: anchooo * 0.60,
                height: altooo * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[200]),
              ),
            ),
            Positioned(
              top: altooo * 0.008,
              left: anchooo * 0.024,
              child: Container(
                width: anchooo * 0.60,
                height: altooo * 0.10,
                child: FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    print("pulso");
                  },
                  child: Row(children: [
                    Container(
                      height: altooo * 0.10,
                      width: anchooo * 0.5,
                      child: Center(
                        child: Text("96 %",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Colors.black, fontSize: 35)),
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ), // boton personajes
    ],
  );
}

Widget temperatura(double anchooo, double altooo, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        width: anchooo * 0.7,
        height: altooo * 0.15,
        child: Stack(
          children: [
            Positioned(
              top: altooo * 0.02,
              left: anchooo * 0.05,
              child: Container(
                width: anchooo * 0.60,
                height: altooo * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pink[100]),
              ),
            ),
            Positioned(
              top: altooo * 0.008,
              left: anchooo * 0.024,
              child: Container(
                width: anchooo * 0.60,
                height: altooo * 0.10,
                child: FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    print("pulso");
                  },
                  child: Row(children: [
                    Container(
                      height: altooo * 0.10,
                      width: anchooo * 0.5,
                      child: Center(
                        child: Text("36° C",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Colors.black, fontSize: 35)),
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ), // boton personajes
    ],
  );
}

Widget pulso(double anchooo, double altooo, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        width: anchooo * 0.7,
        height: altooo * 0.15,
        child: Stack(
          children: [
            Positioned(
              top: altooo * 0.02,
              left: anchooo * 0.05,
              child: Container(
                width: anchooo * 0.60,
                height: altooo * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange[200]),
              ),
            ),
            Positioned(
              top: altooo * 0.008,
              left: anchooo * 0.024,
              child: Container(
                width: anchooo * 0.60,
                height: altooo * 0.10,
                child: FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    print("pulso");
                  },
                  child: Row(children: [
                    Container(
                      height: altooo * 0.10,
                      width: anchooo * 0.5,
                      child: Center(
                        child: Text("120 bpm",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Colors.black, fontSize: 35)),
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ), // boton personajes
    ],
  );
}
