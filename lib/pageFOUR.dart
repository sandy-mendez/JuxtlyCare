import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juxtly_care/conecta.dart';
import 'package:juxtly_care/exito.dart';
import 'package:juxtly_care/menuPrincipal.dart';

class pagCuatro extends StatefulWidget {
  pagCuatro({Key key}) : super(key: key);

  @override
  _pagCuatroState createState() => _pagCuatroState();

  String correo;
  String contrasena;
}

class _pagCuatroState extends State<pagCuatro> {
  @override
  Widget build(BuildContext context) {
    double largo = MediaQuery.of(context).size.height;

    double anchoPantalla = MediaQuery.of(context).size.width;

    return Container(
      child: Center(
        child: Container(
          height: largo * 0.6,
          margin: EdgeInsets.all(10),
          width: anchoPantalla * 0.9,
          decoration: BoxDecoration(
              //color: Color.fromRGBO(223, 255, 255, 1),
              //borderRadius: BorderRadius.circular(15.0),
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      "Conectar con ",
                      style: TextStyle(color: Colors.pink[400], fontSize: 20),
                    ),
                    Text(" Bluetooth",
                        style: TextStyle(color: Colors.blue, fontSize: 20)),
                    Expanded(child: Container())
                  ],
                ),
              ),
              Container(
                height: largo * 0.4,
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Container(
                        child: Stack(
                      children: [
                        Image.asset("assets/bluee.png"),
                      ],
                    )),
                    Expanded(child: Container()),
                    Container(
                        child: Stack(
                      children: [
                        Image.asset(
                          "assets/wifi.gif",
                          width: 100,
                        ),
                      ],
                    )),
                    Expanded(child: Container()),
                    Container(
                        child: Stack(
                      children: [
                        Image.asset("assets/pulsera.png"),
                      ],
                    )),
                  ],
                ),
              ),
              Center(
                  child: Row(
                children: [
                  Expanded(child: Container()),
                  Icon(
                    Icons.settings,
                    size: 25,
                  ),
                  Text(
                    " \n  Configurar el dispositivo \n  ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Expanded(child: Container())
                ],
              )),
              Center(
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[400]),
                    width: anchoPantalla * 0.60,
                    child: FlatButton(
                      //padding: EdgeInsets.only(left: 10),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Exito(
                                  correo: widget.correo,
                                  contrasena: widget.contrasena,
                                )));
                        print('navegando');
                        if ((widget.correo != null) &&
                            (widget.contrasena != null)) {
                          //en caso de que no haya campos nulos
                          //builder

                        }
                      },
                      child: Text("Siguiente",
                          style: GoogleFonts.lato(
                              fontSize: 18, color: Colors.black)),
                    )),
              ),
              Container(
                height: largo * 0.01,
              ),
              Center(
                  child: Container(
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Icon(Icons.fiber_manual_record,
                        color: Colors.grey, size: 20),
                    Icon(Icons.fiber_manual_record,
                        color: Colors.grey, size: 20),
                    Icon(Icons.fiber_manual_record,
                        color: Colors.grey, size: 20),
                    Icon(Icons.cloud_circle, color: Colors.grey, size: 20),
                    Expanded(child: Container()),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
