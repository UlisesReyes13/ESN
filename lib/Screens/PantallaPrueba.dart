import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/EstadosCiviles.dart';
import 'package:esn/Model/EstadosModel.dart';
import 'package:esn/Model/Parentesco.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

enum Sexo { hombre, mujer, otro }

class PantallaPrueba extends StatefulWidget {
  String folio;

  PantallaPrueba(this.folio);

  @override
  State<PantallaPrueba> createState() => _PantallaPruebaState();
}

class _PantallaPruebaState extends State<PantallaPrueba> {
  final _nombre1 = TextEditingController();
  final _primerApellido1 = TextEditingController();
  final _segundoApellido1 = TextEditingController();
  Sexo _sexo1;
  final _fechaNacimiento1 = TextEditingController();
  final _entidadNacimiento1 = TextEditingController();
  final _estadoCivil1 = TextEditingController();
  final _parentesco1 = TextEditingController();
  final _ingresoSemanal1 = TextEditingController();
  final _ingresoMensual1 = TextEditingController();


  final _nombre2 = TextEditingController();
  final _primerApellido2 = TextEditingController();
  final _segundoApellido2 = TextEditingController();
  Sexo _sexo2;
  final _fechaNacimiento2 = TextEditingController();
  final _entidadNacimiento2 = TextEditingController();
  final _estadoCivil2 = TextEditingController();
  final _parentesco2 = TextEditingController();
  final _ingresoSemanal2 = TextEditingController();
  final _ingresoMensual2 = TextEditingController();


  final _nombre3 = TextEditingController();
  final _primerApellido3 = TextEditingController();
  final _segundoApellido3 = TextEditingController();
  Sexo _sexo3;
  final _fechaNacimiento3 = TextEditingController();
  final _entidadNacimiento3 = TextEditingController();
  final _estadoCivil3 = TextEditingController();
  final _parentesco3 = TextEditingController();
  final _ingresoSemanal3 = TextEditingController();
  final _ingresoMensual3 = TextEditingController();


  final _nombre4 = TextEditingController();
  final _primerApellido4 = TextEditingController();
  final _segundoApellido4 = TextEditingController();
  Sexo _sexo4;
  final _fechaNacimiento4 = TextEditingController();
  final _entidadNacimiento4 = TextEditingController();
  final _estadoCivil4 = TextEditingController();
  final _parentesco4 = TextEditingController();
  final _ingresoSemanal4 = TextEditingController();
  final _ingresoMensual4 = TextEditingController();


  final _nombre5 = TextEditingController();
  final _primerApellido5 = TextEditingController();
  final _segundoApellido5 = TextEditingController();
  Sexo _sexo5;
  final _fechaNacimiento5 = TextEditingController();
  final _entidadNacimiento5 = TextEditingController();
  final _estadoCivil5 = TextEditingController();
  final _parentesco5 = TextEditingController();
  final _ingresoSemanal5 = TextEditingController();
  final _ingresoMensual5 = TextEditingController();


  final _nombre6 = TextEditingController();
  final _primerApellido6 = TextEditingController();
  final _segundoApellido6 = TextEditingController();
  Sexo _sexo6;
  final _fechaNacimiento6 = TextEditingController();
  final _entidadNacimiento6 = TextEditingController();
  final _estadoCivil6 = TextEditingController();
  final _parentesco6 = TextEditingController();
  final _ingresoSemanal6 = TextEditingController();
  final _ingresoMensual6 = TextEditingController();

  final _nombre7 = TextEditingController();
  final _primerApellido7 = TextEditingController();
  final _segundoApellido7 = TextEditingController();
  Sexo _sexo7;
  final _fechaNacimiento7 = TextEditingController();
  final _entidadNacimiento7 = TextEditingController();
  final _estadoCivil7 = TextEditingController();
  final _parentesco7 = TextEditingController();
  final _ingresoSemanal7 = TextEditingController();
  final _ingresoMensual7 = TextEditingController();

  final _nombre8 = TextEditingController();
  final _primerApellido8 = TextEditingController();
  final _segundoApellido8 = TextEditingController();
  Sexo _sexo8;
  final _fechaNacimiento8 = TextEditingController();
  final _entidadNacimiento8 = TextEditingController();
  final _estadoCivil8 = TextEditingController();
  final _parentesco8 = TextEditingController();
  final _ingresoSemanal8 = TextEditingController();
  final _ingresoMensual8 = TextEditingController();


  final _nombre9 = TextEditingController();
  final _primerApellido9 = TextEditingController();
  final _segundoApellido9 = TextEditingController();
  Sexo _sexo9;
  final _fechaNacimiento9 = TextEditingController();
  final _entidadNacimiento9 = TextEditingController();
  final _estadoCivil9 = TextEditingController();
  final _parentesco9 = TextEditingController();
  final _ingresoSemanal9 = TextEditingController();
  final _ingresoMensual9 = TextEditingController();

