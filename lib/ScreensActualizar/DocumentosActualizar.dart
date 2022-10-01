import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/DocumentosModel.dart';
import 'package:esn/Screens/Alimentacion.dart';
import 'package:esn/Screens/Remesas.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/ScreensActualizar/ResolucionActualizar.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';

enum Curp { si, no }

enum ActaNacimiento { si, no }

enum ComprobanteDomicilio { si, no }

enum INE { si, no }

class DocumentosActualizar extends StatefulWidget {
  String folio;
  DocumentosActualizar(this.folio);

  @override
  State<DocumentosActualizar> createState() => _DocumentosState();
}

class _DocumentosState extends State<DocumentosActualizar> {
  Curp _curp = Curp.si;
  ActaNacimiento _actaNacimiento = ActaNacimiento.si;
  ComprobanteDomicilio _comprobanteDomicilio = ComprobanteDomicilio.si;
  INE _ine = INE.si;
  List<DocumentosModel> _Documentos = List<DocumentosModel>();
  var dbHelper;

  @override
  initState() {
    getAllDocumentos();
    super.initState();
  }

  getAllDocumentos() async {
    _Documentos = List<DocumentosModel>();
    var categories =
        await CategoryService().readDocmentos(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = DocumentosModel();
        categoryModel.folio = category['folio'];
        categoryModel.curp = category['curp'];
        categoryModel.actaNacimiento = category['actaNacimiento'];
        categoryModel.comprobanteDomicilio = category['comprobanteDomicilio'];
        categoryModel.ine = category['ine'];
        _Documentos.add(categoryModel);
      });
    });

    if (_Documentos.map((e) => e.curp.toString()).first == "si") {
      _curp = Curp.si;
    } else if (_Documentos.map((e) => e.curp.toString()).first == "no") {
      _curp = Curp.no;
    }

    if (_Documentos.map((e) => e.actaNacimiento.toString()).first == "si") {
      _actaNacimiento = ActaNacimiento.si;
    } else if (_Documentos.map((e) => e.actaNacimiento.toString()).first ==
        "no") {
      _actaNacimiento = ActaNacimiento.no;
    }

    if (_Documentos.map((e) => e.comprobanteDomicilio.toString()).first ==
        "si") {
      _comprobanteDomicilio = ComprobanteDomicilio.si;
    } else if (_Documentos.map((e) => e.comprobanteDomicilio.toString())
            .first ==
        "no") {
      _comprobanteDomicilio = ComprobanteDomicilio.no;
    }

    if (_Documentos.map((e) => e.ine.toString()).first == "si") {
      _ine = INE.si;
    } else if (_Documentos.map((e) => e.ine.toString()).first == "no") {
      _ine = INE.no;
    }
  }

  actualizar() async {
    DocumentosModel BModel = DocumentosModel(
        folio: int.parse(widget.folio),
        curp: _curp.name,
        actaNacimiento: _actaNacimiento.name,
        comprobanteDomicilio: _comprobanteDomicilio.name,
        ine: _ine.name);

    await DbHelper().upDateDocumentos(BModel).then((documentosModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new ActualizarEstudio(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(
                  controller: TextEditingController.fromValue(
                      TextEditingValue(text: widget.folio)),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: getAllDocumentos,
                    icon: Icon(Icons.add_circle_outline, color: Colors.white),
                    label: Text(
                      'Cargar datos',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'CURP'),
                Row(
                  children: <Widget>[
                    //CURP
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<Curp>(
                          value: Curp.si,
                          groupValue: _curp,
                          onChanged: (Curp value) {
                            setState(() {
                              _curp = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<Curp>(
                          value: Curp.no,
                          groupValue: _curp,
                          onChanged: (Curp value) {
                            setState(() {
                              _curp = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question: 'Acta Nacimiento(titular menor de edad)'),
                Row(
                  children: <Widget>[
                    //Acta Nacimiento
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<ActaNacimiento>(
                          value: ActaNacimiento.si,
                          groupValue: _actaNacimiento,
                          onChanged: (ActaNacimiento value) {
                            setState(() {
                              _actaNacimiento = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<ActaNacimiento>(
                          value: ActaNacimiento.no,
                          groupValue: _actaNacimiento,
                          onChanged: (ActaNacimiento value) {
                            setState(() {
                              _actaNacimiento = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Comprobante de Domicilio'),
                Row(
                  children: <Widget>[
                    //Comprobante Domicilio
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<ComprobanteDomicilio>(
                          value: ComprobanteDomicilio.si,
                          groupValue: _comprobanteDomicilio,
                          onChanged: (ComprobanteDomicilio value) {
                            setState(() {
                              _comprobanteDomicilio = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<ComprobanteDomicilio>(
                          value: ComprobanteDomicilio.no,
                          groupValue: _comprobanteDomicilio,
                          onChanged: (ComprobanteDomicilio value) {
                            setState(() {
                              _comprobanteDomicilio = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'INE'),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<INE>(
                          value: INE.si,
                          groupValue: _ine,
                          onChanged: (INE value) {
                            setState(() {
                              _ine = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<INE>(
                          value: INE.no,
                          groupValue: _ine,
                          onChanged: (INE value) {
                            setState(() {
                              _ine = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: actualizar,
                    icon: Icon(Icons.arrow_circle_right_outlined,
                        color: Colors.white),
                    label: Text(
                      'Actualizar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
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
