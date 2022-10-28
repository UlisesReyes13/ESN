import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextFormField.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/banio.dart';
import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/ServiciosLuz.dart';
import 'package:esn/replaceAll/replaceAllLetter.dart';
import 'package:esn/replaceAll/replaceAllNum.dart';
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

class ServiciosBanios extends StatefulWidget {
  String folio;
  ServiciosBanios(this.folio);

  @override
  State<ServiciosBanios> createState() => _ServiciosBaniosState();
}

class _ServiciosBaniosState extends State<ServiciosBanios> {
  List<Banio> _Banio = List<Banio>();

  ServBanio _banio = ServBanio.sanitario;
  final _otro = TextEditingController();
  bool val = false;

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

    replaceAllNum rpn = new replaceAllNum();
    replaceAllLetter rpl = new replaceAllLetter();
    var nomBanio = banio; // 'artlang'
    final tipoBanio = rpn.replaceNum(nomBanio);

    var baniopk = banio; // 'artlang'
    final pkBanio = rpl.replaceLetter(baniopk);

    Banio BModel = Banio(
        folio: widget.folio,
        pk_bano: int.parse(pkBanio.substring(0, 2).trimRight()),
        int_orden_bano: pkBanio.substring(0, 2).trimRight(),
        txt_desc_bano: tipoBanio.trimLeft(),
        otroBano: _otro.text);
    await DbHelper().upDateBanio(BModel).then((banio) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new ServiciosLuz(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  enviar() async {
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

    replaceAllNum rpn = new replaceAllNum();
    replaceAllLetter rpl = new replaceAllLetter();

    var nomBanio = banio; // 'artlang'
    final tipoBanio = rpn.replaceNum(nomBanio);

    var baniopk = banio; // 'artlang'
    final pkBanio = rpl.replaceLetter(baniopk);

    Banio BModel = Banio(
        folio: widget.folio,
        pk_bano: int.parse(pkBanio.substring(0, 2).trimRight()),
        int_orden_bano: pkBanio.substring(0, 2).trimRight(),
        txt_desc_bano: tipoBanio.trimLeft(),
        otroBano : _otro.text);

    await DbHelper().saveBanio(BModel).then((banio) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new ServiciosLuz(widget.folio);
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
                MaterialPageRoute(builder: (_) => DatosGenerales()),
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
                        val = false;
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
                        val = false;
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
                        val = false;
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
                        val = false;
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
                        val = false;
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
                        val = true;
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
                        val = false;
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
                        val = false;
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
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
                SizedBox(
                  height: 5.0,
                ),
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