  final _nombre10 = TextEditingController();
  final _primerApellido10 = TextEditingController();
  final _segundoApellido10 = TextEditingController();
  Sexo _sexo10;
  final _fechaNacimiento10 = TextEditingController();
  final _entidadNacimiento10 = TextEditingController();
  final _estadoCivil10 = TextEditingController();
  final _parentesco10 = TextEditingController();
  final _ingresoSemanal10 = TextEditingController();
  final _ingresoMensual10 = TextEditingController();

  var dbHelper;
  List<EstadosCiviles> _EstadosCiviles = List<EstadosCiviles>();
  List<Parentescos> _Parentesco = List<Parentescos>();
  List<EstadosModel> _Estado = List<EstadosModel>();

  @override
  void initState() {
    getAllCategoriesEstadosCiviles();
    getAllCategoriesParentesco();
    getAllCategoriesEstados();
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

  getAllCategoriesEstados() async {
    _Estado = List<EstadosModel>();
    var categories = await CategoryService().readCategoriesEstados();
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstadosModel();
        categoryModel.Estado = category['Estado'];
        _Estado.add(categoryModel);
      });
    });
  }

  enviar(){
    String sexo1 = _sexo1.name.toString();
    String sexo2 = _sexo2.name.toString();
    String sexo3 = _sexo3.name.toString();
    String sexo4 = _sexo4.name.toString();
    String sexo5 = _sexo5.name.toString();
    String sexo6 = _sexo6.name.toString();
    String sexo7 = _sexo7.name.toString();
    String sexo8 = _sexo8.name.toString();
    String sexo9 = _sexo9.name.toString();
    String sexo10 = _sexo10.name.toString();

    if(sexo1 == 'hombre' || sexo2 == 'hombre' || sexo3 == 'hombre' || sexo4 == 'hombre' ||
        sexo5 == 'hombre' || sexo6 == 'hombre' || sexo7 == 'hombre' || sexo8 == 'hombre' ||
        sexo9 == 'hombre' || sexo10 == 'hombre')
    {
      sexo1 = '1 1 Hombre';
      sexo2 = '1 1 Hombre';
      sexo3 = '1 1 Hombre';
      sexo4 = '1 1 Hombre';
      sexo5 = '1 1 Hombre';
      sexo6 = '1 1 Hombre';
      sexo7 = '1 1 Hombre';
      sexo8 = '1 1 Hombre';
      sexo9 = '1 1 Hombre';
      sexo10 = '1 1 Hombre';
    }else if(sexo1 == 'mujer' || sexo2 == 'mujer' || sexo3 == 'mujer' || sexo4 == 'mujer' ||
        sexo5 == 'mujer' || sexo6 == 'mujer' || sexo7 == 'mujer' || sexo8 == 'mujer' ||
        sexo9 == 'mujer' || sexo10 == 'mujer')
    {
      sexo1 = '2 2 Mujer';
      sexo2 = '2 2 Mujer';
      sexo3 = '2 2 Mujer';
      sexo4 = '2 2 Mujer';
      sexo5 = '2 2 Mujer';
      sexo6 = '2 2 Mujer';
      sexo7 = '2 2 Mujer';
      sexo8 = '2 2 Mujer';
      sexo9 = '2 2 Mujer';
      sexo10 = '2 2 Mujer';
    }else if(sexo1 == 'otro' || sexo2 == 'otro' || sexo3 == 'otro' || sexo4 == 'otro' ||
        sexo5 == 'otro' || sexo6 == 'otro' || sexo7 == 'otro' || sexo8 == 'otro' ||
        sexo9 == 'otro' || sexo10 == 'otro')
    {
      sexo1 = '3 3 Otro';
      sexo2 = '3 3 Otro';
      sexo3 = '3 3 Otro';
      sexo4 = '3 3 Otro';
      sexo5 = '3 3 Otro';
      sexo6 = '3 3 Otro';
      sexo7 = '3 3 Otro';
      sexo8 = '3 3 Otro';
      sexo9 = '3 3 Otro';
      sexo10 = '3 3 Otro';
    }
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
              children: [
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(
                  controller: TextEditingController.fromValue(
                      TextEditingValue(text: widget.folio)),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: DataTable(
                            columnSpacing: 30,
                            dataRowHeight: 100,
                            columns: [
                              DataColumn(label: Text('No.')),
                              DataColumn(label: Text('Nombres')),
                              DataColumn(label: Text('Apellido Paterno')),
                              DataColumn(label: Text('Apeliido Materno')),
                              DataColumn(label: Text('Sexo')),
                              DataColumn(label: Text('Fecha de Nacimiento')),
                              DataColumn(label: Text('Entidad de Nacimiento')),
                              DataColumn(label: Text('Estado Civil')),
                              DataColumn(label: Text('Parentesco')),
                              DataColumn(label: Text('Ingreso Semanal')),
                              DataColumn(label: Text('Ingreso Mensual')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getTextDataTable(controller: _nombre1)),
                                DataCell(getTextDataTable(controller: _primerApellido1)),
                                DataCell(getTextDataTable(controller: _segundoApellido1)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo1,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo1 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo1,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo1 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo1,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo1 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento1,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento1,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil1,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco1,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal1)),
                                DataCell(getTextDataTable(controller: _ingresoMensual1)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(getTextDataTable(controller: _nombre2)),
                                DataCell(getTextDataTable(controller: _primerApellido2)),
                                DataCell(getTextDataTable(controller: _segundoApellido2)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo2,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo2 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo2,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo2 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo2,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo2 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento2,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento2,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil2,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco2,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal2)),
                                DataCell(getTextDataTable(controller: _ingresoMensual2)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(getTextDataTable(controller: _nombre3)),
                                DataCell(getTextDataTable(controller: _primerApellido3)),
                                DataCell(getTextDataTable(controller: _segundoApellido3)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo3,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo3 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo3,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo3 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo3,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo3 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento3,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento3,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil3,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco3,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal3)),
                                DataCell(getTextDataTable(controller: _ingresoMensual3)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(getTextDataTable(controller: _nombre4)),
                                DataCell(getTextDataTable(controller: _primerApellido4)),
                                DataCell(getTextDataTable(controller: _segundoApellido4)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo4,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo4 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo4,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo4 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo4,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo4 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento4,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento4,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil4,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco4,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal4)),
                                DataCell(getTextDataTable(controller: _ingresoMensual4)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(getTextDataTable(controller: _nombre5)),
                                DataCell(getTextDataTable(controller: _primerApellido5)),
                                DataCell(getTextDataTable(controller: _segundoApellido5)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo5,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo5 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo5,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo5 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo5,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo5 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento5,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento5,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil5,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco5,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal5)),
                                DataCell(getTextDataTable(controller: _ingresoMensual5)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(getTextDataTable(controller: _nombre6)),
                                DataCell(getTextDataTable(controller: _primerApellido6)),
                                DataCell(getTextDataTable(controller: _segundoApellido6)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo6,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo6 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo6,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo6 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo6,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo6 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento6,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento6,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil6,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco6,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal6)),
                                DataCell(getTextDataTable(controller: _ingresoMensual6)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(getTextDataTable(controller: _nombre7)),
                                DataCell(getTextDataTable(controller: _primerApellido7)),
                                DataCell(getTextDataTable(controller: _segundoApellido7)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo7,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo7 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo7,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo7 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo7,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo7 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento7,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento7,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil7,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco7,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal7)),
                                DataCell(getTextDataTable(controller: _ingresoMensual7)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('8')),
                                DataCell(getTextDataTable(controller: _nombre8)),
                                DataCell(getTextDataTable(controller: _primerApellido8)),
                                DataCell(getTextDataTable(controller: _segundoApellido8)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo8,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo8 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo8,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo8 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo8,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo8 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento8,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento8,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil8,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco8,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal8)),
                                DataCell(getTextDataTable(controller: _ingresoMensual8)),
                              ]),

                              DataRow(cells: [
                                DataCell(Text('9')),
                                DataCell(getTextDataTable(controller: _nombre9)),
                                DataCell(getTextDataTable(controller: _primerApellido9)),
                                DataCell(getTextDataTable(controller: _segundoApellido9)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo9,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo9 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo9,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo9 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo9,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo9 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento9,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento9,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil9,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco9,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal9)),
                                DataCell(getTextDataTable(controller: _ingresoMensual9)),
                              ]),


                              DataRow(cells: [
                                DataCell(Text('10')),
                                DataCell(getTextDataTable(controller: _nombre10)),
                                DataCell(getTextDataTable(controller: _primerApellido10)),
                                DataCell(getTextDataTable(controller: _segundoApellido10)),
                                DataCell(
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Hombre'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.hombre,
                                            groupValue: _sexo10,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo10 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Mujer'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.mujer,
                                            groupValue: _sexo10,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo10 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('Otro'),
                                          leading: Radio<Sexo>(
                                            value: Sexo.otro,
                                            groupValue: _sexo10,
                                            onChanged: (Sexo value) {
                                              setState(() {
                                                _sexo10 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(getTextDataTable(controller: _fechaNacimiento10,hintName: 'YYYY-MM-DD',)),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Estado.map((estado) =>
                                        SearchFieldListItem(estado.Estado,
                                            item: estado)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _entidadNacimiento10,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _EstadosCiviles.map((estadosCiviles) =>
                                        SearchFieldListItem(estadosCiviles.EstadoCivil,
                                            item: estadosCiviles)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _estadoCivil10,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),

                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 22),
                                  width: 220,
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
                                    suggestions: _Parentesco.map((parentesco) =>
                                        SearchFieldListItem(parentesco.Parentesco,
                                            item: parentesco)).toList(),
                                    textInputAction: TextInputAction.next,
                                    hasOverlay: true,
                                    controller: _parentesco10,
                                    maxSuggestionsInViewPort: 5,
                                    itemHeight: 45,
                                    onSuggestionTap: (x) {},
                                  ),
                                ),),
                                DataCell(getTextDataTable(controller: _ingresoSemanal10)),
                                DataCell(getTextDataTable(controller: _ingresoMensual10)),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                      onPressed: (){},
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
            ],
            ),
          ),
        ),
      ),
    );
  }
}
