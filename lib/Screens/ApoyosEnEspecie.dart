import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/ApoyoEnEspecieModel.dart';
import 'package:esn/Screens/AportacionesEconomicas.dart';
import 'package:esn/Screens/Remesas.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';

import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';

class ApoyosEnEspecie extends StatefulWidget {
  String folio;

  ApoyosEnEspecie(this.folio);

  @override
  State<ApoyosEnEspecie> createState() => _ApoyosEnEspecieState();
}

class _ApoyosEnEspecieState extends State<ApoyosEnEspecie> {
  final _tipoApoyo = TextEditingController();
  final _quienProporciona = TextEditingController();
  final _frecuenciaApoyo = TextEditingController();
  List<ApoyoEnEspecieModel> _ApoyoEspecie = List<ApoyoEnEspecieModel>();

  getAllApoyo() async {
    _ApoyoEspecie = List<ApoyoEnEspecieModel>();
    var categories =
        await CategoryService().readApoyoEspecie(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = ApoyoEnEspecieModel();
        categoryModel.folio = category['folio'];
        categoryModel.tipoApoyo = category['tipoApoyo'];
        categoryModel.quienProporciona = category['quienProporciona'];
        categoryModel.frecuenciaApoyo = category['frecuenciaApoyo'];

        _ApoyoEspecie.add(categoryModel);
      });
    });

    _tipoApoyo.text = _ApoyoEspecie.map((e) => e.tipoApoyo.toString()).first;
    _quienProporciona.text =
        _ApoyoEspecie.map((e) => e.quienProporciona.toString()).first;
    _frecuenciaApoyo.text =
        _ApoyoEspecie.map((e) => e.frecuenciaApoyo.toString()).first;
  }

  actualizar() async {
    ApoyoEnEspecieModel DModel = ApoyoEnEspecieModel(
        folio: int.parse(widget.folio),
        tipoApoyo: _tipoApoyo.text.toString(),
        frecuenciaApoyo: _quienProporciona.text.toString(),
        quienProporciona: _frecuenciaApoyo.text.toString());

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
    ApoyoEnEspecieModel DModel = ApoyoEnEspecieModel(
        folio: int.parse(widget.folio),
        tipoApoyo: _tipoApoyo.text.toString(),
        frecuenciaApoyo: _quienProporciona.text.toString(),
        quienProporciona: _frecuenciaApoyo.text.toString());

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
                getTextField(controller: _tipoApoyo),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Quien lo Proporciona'),
                SizedBox(height: 5.0),
                getTextField(controller: _quienProporciona),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Frecuencia del Apoyo'),
                SizedBox(height: 5.0),
                getTextField(controller: _frecuenciaApoyo),
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
