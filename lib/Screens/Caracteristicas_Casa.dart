import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/CaracteristicasCasa.dart';
import 'package:esn/Screens/Equipamiento.dart';
import 'package:esn/Screens/Infraestructura_Vivienda.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';

enum CocinaSeparada { si, no }

enum CuartoBanio { si, no }

class Caracteristicas_Casa extends StatefulWidget {
  String folio;
  Caracteristicas_Casa(this.folio);

  @override
  State<Caracteristicas_Casa> createState() => _Caracteristicas_CasaState();
}

class _Caracteristicas_CasaState extends State<Caracteristicas_Casa> {
  final _numCuartos = TextEditingController();
  final _numCuartosDormir = TextEditingController();
  CocinaSeparada _cocinaSeparada = CocinaSeparada.si;
  CuartoBanio _cuartoBanio = CuartoBanio.si;
  var dbHelper;
  List<CaracteristicasCasa> _CaracteristicasCasa = List<CaracteristicasCasa>();

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  getAllCasa() async {
    _CaracteristicasCasa = List<CaracteristicasCasa>();
    var categories = await CategoryService().readCasa(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = CaracteristicasCasa();
        categoryModel.folio = category['folio'];
        categoryModel.numCuartos = category['numCuartos'];
        categoryModel.cuartosDormir = category['cuartosDormir'];
        categoryModel.cocinaSeparada = category['cocinaSeparada'];
        categoryModel.cuartoBanioExclusivo = category['cuartoBanioExclusivo'];

        _CaracteristicasCasa.add(categoryModel);
      });
    });

    _numCuartos.text = _CaracteristicasCasa.map((e) => e.numCuartos).first;
    _numCuartosDormir.text =
        _CaracteristicasCasa.map((e) => e.cuartosDormir).first;

    if (_CaracteristicasCasa.map((e) => e.cocinaSeparada.toString()).first ==
        "si") {
      _cocinaSeparada = CocinaSeparada.si;
    } else if (_CaracteristicasCasa.map((e) => e.cocinaSeparada.toString())
            .first ==
        "no") {
      _cocinaSeparada = CocinaSeparada.no;
    }

    if (_CaracteristicasCasa.map((e) => e.cuartoBanioExclusivo.toString())
            .first ==
        "si") {
      _cuartoBanio = CuartoBanio.si;
    } else if (_CaracteristicasCasa.map(
            (e) => e.cuartoBanioExclusivo.toString()).first ==
        "no") {
      _cuartoBanio = CuartoBanio.no;
    }
  }

  actualizar() async {
    if (int.parse(_numCuartos.text) < int.parse(_numCuartosDormir.text)) {
      alertDialog(context, 'Verificar el n??mero de cuartos');
    } else {
      CaracteristicasCasa DModel = CaracteristicasCasa(
          folio: int.parse(widget.folio),
          numCuartos: _numCuartos.text.toString(),
          cuartosDormir: _numCuartosDormir.text.toString(),
          cocinaSeparada: _cocinaSeparada.name,
          cuartoBanioExclusivo: _cuartoBanio.name);

      await dbHelper.upDateCasa(DModel).then((caracteristicasCasa) {
        alertDialog(context, "Se registro correctamente");
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new Equipamiento(widget.folio);
        }));
      }).catchError((error) {
        print(error);
        alertDialog(context, "Error: No se guardaron los datos");
      });
    }
  }
  insertDatos() async {
    if (int.parse(_numCuartos.text) < int.parse(_numCuartosDormir.text)) {
      alertDialog(context, 'Verificar el n??mero de cuartos');
    } else {
      CaracteristicasCasa DModel = CaracteristicasCasa(
          folio: int.parse(widget.folio),
          numCuartos: _numCuartos.text.toString(),
          cuartosDormir: _numCuartosDormir.text.toString(),
          cocinaSeparada: _cocinaSeparada.name,
          cuartoBanioExclusivo: _cuartoBanio.name);

      await dbHelper.saveCasa(DModel).then((caracteristicasCasa) {
        alertDialog(context, "Se registro correctamente");
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new Equipamiento(widget.folio);
        }));
      }).catchError((error) {
        print(error);
        alertDialog(context, "Error: No se guardaron los datos");
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caracteristicas de la Casa'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (_) => Infraestructura_Vivienda(widget.folio)),
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
                    onPressed: getAllCasa,
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
                getTextQuestion(question: 'N??mero de Cuartos'),
                SizedBox(height: 5.0),
                getTextField(
                    controller: _numCuartos, inputType: TextInputType.number),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Cuartos para Dormir'),
                SizedBox(height: 5.0),
                getTextField(
                    controller: _numCuartosDormir,
                    inputType: TextInputType.number),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Cocina Separada'),
                ListTile(
                  title: Text('Si'),
                  leading: Radio<CocinaSeparada>(
                    value: CocinaSeparada.si,
                    groupValue: _cocinaSeparada,
                    onChanged: (CocinaSeparada value) {
                      setState(() {
                        _cocinaSeparada = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('No'),
                  leading: Radio<CocinaSeparada>(
                    value: CocinaSeparada.no,
                    groupValue: _cocinaSeparada,
                    onChanged: (CocinaSeparada value) {
                      setState(() {
                        _cocinaSeparada = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Cuarto de Ba??o Exclusivo'),
                ListTile(
                  title: Text('Si'),
                  leading: Radio<CuartoBanio>(
                    value: CuartoBanio.si,
                    groupValue: _cuartoBanio,
                    onChanged: (CuartoBanio value) {
                      setState(() {
                        _cuartoBanio = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('No'),
                  leading: Radio<CuartoBanio>(
                    value: CuartoBanio.no,
                    groupValue: _cuartoBanio,
                    onChanged: (CuartoBanio value) {
                      setState(() {
                        _cuartoBanio = value;
                      });
                    },
                  ),
                ),
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
