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

  final _escolaridad1 = TextEditingController();
  final _gradoEscolar1 = TextEditingController();
  final _ocupacion1 = TextEditingController();
  final _tipoEmpleo1 = TextEditingController();
  final _derechohabiencia1 = TextEditingController();
  final _motivoderechohabiencia1 = TextEditingController();
  AsisteEscuela _asisteEscuela1 = AsisteEscuela.si;
  JubilacionPensionado _jubilacionPensionado1;


  final _escolaridad2 = TextEditingController();
  final _gradoEscolar2 = TextEditingController();
  final _ocupacion2 = TextEditingController();
  final _tipoEmpleo2 = TextEditingController();
  final _derechohabiencia2 = TextEditingController();
  final _motivoderechohabiencia2 = TextEditingController();
  AsisteEscuela _asisteEscuela2;
  JubilacionPensionado _jubilacionPensionado2;

  final _escolaridad3 = TextEditingController();
  final _gradoEscolar3 = TextEditingController();
  final _ocupacion3 = TextEditingController();
  final _tipoEmpleo3 = TextEditingController();
  final _derechohabiencia3 = TextEditingController();
  final _motivoderechohabiencia3 = TextEditingController();
  AsisteEscuela _asisteEscuela3;
  JubilacionPensionado _jubilacionPensionado3;

  final _escolaridad4 = TextEditingController();
  final _gradoEscolar4 = TextEditingController();
  final _ocupacion4 = TextEditingController();
  final _tipoEmpleo4 = TextEditingController();
  final _derechohabiencia4 = TextEditingController();
  final _motivoderechohabiencia4 = TextEditingController();
  AsisteEscuela _asisteEscuela4;
  JubilacionPensionado _jubilacionPensionado4;

  final _escolaridad5 = TextEditingController();
  final _gradoEscolar5 = TextEditingController();
  final _ocupacion5 = TextEditingController();
  final _tipoEmpleo5 = TextEditingController();
  final _derechohabiencia5 = TextEditingController();
  final _motivoderechohabiencia5 = TextEditingController();
  AsisteEscuela _asisteEscuela5;
  JubilacionPensionado _jubilacionPensionado5;

  final _escolaridad6 = TextEditingController();
  final _gradoEscolar6 = TextEditingController();
  final _ocupacion6 = TextEditingController();
  final _tipoEmpleo6 = TextEditingController();
  final _derechohabiencia6 = TextEditingController();
  final _motivoderechohabiencia6 = TextEditingController();
  AsisteEscuela _asisteEscuela6;
  JubilacionPensionado _jubilacionPensionado6;

  final _escolaridad7 = TextEditingController();
  final _gradoEscolar7 = TextEditingController();
  final _ocupacion7 = TextEditingController();
  final _tipoEmpleo7 = TextEditingController();
  final _derechohabiencia7 = TextEditingController();
  final _motivoderechohabiencia7 = TextEditingController();
  AsisteEscuela _asisteEscuela7;
  JubilacionPensionado _jubilacionPensionado7;

  final _escolaridad8 = TextEditingController();
  final _gradoEscolar8 = TextEditingController();
  final _ocupacion8 = TextEditingController();
  final _tipoEmpleo8 = TextEditingController();
  final _derechohabiencia8 = TextEditingController();
  final _motivoderechohabiencia8 = TextEditingController();
  AsisteEscuela _asisteEscuela8;
  JubilacionPensionado _jubilacionPensionado8;

  final _escolaridad9 = TextEditingController();
  final _gradoEscolar9 = TextEditingController();
  final _ocupacion9 = TextEditingController();
  final _tipoEmpleo9 = TextEditingController();
  final _derechohabiencia9 = TextEditingController();
  final _motivoderechohabiencia9 = TextEditingController();
  AsisteEscuela _asisteEscuela9;
  JubilacionPensionado _jubilacionPensionado9;

  final _escolaridad10 = TextEditingController();
  final _gradoEscolar10 = TextEditingController();
  final _ocupacion10 = TextEditingController();
  final _tipoEmpleo10 = TextEditingController();
  final _derechohabiencia10 = TextEditingController();
  final _motivoderechohabiencia10 = TextEditingController();
  AsisteEscuela _asisteEscuela10;
  JubilacionPensionado _jubilacionPensionado10;

  final dataList1 = <PrestacionesLaboralesModel>[
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

  final selectedItems1 = <PrestacionesLaboralesModel>[].obs;

  final dataList2 = <PrestacionesLaboralesModel>[
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

  final selectedItems2 = <PrestacionesLaboralesModel>[].obs;

  final dataList3 = <PrestacionesLaboralesModel>[
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

  final selectedItems3 = <PrestacionesLaboralesModel>[].obs;

  final dataList4 = <PrestacionesLaboralesModel>[
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

  final selectedItems4 = <PrestacionesLaboralesModel>[].obs;

  final dataList5 = <PrestacionesLaboralesModel>[
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

  final selectedItems5 = <PrestacionesLaboralesModel>[].obs;

  final dataList6 = <PrestacionesLaboralesModel>[
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

  final selectedItems6 = <PrestacionesLaboralesModel>[].obs;

  final dataList7 = <PrestacionesLaboralesModel>[
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

  final selectedItems7 = <PrestacionesLaboralesModel>[].obs;

  final dataList8 = <PrestacionesLaboralesModel>[
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

  final selectedItems8 = <PrestacionesLaboralesModel>[].obs;

  final dataList9 = <PrestacionesLaboralesModel>[
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

  final selectedItems9 = <PrestacionesLaboralesModel>[].obs;

  final dataList10 = <PrestacionesLaboralesModel>[
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

  final selectedItems10 = <PrestacionesLaboralesModel>[].obs;

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
                              DataColumn(label: Text('Ocupación')),
                              DataColumn(label: Text('Tipo De Empleo')),
                              DataColumn(label: Text('Prestaciones Laborales')),
                              DataColumn(label: Text('Jubilado o Pensionado')),
                              DataColumn(label: Text('Derechohabiencia')),
                              DataColumn(label: Text('Motivo Derechohabiencia')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getSearchField(controller: _escolaridad1,
                                suggestions: _Escolaridad.map((escolaridad) =>
                                    SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar1,
                                suggestions: _GradoEscolar.map((gradoEscolar) =>
                                    SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela1,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela1 = value;
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
                                          groupValue: _asisteEscuela1,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela1= value;
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
                                          groupValue: _asisteEscuela1,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion1,
                                suggestions: _Ocupacion.map((ocupacion) =>
                                    SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo1,
                                suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                    SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems1())
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
                                          groupValue: _jubilacionPensionado1,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado1 = value;
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
                                          groupValue: _jubilacionPensionado1,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado1,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia1,
                                suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                    SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia1,
                                suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                    SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(getSearchField(controller: _escolaridad2,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar2,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela2,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela2 = value;
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
                                          groupValue: _asisteEscuela2,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela2 = value;
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
                                          groupValue: _asisteEscuela2,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion2,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo2,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems2())
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
                                          groupValue: _jubilacionPensionado2,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado2 = value;
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
                                          groupValue: _jubilacionPensionado2,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado2,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia2,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia2,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(getSearchField(controller: _escolaridad3,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar3,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela3,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela3 = value;
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
                                          groupValue: _asisteEscuela3,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela3 = value;
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
                                          groupValue: _asisteEscuela3,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela3 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion3,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo3,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems3())
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
                                          groupValue: _jubilacionPensionado3,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado3 = value;
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
                                          groupValue: _jubilacionPensionado3,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado3 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado3,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado3 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia3,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia3,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(getSearchField(controller: _escolaridad4,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar4,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela4,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela4 = value;
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
                                          groupValue: _asisteEscuela4,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela4 = value;
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
                                          groupValue: _asisteEscuela4,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela4 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion4,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo4,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems4())
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
                                          groupValue: _jubilacionPensionado4,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado4 = value;
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
                                          groupValue: _jubilacionPensionado4,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado4 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado4,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado4 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia4,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia4,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(getSearchField(controller: _escolaridad5,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar5,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela5,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela5 = value;
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
                                          groupValue: _asisteEscuela5,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela5 = value;
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
                                          groupValue: _asisteEscuela5,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela5 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion5,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo5,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo de Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems5())
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
                                          groupValue: _jubilacionPensionado5,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado5 = value;
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
                                          groupValue: _jubilacionPensionado5,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado5 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado5,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado5 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia5,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia5,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(getSearchField(controller: _escolaridad6,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar6,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela6,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela6 = value;
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
                                          groupValue: _asisteEscuela6,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela6 = value;
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
                                          groupValue: _asisteEscuela6,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela6 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion6,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo6,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems6())
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
                                          groupValue: _jubilacionPensionado6,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado6 = value;
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
                                          groupValue: _jubilacionPensionado6,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado6 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado6,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado6 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia6,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia6,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(getSearchField(controller: _escolaridad7,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar7,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela7,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela7 = value;
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
                                          groupValue: _asisteEscuela7,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela7 = value;
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
                                          groupValue: _asisteEscuela7,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela7 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion7,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo7,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo de Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems7())
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
                                          groupValue: _jubilacionPensionado7,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado7 = value;
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
                                          groupValue: _jubilacionPensionado7,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado7 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado7,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado7 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia7,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia7,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('8')),
                                DataCell(getSearchField(controller: _escolaridad8,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar8,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela8,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela8 = value;
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
                                          groupValue: _asisteEscuela8,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela8 = value;
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
                                          groupValue: _asisteEscuela8,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela8 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion8,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo8,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems8())
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
                                          groupValue: _jubilacionPensionado8,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado8 = value;
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
                                          groupValue: _jubilacionPensionado8,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado8 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado8,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado8 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia8,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia8,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('9')),
                                DataCell(getSearchField(controller: _escolaridad9,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar9,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela9,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela9 = value;
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
                                          groupValue: _asisteEscuela9,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela9 = value;
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
                                          groupValue: _asisteEscuela9,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela9 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion9,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo9,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo de Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems9())
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
                                          groupValue: _jubilacionPensionado9,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado9 = value;
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
                                          groupValue: _jubilacionPensionado9,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado9 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado9,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado9 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia9,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia9,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'
                                ))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('10')),
                                DataCell(getSearchField(controller: _escolaridad10,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(escolaridad.escolaridad, item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(controller: _gradoEscolar10,
                                  suggestions: _GradoEscolar.map((gradoEscolar) =>
                                      SearchFieldListItem(gradoEscolar.grado, item: gradoEscolar)).toList(),
                                hintName: 'Grado')),
                                DataCell(Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text('Si'),
                                        leading: Radio<AsisteEscuela>(
                                          value: AsisteEscuela.si,
                                          groupValue: _asisteEscuela10,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela10 = value;
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
                                          groupValue: _asisteEscuela10,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela10 = value;
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
                                          groupValue: _asisteEscuela10,
                                          onChanged: (AsisteEscuela value) {
                                            setState(() {
                                              _asisteEscuela10 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                DataCell(getSearchField(controller: _ocupacion10,
                                  suggestions: _Ocupacion.map((ocupacion) =>
                                      SearchFieldListItem(ocupacion.ocupacion, item: ocupacion)).toList(),
                                hintName: 'Ocupación')),
                                DataCell(getSearchField(controller: _tipoEmpleo10,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo, item: tipoEmpleo)).toList(),
                                hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>Column(children: genarateItems10())
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
                                          groupValue: _jubilacionPensionado10,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado10 = value;
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
                                          groupValue: _jubilacionPensionado10,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado10 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('N/A'),
                                        leading: Radio<JubilacionPensionado>(
                                          value: JubilacionPensionado.na,
                                          groupValue: _jubilacionPensionado10,
                                          onChanged: (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado10 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(controller: _derechohabiencia10,
                                  suggestions: _Derechohabiencia.map((derechohabiencia) =>
                                      SearchFieldListItem(derechohabiencia.derechoHabiencia, item: derechohabiencia)).toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(controller: _motivoderechohabiencia10,
                                  suggestions: _MotivioDerechohabiencia.map((motivoderechohabiencia) =>
                                      SearchFieldListItem(motivoderechohabiencia.motivoDerechoHabiencia, item: motivoderechohabiencia)).toList(),
                                    hintName: 'Motivo Derechohabiencia'))
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


  List <Widget> genarateItems1(){
    final result = <Widget>[];
    for(int i = 0; i < dataList1.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList1[i].value,
          title: Text(dataList1[i].prestacion),
          onChanged: (v){
            dataList1[i].value = v ?? false;
            dataList1.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems2(){
    final result = <Widget>[];
    for(int i = 0; i < dataList2.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList2[i].value,
          title: Text(dataList2[i].prestacion),
          onChanged: (v){
            dataList2[i].value = v ?? false;
            dataList2.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems3(){
    final result = <Widget>[];
    for(int i = 0; i < dataList3.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList3[i].value,
          title: Text(dataList3[i].prestacion),
          onChanged: (v){
            dataList3[i].value = v ?? false;
            dataList3.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems4(){
    final result = <Widget>[];
    for(int i = 0; i < dataList4.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList4[i].value,
          title: Text(dataList4[i].prestacion),
          onChanged: (v){
            dataList4[i].value = v ?? false;
            dataList4.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems5(){
    final result = <Widget>[];
    for(int i = 0; i < dataList5.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList5[i].value,
          title: Text(dataList5[i].prestacion),
          onChanged: (v){
            dataList5[i].value = v ?? false;
            dataList5.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems6(){
    final result = <Widget>[];
    for(int i = 0; i < dataList6.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList6[i].value,
          title: Text(dataList6[i].prestacion),
          onChanged: (v){
            dataList6[i].value = v ?? false;
            dataList6.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems7(){
    final result = <Widget>[];
    for(int i = 0; i < dataList7.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList7[i].value,
          title: Text(dataList7[i].prestacion),
          onChanged: (v){
            dataList7[i].value = v ?? false;
            dataList7.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems8(){
    final result = <Widget>[];
    for(int i = 0; i < dataList9.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList9[i].value,
          title: Text(dataList9[i].prestacion),
          onChanged: (v){
            dataList9[i].value = v ?? false;
            dataList9.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems9(){
    final result = <Widget>[];
    for(int i = 0; i < dataList9.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList9[i].value,
          title: Text(dataList9[i].prestacion),
          onChanged: (v){
            dataList9[i].value = v ?? false;
            dataList9.refresh();
          }));
    }
    return  result;
  }

  List <Widget> genarateItems10(){
    final result = <Widget>[];
    for(int i = 0; i < dataList10.length; i++){
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList10[i].value,
          title: Text(dataList10[i].prestacion),
          onChanged: (v){
            dataList10[i].value = v ?? false;
            dataList10.refresh();
          }));
    }
    return  result;
  }

}
