import 'package:flutter/material.dart';
import 'package:juxtly_care/conecta.dart';
import 'package:juxtly_care/conf1.dart';
import 'package:juxtly_care/conf2.dart';
import 'package:juxtly_care/conf3.dart';
import 'package:juxtly_care/conf4.dart';
import 'package:juxtly_care/exito.dart';
import 'package:juxtly_care/menuPrincipal.dart';
import 'package:juxtly_care/pantalla_carga.dart';
import 'inicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Juxtly Care',
      routes: {
        'pantallaInicio': (BuildContext context) => SplashScreen(),
        'menuInicio': (BuildContext context) => MenuInicio(),
        'inicio': (BuildContext context) => ingresa(),
        'conectnado': (BuildContext context) => Conectando(),
        'ConfUno': (BuildContext context) => confUno(),
        'ConfDos': (BuildContext context) => confDos(),
        'ConfTres': (BuildContext context) => confTres(),
        'ConfCuatro': (BuildContext context) => confCuatro(),
        'exitoso': (BuildContext context) => Exito(),
      },
      initialRoute: 'pantallaInicio',
    );
  }
}
