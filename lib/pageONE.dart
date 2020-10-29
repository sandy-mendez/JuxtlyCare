import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juxtly_care/conecta.dart';
import 'package:juxtly_care/conf2.dart';
import 'package:juxtly_care/menuPrincipal.dart';

class pagUno extends StatefulWidget {
  pagUno({Key key}) : super(key: key);

  @override
  _pagUnoState createState() => _pagUnoState();

  String correo;
  String contrasena;
}

class _pagUnoState extends State<pagUno> {
  bool rememberMe = false;
  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

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
                      "Datos",
                      style: TextStyle(color: Colors.pink[400], fontSize: 20),
                    ),
                    Text(" personales",
                        style: TextStyle(color: Colors.blue, fontSize: 20)),
                    Expanded(child: Container())
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink[100]),
                padding: EdgeInsets.only(left: 10, bottom: 13),
                child: _correoInput(),
                width: anchoPantalla * 0.90,
                height: largo * 0.1,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100]),
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 13),
                child: _contrasenaInput(),
                width: anchoPantalla * 0.90,
                height: largo * 0.1,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[100]),
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 13),
                child: _contrasenaInput2(),
                width: anchoPantalla * 0.90,
                height: largo * 0.1,
              ),
              Spacer(),
              Container(
                child: Row(
                  children: [
                    Checkbox(
                        value: rememberMe, onChanged: _onRememberMeChanged),
                    Text("Acepto los términos y condiciones")
                  ],
                ),
              ),
              Expanded(child: Container()),
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
                            builder: (context) => confDos(
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
                    Icon(Icons.cloud_circle, color: Colors.grey, size: 20),
                    Icon(Icons.fiber_manual_record,
                        color: Colors.grey, size: 20),
                    Icon(Icons.fiber_manual_record,
                        color: Colors.grey, size: 20),
                    Icon(Icons.fiber_manual_record,
                        color: Colors.grey, size: 20),
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

  String initialCorreo() {
    if (widget.correo == null) {
      return " ";
    } else {
      return "${widget.correo.toString()}";
    }
  } //initialActivity

  String initialContrasena() {
    if (widget.contrasena == null) {
      return " ";
    } else {
      return "${widget.contrasena.toString()}";
    }
  } //initialConcentracion

  String initialContrasena2() {
    if (widget.contrasena == null) {
      return " ";
    } else {
      return "${widget.contrasena.toString()}";
    }
  }

  Widget _correoInput() {
    return TextFormField(
      initialValue: initialCorreo(),
      decoration: InputDecoration(
        labelText: "Correo electrónico",
        labelStyle: TextStyle(fontSize: 18),
      ),
      onChanged: (correoo) {
        widget.correo = correoo;
        print("El correo es ${widget.correo}");
      },
    );
  } // actividadInput

  Widget _contrasenaInput() {
    return TextFormField(
      initialValue: initialContrasena(),
      decoration: InputDecoration(
        labelText: "Contraseña",
        labelStyle: TextStyle(fontSize: 18),
      ),
      onChanged: (contra) {
        widget.contrasena = contra;
        print("La contraseña es ${widget.contrasena}");
      },
    );
  } //concentracionInput

  Widget _contrasenaInput2() {
    return TextFormField(
      initialValue: initialContrasena(),
      decoration: InputDecoration(
        labelText: "Confirmar contraseña",
        labelStyle: TextStyle(fontSize: 18),
      ),
      onChanged: (contra) {
        widget.contrasena = contra;
        print("La contraseña es ${widget.contrasena}");
      },
    );
  } //

}
