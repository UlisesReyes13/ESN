import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/ApoyoEnEspecieModel.dart';
import 'package:esn/Screens/AportacionesEconomicas.dart';
import 'package:esn/Screens/Remesas.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';
import '../Model/ApoyoFrecuencia.dart';
import '../Model/ApoyosGobMx.dart';

class ApoyosEnEspecie extends StatefulWidget {
  String folio;

  ApoyosEnEspecie(this.folio);

  @override
  State<ApoyosEnEspecie> createState() => _ApoyosEnEspecieState();
}

class _ApoyosEnEspecieState extends State<ApoyosEnEspecie> {
  final _tipoApoyo = TextEditingController();
  final _otroApoyo = TextEditingController();
  final _quienProporciona = TextEditingController();
  final _frecuenciaApoyo = TextEditingController();
  bool valApoyo = false;

  List<ApoyoEnEspecieModel> _ApoyoEspecie = List<ApoyoEnEspecieModel>();
  List<ApoyosGobMx> _Apoyo = List<ApoyosGobMx>();
  List<ApoyoFrecuencia> _Frecuencia = List<ApoyoFrecuencia>();
  List<ApoyosGobMx> _Proporcionado = List<ApoyosGobMx>();
  List<ApoyosGobMx> _ClaveApoyo = List<ApoyosGobMx>();
  List<ApoyosGobMx> _OrdenApoyo = List<ApoyosGobMx>();
  List<ApoyoFrecuencia> _ClaveFrecuencia = List<ApoyoFrecuencia>();
  List<ApoyoFrecuencia> _OrdenFrecuencia = List<ApoyoFrecuencia>();

  @override
  void initState() {
    getAllCategoriesApoyo();
    getAllCategoriesProporcionado();
    getAllCategoriesFrecuencia();
    super.initState();
  }

