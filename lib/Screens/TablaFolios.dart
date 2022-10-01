import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/DatosGeneralesModel.dart';
import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/LoginForm.dart';
import 'package:esn/Screens/ServiciosBanios.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:flutter/material.dart';

class TablaFolios extends StatefulWidget {
  @override
  State<TablaFolios> createState() => _TablaFoliosState();
}

class _TablaFoliosState extends State<TablaFolios> {
  var dbHelper = DbHelper();
  List<DatosGeneralesModel> _Datos = List<DatosGeneralesModel>();
  getAll() async {
    var d = await dbHelper.datos();
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _Datos = d;
    });
  }

  @override
  void initState() {
    getAll();
    super.initState();
  }

  _buildTable() {
    if (_Datos.isEmpty) {
      return Container(
        child: Center(
          child: Column(
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 50.0),
              Text(
                'No hay estudios realizados',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'Genera uno nuevo presionando el boton',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      );
    }
    return DataTable(
      headingTextStyle: TextStyle(fontSize: 30, color: Colors.black),
      dataTextStyle: TextStyle(fontSize: 20, color: Colors.black),
      showBottomBorder: true,
      columns: [
        DataColumn(label: Text('No. Folio')),
        DataColumn(label: Text('Fecha')),
        DataColumn(label: Text('Editar')),
      ],
      rows: _Datos.map((e) => DataRow(cells: [
            DataCell(Text(e.folio.toString())),
            DataCell(Text(e.fecha)),
            DataCell(IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ActualizarEstudio(e.folio.toString())),
                  (Route<dynamic> route) => false,
                );
              },
            ))
          ])).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudios Socio - Nutricio Realizados'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginForm()),
                (Route<dynamic> route) => false,
              );
            }),
      ),
      body: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => DatosGenerales()),
                            (Route<dynamic> route) => false);
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Nuevo Estudio',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      children: [Expanded(child: _buildTable())],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
