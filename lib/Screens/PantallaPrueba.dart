import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/EstadosCiviles.dart';
import 'package:esn/Model/Parentesco.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';

enum Sexo { hombre, mujer, otro }

class PantallaPrueba extends StatefulWidget {
  String folio;
  PantallaPrueba(this.folio);


  @override
  State<PantallaPrueba> createState() => _PantallaPruebaState();
}

class _PantallaPruebaState extends State<PantallaPrueba> {

  final _nombre = TextEditingController();
  final _primerApellido = TextEditingController();
  final _segundoApellido = TextEditingController();
  Sexo _sexo = Sexo.hombre;
  final _fechaNacimiento = TextEditingController();
  final _entidadNacimiento = TextEditingController();
  final _estadoCivil = TextEditingController();
  final _parentesco = TextEditingController();

  var dbHelper;
  List<EstadosCiviles> _EstadosCiviles = List<EstadosCiviles>();
  List<Parentescos> _Parentesco = List<Parentescos>();

  @override
  void initState() {
    getAllCategoriesEstadosCiviles();
    getAllCategoriesParentesco();
    dbHelper = DbHelper();
  }

  getAllCategoriesEstadosCiviles() async {
    _EstadosCiviles = List<EstadosCiviles>();
    var categories = await CategoryService().readCategoriesEstadosCiviles();
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstadosCiviles();
        categoryModel.EstadoCivil = category['EstadoCivil'];
        _EstadosCiviles.add(categoryModel);
      });
    });
  }

  getAllCategoriesParentesco() async {
    _Parentesco = List<Parentescos>();
    var categories = await CategoryService().readCategoriesParentesco();
    categories.forEach((category) {
      setState(() {
        var categoryModel = Parentescos();
        categoryModel.Parentesco = category['Parentesco'];
        _Parentesco.add(categoryModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Prueba'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(height: 50.0),
                          getTextEquipamiento(encabezado: 'Nombre'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Apellido Paterno'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Apellido Materno'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Sexo'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Fecha Nacimiento'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Estado Civil'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Parentesco'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Ingreso Semanal'),
                          SizedBox(width: 30.0),
                          getTextEquipamiento(encabezado: 'Ingreso Mensual'),
                          Row(
                            children: [

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                /*Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(height: 10.0),
                        getTextQuestion(question: 'Nombre(s)'),
                        SizedBox(height: 5.0),
                        getTextField(controller: _nombre),
                        SizedBox(height: 10.0),
                        getTextQuestion(question: 'Primer Apellido'),
                        SizedBox(height: 5.0),
                        getTextField(controller: _primerApellido),
                        SizedBox(height: 10.0),
                        getTextQuestion(question: 'Segundo Apellido'),
                        SizedBox(height: 5.0),
                        getTextField(controller: _segundoApellido),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