  getClaveApoyo(String Apoyo) async {
    _ClaveApoyo = List<ApoyosGobMx>();
    var categories = await CategoryService().readClaveApoyo(Apoyo);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyosGobMx();
        categoryModel.ClaveApoyo = category['ClaveApoyo'];
        _ClaveApoyo.add(categoryModel);
      });
    });
  }

  getOrdenApoyo(String Apoyo) async {
    _OrdenApoyo = List<ApoyosGobMx>();
    var categories = await CategoryService().readOrdenApoyo(Apoyo);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyosGobMx();
        categoryModel.OrdenApoyo = category['OrdenApoyo'];
        _OrdenApoyo.add(categoryModel);
      });
    });
  }

  getOrdenFrecuencia(String Frecuencia) async {
    _OrdenFrecuencia = List<ApoyoFrecuencia>();
    var categories = await CategoryService().readOrdenFrecuencia(Frecuencia);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyoFrecuencia();
        categoryModel.OrdenFrecuencia = category['OrdenFrecuencia'];
        _OrdenFrecuencia.add(categoryModel);
      });
    });
  }

  getClaveFrecuencia(String Frecuencia) async {
    _ClaveFrecuencia = List<ApoyoFrecuencia>();
    var categories = await CategoryService().readClaveFrecuencia(Frecuencia);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyoFrecuencia();
        categoryModel.ClaveFrecuencia = category['ClaveFrecuencia'];
        _ClaveFrecuencia.add(categoryModel);
      });
    });
  }

  getAllCategoriesApoyo() async {
    _Apoyo = List<ApoyosGobMx>();
    var categories = await CategoryService().readCategoriesApoyos();
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyosGobMx();
        categoryModel.Apoyo = category['Apoyo'];
        _Apoyo.add(categoryModel);
      });
    });
  }

  getAllCategoriesProporcionado() async {
    _Proporcionado = List<ApoyosGobMx>();
    var categories = await CategoryService().readProporcionado();
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyosGobMx();
        categoryModel.ProporcionadoPor = category['ProporcionadoPor'];
        _Proporcionado.add(categoryModel);
      });
    });
  }

  getAllCategoriesFrecuencia() async {
    _Frecuencia = List<ApoyoFrecuencia>();
    var categories = await CategoryService().readCategoriesFrecuenciasA();
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyoFrecuencia();
        categoryModel.Frecuencia = category['Frecuencia'];
        _Frecuencia.add(categoryModel);
      });
    });
  }

  getAllApoyo() async {
    _ApoyoEspecie = List<ApoyoEnEspecieModel>();
    var categories =
        await CategoryService().readApoyoEspecie(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyoEnEspecieModel();
        categoryModel.folio = category['folio'];
        categoryModel.apoyo = category['apoyo'];
        categoryModel.proporcionadoPor = category['proporcionadoPor'];
        categoryModel.frecuencia = category['frecuencia'];
        categoryModel.otro = category['otro'];

        _ApoyoEspecie.add(categoryModel);
      });
    });

    _tipoApoyo.text = _ApoyoEspecie.map((e) => e.apoyo.toString()).first;
    _quienProporciona.text =
        _ApoyoEspecie.map((e) => e.proporcionadoPor.toString()).first;
    _frecuenciaApoyo.text =
        _ApoyoEspecie.map((e) => e.frecuencia.toString()).first;
  }

  metodos(String Apoyo, String Frecuencia) async {
    await getClaveApoyo(Apoyo);
    await getOrdenApoyo(Apoyo);
    await getOrdenFrecuencia(Frecuencia);
    await getClaveFrecuencia(Frecuencia);
  }

  actualizar() async {
    await metodos(_tipoApoyo.text, _frecuenciaApoyo.text);

    ApoyoEnEspecieModel DModel = ApoyoEnEspecieModel(
        folio: int.parse(widget.folio),
        claveApoyo: _ClaveApoyo.map((e) => e.ClaveApoyo).first,
        ordenApoyo: _OrdenApoyo.map((e) => e.OrdenApoyo).first,
        apoyo: _tipoApoyo.text.toString(),
        proporcionadoPor: _quienProporciona.text.toString(),
        claveFrecuencia: _ClaveFrecuencia.map((e) => e.ClaveFrecuencia).first,
        ordenFrecuencia: _OrdenFrecuencia.map((e) => e.OrdenFrecuencia).first,
        frecuencia: _frecuenciaApoyo.text.toString(),
        otro: _otroApoyo.text.toString());

    await DbHelper().upDateApoyoEspecie(DModel).then((apoyosEnEspecie) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Remesas(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  insertDatos() async {
    await metodos(_tipoApoyo.text, _frecuenciaApoyo.text);

    ApoyoEnEspecieModel DModel = ApoyoEnEspecieModel(
        folio: int.parse(widget.folio),
        claveApoyo: _ClaveApoyo.map((e) => e.ClaveApoyo).first,
        ordenApoyo: _OrdenApoyo.map((e) => e.OrdenApoyo).first,
        apoyo: _tipoApoyo.text.toString(),
        proporcionadoPor: _quienProporciona.text.toString(),
        claveFrecuencia: _ClaveFrecuencia.map((e) => e.ClaveFrecuencia).first,
        ordenFrecuencia: _OrdenFrecuencia.map((e) => e.OrdenFrecuencia).first,
        frecuencia: _frecuenciaApoyo.text.toString(),
        otro: _otroApoyo.text.toString());

    await DbHelper().saveApoyoEnEspecie(DModel).then((apoyosEnEspecie) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Remesas(widget.folio);
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
        title: Text('Apoyos En Especie'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (_) => AportacionesEconomicas(widget.folio)),
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
                      TextEditingValue(text: widget.folio)),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: getAllApoyo,
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
                getTextQuestion(question: 'Tipo de Apoyo'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: SearchField(
                    suggestionState: Suggestion.expand,
                    searchInputDecoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.black26,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _Apoyo.map((apoyo) => SearchFieldListItem(
                        apoyo.Apoyo.toString(),
                        item: apoyo)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoApoyo,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {
                      setState(() {
                        if (_tipoApoyo == "OTRO") {
                          valApoyo = true;
                        } else {
                          valApoyo = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otroApoyo,
                    enabled: valApoyo,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Tipo De Apoyo',
                      labelText: 'Otro Tipo De Apoyo',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Quien lo Proporciona'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: SearchField(
                    suggestionState: Suggestion.expand,
                    searchInputDecoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.black26,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _Proporcionado.map((proporcionado) =>
                        SearchFieldListItem(
                            proporcionado.ProporcionadoPor.toString(),
                            item: proporcionado)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _quienProporciona,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Frecuencia del Apoyo'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: SearchField(
                    suggestionState: Suggestion.expand,
                    searchInputDecoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.black26,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _Frecuencia.map((frecuencia) =>
                        SearchFieldListItem(frecuencia.Frecuencia.toString(),
                            item: frecuencia)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _frecuenciaApoyo,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                      onPressed: insertDatos,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Continuar',
                        style: TextStyle(color: Colors.white),
                      )),
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
