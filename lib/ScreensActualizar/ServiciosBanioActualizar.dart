import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/banio.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/ScreensActualizar/ServiciosLuzActualizar.dart';
import 'package:flutter/material.dart';

enum ServBanio {
  sanitario,
  sindescarga,
  aguaConCubeta,
  letrinaSeca,
  pozo_hoyo,
  noTiene,
  razSuelo,
  otro
}

class ServiciosBaniosActualizar extends StatefulWidget {
  String folio;
  ServiciosBaniosActualizar(this.folio);

  @override
  State<ServiciosBaniosActualizar> createState() =>
      _ServiciosBaniosActualizarState();
}

class _ServiciosBaniosActualizarState extends State<ServiciosBaniosActualizar> {
  List<Banio> _Banio = List<Banio>();

  ServBanio _banio = ServBanio.sanitario;

  Actualizar() async {
    String banio = _banio.name.toString();
    if (banio == 'sanitario') {
      banio = '1 1 SANITARIO / BAÑO CON DESCARGA DIRECTA';
    } else if (banio == 'sindescarga') {
      banio = '2 2 SANITARIO / BAÑO SIN DESCARGA DIRECTA';
    } else if (banio == 'aguaConCubeta') {
      banio = '8 8 AGUA CON CUBETA';
    } else if (banio == 'letrinaSeca') {
      banio = '3 3 LETRINA SECA';
    } else if (banio == 'pozo_hoyo') {
      banio = '4 4 POZO U HOYO';
    } else if (banio == 'noTiene') {
      banio = '7 7 NO TIENE';
    } else if (banio == 'rasSuelo') {
      banio = '5 5 RAZ DEL SUELO';
    } else if (banio == 'otro') {
      banio = '6 6 OTRO';
    }

    var nomBanio = banio; // 'artlang'
    final tipoBanio = nomBanio
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var baniopk = banio; // 'artlang'
    final pkBanio = baniopk
        .replaceAll("A", "")
        .replaceAll("B", "")
        .replaceAll("C", "")
        .replaceAll("D", "")
        .replaceAll("E", "")
        .replaceAll("F", "")
        .replaceAll("G", "")
        .replaceAll("H", "")
        .replaceAll("I", "")
        .replaceAll("J", "")
        .replaceAll("K", "")
        .replaceAll("L", "")
        .replaceAll("M", "")
        .replaceAll("N", "")
        .replaceAll("Ñ", "")
        .replaceAll("O", "")
        .replaceAll("P", "")
        .replaceAll("Q", "")
        .replaceAll("R", "")
        .replaceAll("S", "")
        .replaceAll("T", "")
        .replaceAll("V", "")
        .replaceAll("W", "")
        .replaceAll("X", "")
        .replaceAll("Y", "")
        .replaceAll("Z", "")
        .replaceAll("a", "")
        .replaceAll("b", "")
        .replaceAll("c", "")
        .replaceAll("d", "")
        .replaceAll("e", "")
        .replaceAll("f", "")
        .replaceAll("g", "")
        .replaceAll("h", "")
        .replaceAll("i", "")
        .replaceAll("j", "")
        .replaceAll("k", "")
        .replaceAll("l", "")
        .replaceAll("m", "")
        .replaceAll("n", "")
        .replaceAll("ñ", "")
        .replaceAll("o", "")
        .replaceAll("p", "")
        .replaceAll("q", "")
        .replaceAll("r", "")
        .replaceAll("s", "")
        .replaceAll("t", "")
        .replaceAll("u", "")
        .replaceAll("v", "")
        .replaceAll("w", "")
        .replaceAll("x", "")
        .replaceAll("y", "")
        .replaceAll("Á", "")
        .replaceAll("É", "")
        .replaceAll("Í", "")
        .replaceAll("Ó", "")
        .replaceAll("Ú", "")
        .replaceAll("á", "")
        .replaceAll("é", "")
        .replaceAll("í", "")
        .replaceAll("ó", "")
        .replaceAll("ú", "")
        .replaceAll("z", "");

    Banio BModel = Banio(
        folio: widget.folio,
        pk_bano: int.parse(pkBanio.substring(0, 2).trimRight()),
        int_orden_bano: pkBanio.substring(0, 2).trimRight(),
        txt_desc_bano: tipoBanio.trimLeft());
    await DbHelper().upDateBanio(BModel).then((banio) {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(
                    controller: TextEditingController.fromValue(
                        TextEditingValue(text: widget.folio))),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Baño o Excusado'),
                SizedBox(height: 5.0),
                ListTile(
                  title: Text('Sanitario / Baño Con Descarga Directa'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.sanitario,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Sanitario / Baño Sin Descarga Directa'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.sindescarga,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Letrina Seca'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.letrinaSeca,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Pozo u Hoyo'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.pozo_hoyo,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Ras Del Suelo'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.razSuelo,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Otro'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.otro,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('No Tiene'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.noTiene,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Agua Con Cubeta'),
                  leading: Radio<ServBanio>(
                    value: ServBanio.aguaConCubeta,
                    groupValue: _banio,
                    onChanged: (ServBanio value) {
                      setState(() {
                        _banio = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: Actualizar,
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
