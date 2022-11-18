import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/AlimentacionModel.dart';
import 'package:esn/Screens/Documentos.dart';
import 'package:esn/Screens/Remesas.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';

import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';

enum uno { si, no }

enum dos { si, no }

enum tres { si, no }

enum cuatro { si, no }

enum cinco { si, no }

enum seis { si, no }

enum siete { si, no }

enum ocho { si, no }

enum nueve { si, no }

enum diez { si, no }

enum once { si, no }

enum doce { si, no }

enum menor { si, no }

class Alimentacion extends StatefulWidget {
  String folio;

  Alimentacion(this.folio);

  @override
  State<Alimentacion> createState() => _AlimentacionState();
}

class _AlimentacionState extends State<Alimentacion> {
  uno _uno = uno.no;
  dos _dos = dos.no;
  tres _tres = tres.no;
  cuatro _cuatro = cuatro.no;
  cinco _cinco = cinco.no;
  seis _seis = seis.no;

  siete _siete = siete.no;
  ocho _ocho = ocho.no;
  nueve _nueve = nueve.no;
  diez _diez = diez.no;
  once _once = once.no;
  doce _doce = doce.no;

  List<AlimentacionModel> _Alimentacion = [];

  getAllAlimentacion() async {
    _Alimentacion = [];
    var categories =
        await CategoryService().readAlimentacion(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = AlimentacionModel();
        categoryModel.folio = category['folio'];
        categoryModel.pregunta1 = category['pregunta1'];
        categoryModel.pregunta2 = category['pregunta2'];
        categoryModel.pregunta3 = category['pregunta3'];
        categoryModel.pregunta4 = category['pregunta4'];
        categoryModel.pregunta5 = category['pregunta5'];
        categoryModel.pregunta6 = category['pregunta6'];
        categoryModel.pregunta7 = category['pregunta7'];
        categoryModel.pregunta8 = category['pregunta8'];
        categoryModel.pregunta9 = category['pregunta9'];
        categoryModel.pregunta10 = category['pregunta10'];
        categoryModel.pregunta11 = category['pregunta11'];
        categoryModel.pregunta12 = category['pregunta12'];

        _Alimentacion.add(categoryModel);
      });
    });

    if (_Alimentacion.map((e) => e.pregunta1.toString()).first == "si") {
      _uno = uno.si;
    } else if (_Alimentacion.map((e) => e.pregunta1.toString()).first == "no") {
      _uno = uno.no;
    }

    if (_Alimentacion.map((e) => e.pregunta2.toString()).first == "si") {
      _dos = dos.si;
    } else if (_Alimentacion.map((e) => e.pregunta2.toString()).first == "no") {
      _dos = dos.no;
    }

    if (_Alimentacion.map((e) => e.pregunta3.toString()).first == "si") {
      _tres = tres.si;
    } else if (_Alimentacion.map((e) => e.pregunta3.toString()).first == "no") {
      _tres = tres.no;
    }

    if (_Alimentacion.map((e) => e.pregunta4.toString()).first == "si") {
      _cuatro = cuatro.si;
    } else if (_Alimentacion.map((e) => e.pregunta4.toString()).first == "no") {
      _cuatro = cuatro.no;
    }

    if (_Alimentacion.map((e) => e.pregunta5.toString()).first == "si") {
      _cinco = cinco.si;
    } else if (_Alimentacion.map((e) => e.pregunta5.toString()).first == "no") {
      _cinco = cinco.no;
    }

    if (_Alimentacion.map((e) => e.pregunta6.toString()).first == "si") {
      _seis = seis.si;
    } else if (_Alimentacion.map((e) => e.pregunta6.toString()).first == "no") {
      _seis = seis.no;
    }

    if (_Alimentacion.map((e) => e.pregunta7.toString()).first == "si") {
      _siete = siete.si;
    } else if (_Alimentacion.map((e) => e.pregunta7.toString()).first == "no") {
      _siete = siete.no;
    }

    if (_Alimentacion.map((e) => e.pregunta8.toString()).first == "si") {
      _ocho = ocho.si;
    } else if (_Alimentacion.map((e) => e.pregunta8.toString()).first == "no") {
      _ocho = ocho.no;
    }

    if (_Alimentacion.map((e) => e.pregunta9.toString()).first == "si") {
      _nueve = nueve.si;
    } else if (_Alimentacion.map((e) => e.pregunta9.toString()).first == "no") {
      _nueve = nueve.no;
    }

    if (_Alimentacion.map((e) => e.pregunta10.toString()).first == "si") {
      _diez = diez.si;
    } else if (_Alimentacion.map((e) => e.pregunta10.toString()).first ==
        "no") {
      _diez = diez.no;
    }

    if (_Alimentacion.map((e) => e.pregunta11.toString()).first == "si") {
      _once = once.si;
    } else if (_Alimentacion.map((e) => e.pregunta11.toString()).first ==
        "no") {
      _once = once.no;
    }

    if (_Alimentacion.map((e) => e.pregunta12.toString()).first == "si") {
      _doce = doce.si;
    } else if (_Alimentacion.map((e) => e.pregunta12.toString()).first ==
        "no") {
      _doce = doce.no;
    }
  }

  actualizar() async {
    AlimentacionModel BModel = AlimentacionModel(
        folio: int.parse(widget.folio),
        pregunta1: _uno.name,
        pregunta2: _dos.name,
        pregunta3: _tres.name,
        pregunta4: _cuatro.name,
        pregunta5: _cinco.name,
        pregunta6: _seis.name,
        pregunta7: _siete.name,
        pregunta8: _ocho.name,
        pregunta9: _nueve.name,
        pregunta10: _diez.name,
        pregunta11: _once.name,
        pregunta12: _doce.name);

    await DbHelper().upDateAlimentacion(BModel).then((alimentacionModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Documentos(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  enviar() async {
    AlimentacionModel BModel = AlimentacionModel(
        folio: int.parse(widget.folio),
        pregunta1: _uno.name,
        pregunta2: _dos.name,
        pregunta3: _tres.name,
        pregunta4: _cuatro.name,
        pregunta5: _cinco.name,
        pregunta6: _seis.name,
        pregunta7: _siete.name,
        pregunta8: _ocho.name,
        pregunta9: _nueve.name,
        pregunta10: _diez.name,
        pregunta11: _once.name,
        pregunta12: _doce.name);

    await DbHelper().saveAlimentacion(BModel).then((alimentacionModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Documentos(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    var encabezado1 =
        'EN LOS ULTIMOS 3 MESES, POR FALTA DE DINERO U \n OTROS RECURSOS...';
    var pregunta1 =
        '1. ¿Alguna vez usted  o algún adulto en su hogar tuvo una alimentación basada \n en poca variedad de alimentos?';
    var pregunta3 =
        '3. ¿Alguna vez usted  o algún adulto en su hogar comió menos de lo que piensa \n debia comer?';
    var pregunta6 =
        '6. ¿Alguna vez ustede o algún adulto de su hogar sólo comió una vez al día o dejo \n de come durante el día?';
    var encabezado2 =
        'SI EN EL HOGAR NO HAY PERSONAS MENORES DE 18 AÑOS \n PASE A LA SECCIÓN 8. RESULTADOS';
    var pregunta7 =
        '7. ¿Alguna vez algún menor de 18 años en su hogar tuvo una alimentación basada \n en poca variedad de alimentos?';
    var pregunta9 =
        '9. ¿Alguna vez en su hogar tuvieron tuvieron que disminuir la cantidad servida en \n la comida a algún menor de 18 años?';
    var pregunta12 =
        '12. ¿Alguna vez algún menor de 18 años comió una vez al día o dejó de comer \n durante todo un día?';
    if (orientation == Orientation.landscape) {
      encabezado1 =
          'EN LOS ULTIMOS 3 MESES, POR FALTA DE DINERO U OTROS RECURSOS...';
      pregunta1 =
          '1. ¿Alguna vez usted  o algún adulto en su hogar tuvo una alimentación basada en poca variedad de alimentos?';
      pregunta3 =
          '3. ¿Alguna vez usted  o algún adulto en su hogar comió menos de lo que piensa debia comer?';
      pregunta6 =
          '6. ¿Alguna vez ustede o algún adulto de su hogar sólo comió una vez al día o dejo de come durante el día?';
      encabezado2 =
          'SI EN EL HOGAR NO HAY PERSONAS MENORES DE 18 AÑOS PASE A LA SECCIÓN 8. RESULTADOS';
      pregunta7 =
          '7. ¿Alguna vez algún menor de 18 años en su hogar tuvo una alimentación basada en poca variedad de alimentos?';
      pregunta9 =
          '9. ¿Alguna vez en su hogar tuvieron tuvieron que disminuir la cantidad servida en la comida a algún menor de 18 años?';
      pregunta12 =
          '12. ¿Alguna vez algún menor de 18 años comió una vez al día o dejó de comer durante todo un día?';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Alimentación'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => Remesas(widget.folio)),
                (Route<dynamic> route) => false);
          },
        ),
      ),
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
                    onPressed: getAllAlimentacion,
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
                getTextEquipamiento(encabezado: encabezado1),
                SizedBox(height: 10.0),
                getTextQuestion(question: pregunta1),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<uno>(
                          value: uno.si,
                          groupValue: _uno,
                          onChanged: (uno value) {
                            setState(() {
                              _uno = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<uno>(
                          value: uno.no,
                          groupValue: _uno,
                          onChanged: (uno value) {
                            setState(() {
                              _uno = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question:
                        '2. ¿Alguna vez usted  o algún adulto en su hogar dejó de desayunar, comer o cenar?'),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<dos>(
                          value: dos.si,
                          groupValue: _dos,
                          onChanged: (dos value) {
                            setState(() {
                              _dos = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<dos>(
                          value: dos.no,
                          groupValue: _dos,
                          onChanged: (dos value) {
                            setState(() {
                              _dos = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: pregunta3),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<tres>(
                          value: tres.si,
                          groupValue: _tres,
                          onChanged: (tres value) {
                            setState(() {
                              _tres = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<tres>(
                          value: tres.no,
                          groupValue: _tres,
                          onChanged: (tres value) {
                            setState(() {
                              _tres = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question: '4. ¿Alguna vez se quedaron sin comida?'),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<cuatro>(
                          value: cuatro.si,
                          groupValue: _cuatro,
                          onChanged: (cuatro value) {
                            setState(() {
                              _cuatro = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<cuatro>(
                          value: cuatro.no,
                          groupValue: _cuatro,
                          onChanged: (cuatro value) {
                            setState(() {
                              _cuatro = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question:
                        '5. ¿Alguna vez ustede o algún adulto de su hogar sintió hambre, pero no comió?'),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<cinco>(
                          value: cinco.si,
                          groupValue: _cinco,
                          onChanged: (cinco value) {
                            setState(() {
                              _cinco = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<cinco>(
                          value: cinco.no,
                          groupValue: _cinco,
                          onChanged: (cinco value) {
                            setState(() {
                              _cinco = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: pregunta6),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<seis>(
                          value: seis.si,
                          groupValue: _seis,
                          onChanged: (seis value) {
                            setState(() {
                              _seis = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<seis>(
                          value: seis.no,
                          groupValue: _seis,
                          onChanged: (seis value) {
                            setState(() {
                              _seis = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                SizedBox(height: 10.0),
                getTextEquipamiento(encabezado: encabezado2),
                SizedBox(height: 10.0),
                getTextQuestion(question: pregunta7),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<siete>(
                          value: siete.si,
                          groupValue: _siete,
                          onChanged: (siete value) {
                            setState(() {
                              _siete = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<siete>(
                          value: siete.no,
                          groupValue: _siete,
                          onChanged: (siete value) {
                            setState(() {
                              _siete = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question:
                        '8. ¿Alguna vez algún menor de 18 años en su hogar comió menos de lo que debia?'),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<ocho>(
                          value: ocho.si,
                          groupValue: _ocho,
                          onChanged: (ocho value) {
                            setState(() {
                              _ocho = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<ocho>(
                          value: ocho.no,
                          groupValue: _ocho,
                          onChanged: (ocho value) {
                            setState(() {
                              _ocho = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: pregunta9),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<nueve>(
                          value: nueve.si,
                          groupValue: _nueve,
                          onChanged: (nueve value) {
                            setState(() {
                              _nueve = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<nueve>(
                          value: nueve.no,
                          groupValue: _nueve,
                          onChanged: (nueve value) {
                            setState(() {
                              _nueve = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question:
                        '10. ¿Alguna vez algún menor de 18 años en su hogar sintió hambre, pero no comió?'),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<diez>(
                          value: diez.si,
                          groupValue: _diez,
                          onChanged: (diez value) {
                            setState(() {
                              _diez = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<diez>(
                          value: diez.no,
                          groupValue: _diez,
                          onChanged: (diez value) {
                            setState(() {
                              _diez = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(
                    question:
                        '11. ¿Alguna vez algún menor de 18 años se durmio con hambre?'),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<once>(
                          value: once.si,
                          groupValue: _once,
                          onChanged: (once value) {
                            setState(() {
                              _once = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<once>(
                          value: once.no,
                          groupValue: _once,
                          onChanged: (once value) {
                            setState(() {
                              _once = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: pregunta12),
                Row(
                  children: <Widget>[
                    //INE
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<doce>(
                          value: doce.si,
                          groupValue: _doce,
                          onChanged: (doce value) {
                            setState(() {
                              _doce = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<doce>(
                          value: doce.no,
                          groupValue: _doce,
                          onChanged: (doce value) {
                            setState(() {
                              _doce = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
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
