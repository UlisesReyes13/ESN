import 'package:esn/Comm/genSearchField.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/DerechohabienciasModel.dart';
import 'package:esn/Model/EscolaridadesModel.dart';
import 'package:esn/Model/GradosEscolaresModel.dart';
import 'package:esn/Model/MotivoDerechoHabiencia.dart';
import 'package:esn/Model/OcupacionesModel.dart';
import 'package:esn/Model/PrestacionesLaboralesModel.dart';
import 'package:esn/Model/TipoEmpleoModel.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchfield/searchfield.dart';

enum AsisteEscuela{na, si, no}
enum JubilacionPensionado {na, si, no}

class Escolaridad_SeguridadSocialTabla extends StatefulWidget {

  String folio;

  Escolaridad_SeguridadSocialTabla(this.folio);

  @override
  State<Escolaridad_SeguridadSocialTabla> createState() => _Escolaridad_SeguridadSocialTablaState();
}

class _Escolaridad_SeguridadSocialTablaState extends State<Escolaridad_SeguridadSocialTabla> {
  List<EscolaridadesModel> _Escolaridad = List<EscolaridadesModel>();
  List<GradosEscolaresModel> _GradoEscolar = List<GradosEscolaresModel>();
  List<OcupacionesModel> _Ocupacion = List<OcupacionesModel>();
  List<TipoEmpleoModel> _TipoEmpleo = List<TipoEmpleoModel>();
  List<DerechoHabienciasModel> _Derechohabiencia = List<DerechoHabienciasModel>();
  List<MotivoDerechoHabienciasModel> _MotivioDerechohabiencia = List<MotivoDerechoHabienciasModel>();
  final _escolaridad = TextEditingController();
  final _gradoEscolar = TextEditingController();
  final _ocupacion = TextEditingController();
  final _tipoEmpleo = TextEditingController();
  final _derechohabiencia = TextEditingController();
  final _motivoderechohabiencia = TextEditingController();
  AsisteEscuela _asisteEscuela = AsisteEscuela.si;
  JubilacionPensionado _jubilacionPensionado = JubilacionPensionado.na;

  final dataList = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems = <PrestacionesLaboralesModel>[].obs;

  var dbHelper;
  @override
  void initState(){
    getAllCategoriesDerechohabiencia();
    getAllCategoriesEscolaridades();
    getAllCategoriesGradoEscolar();
    getAllCategoriesMotivoDerechohabiencias();
    getAllCategortegoriesTipoEmpleo();
    getAllCategoriesOcupacion();


    super.initState();
    dbHelper = DbHelper();
  }

  getAllCategoriesEscolaridades() async{
    _Escolaridad = List<EscolaridadesModel>();
    var categories = await CategoryService().readCategoriesEcolaridades();
    categories.forEach((category){
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.escolaridad = category['Escolaridad'];
        _Escolaridad.add(categoryModel);
      });
    });
  }

  getAllCategoriesGradoEscolar() async {
    _GradoEscolar = List<GradosEscolaresModel>();
    var categories = await CategoryService().readCategoriesGradosEscolares();
    categories.forEach((category){
      setState(() {
        var categoryModel = GradosEscolaresModel();
        categoryModel.grado = category['GradoEscolar'];
        _GradoEscolar.add(categoryModel);
      });
    });
  }

  getAllCategoriesOcupacion() async {
    _Ocupacion = List<OcupacionesModel>();
    var categories = await CategoryService().readCategoriesOcupaciones();
    categories.forEach((category){
      setState(() {
        var categoryModel = OcupacionesModel();
        categoryModel.ocupacion = category['Ocupacion'];
        _Ocupacion.add(categoryModel);
      });
    });
  }

  getAllCategortegoriesTipoEmpleo() async {
    _TipoEmpleo = List<TipoEmpleoModel>();
    var categories = await CategoryService().readCategoriesTipoEmpleos();
    categories.forEach((category){
      setState(() {
        var categoryModel = TipoEmpleoModel();
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        _TipoEmpleo.add(categoryModel);
      });
    });
  }

  getAllCategoriesDerechohabiencia() async{
    _Derechohabiencia = List<DerechoHabienciasModel>();
    var categories = await CategoryService().readCategoriesDerechohabiencias();
    categories.forEach((category){
      setState(() {
        var categoryModel = DerechoHabienciasModel();
        categoryModel.derechoHabiencia = category['Derechohabiencia'];
        _Derechohabiencia.add(categoryModel);
      });
    });
  }

  getAllCategoriesMotivoDerechohabiencias() async {
    _MotivioDerechohabiencia = List<MotivoDerechoHabienciasModel>();
    var categories = await CategoryService().readCategoriesMotivoDerechohabiencias();
    categories.forEach((category){
      setState(() {
        var categoryModel = MotivoDerechoHabienciasModel();
        categoryModel.motivoDerechoHabiencia = category['MotivoDerechohabiencia'];
        _MotivioDerechohabiencia.add(categoryModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolaridad y Seguridad Social'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
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
                              DataColumn(label: Text('Escolaridad')),
                              DataColumn(label: Text('Grado')),
                              DataColumn(label: Text('Asisiste Escuela')),
                              DataColumn(label: Text('Ocupacion')),
                              DataColumn(label: Text('Tipo De Empleo')),
                              DataColumn(label: Text('Prestaciones Laborales')),
                              DataColumn(label: Text('Jubilado o Pensionado')),
                              DataColumn(label: Text('Derechohabiencia')),
                              DataColumn(label: Text('Motivo Derechohabiencia')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getSearchField(controller: _escolaridad,
                                suggestions: _Escolaridad.map((escolaridad) =>
                                    SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),)),
                                DataCell(getSearchField(controller: _gradoEscolar,
                                suggestions: _GradoEscolar.map((gradoEscolar) =>
                                    SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),)),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('No'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.no,
                                          groupValue: _asisteEscuela,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Otro'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.na,
                                          groupValue: _asisteEscuela,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion,
                                suggestions: _Ocupacion.map((ocupacion) =>
                                    SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),)),
                                DataCell(getSearchField(controller: _tipoEmpleo,
                                suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                    SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),)),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems())
                                      ),
                                    ),
                                  ),
                                    ),
                                ),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.si,
                                          groupValue: _jubilacionPensionado,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('No'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.no,
                                          groupValue: _jubilacionPensionado,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia,
                                suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                    SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),)),
                                DataCell(getSearchField(controller: _motivoderechohabiencia,
                                suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                    SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),))
                              ])
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
                      onPressed: (){

                      },
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


  List <Widget> genarateItems(){
    final result = <Widget>[];
    for(int i = 0; i < dataList.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList[i].value,
          title: Text(dataList[i].prestacion),
          onChanged: (v){
            dataList[i].value = v ?? false;
            dataList.refresh();
          }));
    }
    return  result;
  }

}
