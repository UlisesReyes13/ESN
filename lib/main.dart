import 'package:esn/Model/EscolaridadSeguridadSocial.dart';
import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/Escolaridad_SeguridadSocialTabla.dart';
import 'package:esn/Screens/EstructuraFamiliarTabla.dart';
import 'package:esn/Screens/Remesas.dart';
import 'package:esn/Screens/Salud_PertenenciaIndigenaTabla.dart';
import 'package:esn/Screens/ServiciosBanios.dart';
import 'package:esn/Screens/TablaFolios.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/ScreensActualizar/EstructuraFamiliarActualizar.dart';
import 'package:esn/ScreensActualizar/Salud_PertenenciaIndigenaActualizar.dart';
import 'package:flutter/material.dart';
import 'Screens/ApoyosEnEspecie.dart';
import 'Screens/LoginForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ESN v1.1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),


      home: Salud_PertenenciaIndigenaTabla("1006"),

    );
  }
}
