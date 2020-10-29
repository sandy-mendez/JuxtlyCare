import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juxtly_care/conecta.dart';
import 'package:juxtly_care/menuPrincipal.dart';
import 'package:juxtly_care/conf1.dart';
import 'package:juxtly_care/pageONE.dart';

class ccorreo extends StatefulWidget {
  ccorreo({Key key}) : super(key: key);

  @override
  _ccorreoState createState() => _ccorreoState();

  String correo;
  String contrasena;
}

class _ccorreoState extends State<ccorreo> {
  @override
  Widget build(BuildContext context) {
    double largo = MediaQuery.of(context).size.height;

    double anchoPantalla = MediaQuery.of(context).size.width;

    return Container(
      child: Center(
        child: Container(
          height: largo * 0.5,
          margin: EdgeInsets.all(10),
          width: anchoPantalla * 0.9,
          decoration: BoxDecoration(
              //color: Color.fromRGBO(223, 255, 255, 1),
              //borderRadius: BorderRadius.circular(15.0),
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                padding: EdgeInsets.only(left: 10, bottom: 13),
                child: _correoInput(),
                width: anchoPantalla * 0.90,
                height: largo * 0.1,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 13),
                child: _contrasenaInput(),
                width: anchoPantalla * 0.90,
                height: largo * 0.1,
              ),
              Spacer(),
              Center(
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100]),
                    width: anchoPantalla * 0.60,
                    child: FlatButton(
                      //padding: EdgeInsets.only(left: 10),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Conectando(
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
                      child: Text("Conectate con tu bebé",
                          style: GoogleFonts.lato(
                              fontSize: 18, color: Colors.black)),
                    )),
              ),
              Container(
                height: 70,
              ),
              Center(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber[200],
                    border: Border.all(color: Colors.grey, width: 3)),
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => confUno()),
                      );
                    },
                    child: Text("Registrate",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.black,
                        ))),
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

}
