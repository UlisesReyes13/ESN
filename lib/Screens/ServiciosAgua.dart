import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/Agua.dart';
import 'package:esn/Screens/ServiciosLuz.dart';
import 'package:esn/replaceAll/replaceAllLetter.dart';
import 'package:esn/replaceAll/replaceAllNum.dart';
import 'package:flutter/material.dart';
import 'package:esn/Screens/ServiciosDrenaje.dart';

enum ServAgua {
  tomaDomiciliaria,
  tomaComun,
  pipa,
  pozo_rio_lago,
  llavePublica,
  acarreoVivienda,
  otraFuente,
  ninguna,
  noTiene,
  otro,
  pluvial
}

class ServiciosAgua extends StatefulWidget {
  String folio;
  ServiciosAgua(this.folio);

  @override
  State<ServiciosAgua> createState() => _ServiciosAguaState();
}

class _ServiciosAguaState extends State<ServiciosAgua> {
  ServAgua _agua = ServAgua.tomaDomiciliaria;
  final _otro = TextEditingController();
  bool val = false;

  enviar() async {
    String agua = _agua.name.toString();
    if (agua == 'tomaDomiciliaria') {
      agua = '1 1 Toma Domiciliaria';
    } else if (agua == 'tomaComun') {
      agua = '2 2 Toma Común o Fuera de Vivienda';
    } else if (agua == 'pipa') {
      agua = '3 3 Pipa';
    } else if (agua == 'pozo_rio_lago') {
      agua = '4 4 Pozo, Río, Lago';
    } else if (agua == 'llavePublica') {
      agua = '5 5 Llave Publica';
    } else if (agua == 'acarreoVivienda') {
      agua = '6 6 Acarrean de otra vivienda';
    } else if (agua == 'otraFuente') {
      agua = '7 7 Otra Fuente';
    } else if (agua == 'ninguna') {
      agua = '8 8 Ninguna';
    } else if (agua == 'noTiene') {
      agua = '9 9 No tiene';
    } else if (agua == 'otro') {
      agua = '10 10 Otro';
    } else if (agua == 'pluvial') {
      agua = '11 11 Pluvial';
    }

    replaceAllLetter rpl = new replaceAllLetter();
    replaceAllNum rpn = new replaceAllNum();
    var nomAgua = agua; // 'artlang'
    final tipoAgua = rpn.replaceNum(nomAgua);

    var aguapk = agua; // 'artlang'
    final pkAgua = rpl.replaceLetter(aguapk);

    Agua BModel = Agua(
        folio: widget.folio,
        claveServAgua: int.parse(pkAgua.substring(0, 2).trimRight()),
        ordenServAgua: pkAgua.substring(0, 2).trimRight(),
        servAgua: tipoAgua.trimLeft(),
        otroAgua: _otro.text);
    await DbHelper().upDateAgua(BModel).then((agua) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new ServiciosDrenaje(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => ServiciosLuz(widget.folio)),
                (Route<dynamic> route) => false);
          },
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(
                    controller: TextEditingController.fromValue(
                        TextEditingValue(text: widget.folio))),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'AGUA'),
                SizedBox(height: 5.0),
                ListTile(
                  title: Text('Toma Domiciliaria'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.tomaDomiciliaria,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Toma Común o Fuera De Vivivienda'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.tomaComun,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Pipa'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.pipa,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Pozo, Río, Lago'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.pozo_rio_lago,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Llave Publica'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.llavePublica,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Acarrean de Otra Vivienda'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.acarreoVivienda,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Otra Fuente'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.otraFuente,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Ninguna'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.ninguna,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('No Tiene'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.noTiene,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Otro'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.otro,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = true;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Pluvial'),
                  leading: Radio<ServAgua>(
                    value: ServAgua.pluvial,
                    groupValue: _agua,
                    onChanged: (ServAgua value) {
                      setState(() {
                        _agua = value;
                        val = false;
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otro,
                    enabled: val,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Servicio',
                      labelText: 'Otro Servicio',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: enviar,
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
                    label: Text(
                      'Continuar',
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
