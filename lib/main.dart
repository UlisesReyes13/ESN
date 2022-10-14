import 'package:esn/Model/EscolaridadSeguridadSocial.dart';
import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/Escolaridad_SeguridadSocialTabla.dart';
import 'package:esn/Screens/Fotografia.dart';
import 'package:esn/Screens/Infraestructura_Vivienda.dart';
import 'package:esn/Screens/Salud_PertenenciaIndigenaTabla.dart';
import 'package:esn/Screens/ServiciosBanios.dart';
import 'package:esn/Screens/TablaFolios.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/Screens/EstructuraFamiliarTabla.dart';
import 'package:flutter/material.dart';
import 'Screens/LoginForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ESN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Salud_PertenenciaIndigenaTabla('9'),
    );
  }
}
