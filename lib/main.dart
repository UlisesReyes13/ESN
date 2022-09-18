import 'package:esn/Screens/Alimentacion.dart';
import 'package:esn/Screens/AportacionesEconomicas.dart';
import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/Fotografia.dart';
import 'package:esn/Screens/PantallaPrueba.dart';
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
      home: LoginForm(),
    );
  }
}
