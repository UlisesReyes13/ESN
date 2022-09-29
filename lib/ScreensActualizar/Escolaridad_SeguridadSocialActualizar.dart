import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genSearchField.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/DerechohabienciasModel.dart';
import 'package:esn/Model/EscolaridadSeguridadSocial.dart';
import 'package:esn/Model/EscolaridadesModel.dart';
import 'package:esn/Model/EstructuraFamiliarModel.dart';
import 'package:esn/Model/GradosEscolaresModel.dart';
import 'package:esn/Model/MotivoDerechoHabiencia.dart';
import 'package:esn/Model/OcupacionesModel.dart';
import 'package:esn/Model/PrestacionesLaboralesModel.dart';
import 'package:esn/Model/TipoEmpleoModel.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/ScreensActualizar/Escolaridad_SeguridadSocialActualizar.dart';
import 'package:esn/Screens/EstructuraFamiliarTabla.dart';
import 'package:esn/ScreensActualizar/Salud_PertenenciaIndigenaActualizar.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchfield/searchfield.dart';

enum AsisteEscuela { na, si, no }

enum JubilacionPensionado { na, si, no }

class Escolaridad_SeguridadSocialActualizar extends StatefulWidget {
  String folio;

  Escolaridad_SeguridadSocialActualizar(this.folio);

  @override
  State<Escolaridad_SeguridadSocialActualizar> createState() =>
      _Escolaridad_SeguridadSocialActualizarState();
}

class _Escolaridad_SeguridadSocialActualizarState
    extends State<Escolaridad_SeguridadSocialActualizar> {
  List<EscolaridadesModel> _Escolaridad = List<EscolaridadesModel>();
  List<GradosEscolaresModel> _GradoEscolar = List<GradosEscolaresModel>();
  List<OcupacionesModel> _Ocupacion = List<OcupacionesModel>();
  List<TipoEmpleoModel> _TipoEmpleo = List<TipoEmpleoModel>();
  List<DerechoHabienciasModel> _Derechohabiencia =
      List<DerechoHabienciasModel>();
  List<MotivoDerechoHabienciasModel> _MotivioDerechohabiencia =
      List<MotivoDerechoHabienciasModel>();

  List<EstructuraFamilarModel> _EstructuraFamiliar1 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar2 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar3 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar4 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar5 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar6 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar7 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar8 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar9 =
      List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar10 =
      List<EstructuraFamilarModel>();

  List<EscolaridadSeguridadSocial> _Escolaridad1 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad2 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad3 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad4 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad5 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad6 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad7 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad8 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad9 =
      List<EscolaridadSeguridadSocial>();
  List<EscolaridadSeguridadSocial> _Escolaridad10 =
      List<EscolaridadSeguridadSocial>();

  final _escolaridad1 = TextEditingController();
  final _gradoEscolar1 = TextEditingController();
  final _ocupacion1 = TextEditingController();
  final _tipoEmpleo1 = TextEditingController();
  final _derechohabiencia1 = TextEditingController();
  final _motivoderechohabiencia1 = TextEditingController();
  AsisteEscuela _asisteEscuela1 = AsisteEscuela.si;
  JubilacionPensionado _jubilacionPensionado1;
  final _nombre1 = TextEditingController();

  final _escolaridad2 = TextEditingController();
  final _gradoEscolar2 = TextEditingController();
  final _ocupacion2 = TextEditingController();
  final _tipoEmpleo2 = TextEditingController();
  final _derechohabiencia2 = TextEditingController();
  final _motivoderechohabiencia2 = TextEditingController();
  AsisteEscuela _asisteEscuela2;
  JubilacionPensionado _jubilacionPensionado2;
  final _nombre2 = TextEditingController();

  final _escolaridad3 = TextEditingController();
  final _gradoEscolar3 = TextEditingController();
  final _ocupacion3 = TextEditingController();
  final _tipoEmpleo3 = TextEditingController();
  final _derechohabiencia3 = TextEditingController();
  final _motivoderechohabiencia3 = TextEditingController();
  AsisteEscuela _asisteEscuela3;
  JubilacionPensionado _jubilacionPensionado3;
  final _nombre3 = TextEditingController();

  final _escolaridad4 = TextEditingController();
  final _gradoEscolar4 = TextEditingController();
  final _ocupacion4 = TextEditingController();
  final _tipoEmpleo4 = TextEditingController();
  final _derechohabiencia4 = TextEditingController();
  final _motivoderechohabiencia4 = TextEditingController();
  AsisteEscuela _asisteEscuela4;
  JubilacionPensionado _jubilacionPensionado4;
  final _nombre4 = TextEditingController();

  final _escolaridad5 = TextEditingController();
  final _gradoEscolar5 = TextEditingController();
  final _ocupacion5 = TextEditingController();
  final _tipoEmpleo5 = TextEditingController();
  final _derechohabiencia5 = TextEditingController();
  final _motivoderechohabiencia5 = TextEditingController();
  AsisteEscuela _asisteEscuela5;
  JubilacionPensionado _jubilacionPensionado5;
  final _nombre5 = TextEditingController();

  final _escolaridad6 = TextEditingController();
  final _gradoEscolar6 = TextEditingController();
  final _ocupacion6 = TextEditingController();
  final _tipoEmpleo6 = TextEditingController();
  final _derechohabiencia6 = TextEditingController();
  final _motivoderechohabiencia6 = TextEditingController();
  AsisteEscuela _asisteEscuela6;
  JubilacionPensionado _jubilacionPensionado6;
  final _nombre6 = TextEditingController();

  final _escolaridad7 = TextEditingController();
  final _gradoEscolar7 = TextEditingController();
  final _ocupacion7 = TextEditingController();
  final _tipoEmpleo7 = TextEditingController();
  final _derechohabiencia7 = TextEditingController();
  final _motivoderechohabiencia7 = TextEditingController();
  AsisteEscuela _asisteEscuela7;
  JubilacionPensionado _jubilacionPensionado7;
  final _nombre7 = TextEditingController();

  final _escolaridad8 = TextEditingController();
  final _gradoEscolar8 = TextEditingController();
  final _ocupacion8 = TextEditingController();
  final _tipoEmpleo8 = TextEditingController();
  final _derechohabiencia8 = TextEditingController();
  final _motivoderechohabiencia8 = TextEditingController();
  AsisteEscuela _asisteEscuela8;
  JubilacionPensionado _jubilacionPensionado8;
  final _nombre8 = TextEditingController();

  final _escolaridad9 = TextEditingController();
  final _gradoEscolar9 = TextEditingController();
  final _ocupacion9 = TextEditingController();
  final _tipoEmpleo9 = TextEditingController();
  final _derechohabiencia9 = TextEditingController();
  final _motivoderechohabiencia9 = TextEditingController();
  AsisteEscuela _asisteEscuela9;
  JubilacionPensionado _jubilacionPensionado9;
  final _nombre9 = TextEditingController();

  final _escolaridad10 = TextEditingController();
  final _gradoEscolar10 = TextEditingController();
  final _ocupacion10 = TextEditingController();
  final _tipoEmpleo10 = TextEditingController();
  final _derechohabiencia10 = TextEditingController();
  final _motivoderechohabiencia10 = TextEditingController();
  AsisteEscuela _asisteEscuela10;
  JubilacionPensionado _jubilacionPensionado10;
  final _nombre10 = TextEditingController();

  final dataList1 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems1 = <PrestacionesLaboralesModel>[].obs;

  final dataList2 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems2 = <PrestacionesLaboralesModel>[].obs;

  final dataList3 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems3 = <PrestacionesLaboralesModel>[].obs;

  final dataList4 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems4 = <PrestacionesLaboralesModel>[].obs;

  final dataList5 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems5 = <PrestacionesLaboralesModel>[].obs;

  final dataList6 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems6 = <PrestacionesLaboralesModel>[].obs;

  final dataList7 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems7 = <PrestacionesLaboralesModel>[].obs;

  final dataList8 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems8 = <PrestacionesLaboralesModel>[].obs;

  final dataList9 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems9 = <PrestacionesLaboralesModel>[].obs;

  final dataList10 = <PrestacionesLaboralesModel>[
    PrestacionesLaboralesModel(
        prestacion: '1A incapacidad por enfermedad, accidente o maternidad'),
    PrestacionesLaboralesModel(prestacion: '2B sar o afore'),
    PrestacionesLaboralesModel(prestacion: '3C crédito para vivienda'),
    PrestacionesLaboralesModel(prestacion: '4D guardería'),
    PrestacionesLaboralesModel(prestacion: '5E aguinaldo'),
    PrestacionesLaboralesModel(prestacion: '6F seguro de vida'),
    PrestacionesLaboralesModel(
        prestacion: '7G no tiene derecho a ninguna prestación'),
    PrestacionesLaboralesModel(prestacion: '8H otro tipo de seguro contratado'),
    PrestacionesLaboralesModel(prestacion: '9I n/a'),
  ].obs;

  final selectedItems10 = <PrestacionesLaboralesModel>[].obs;

  var dbHelper;

  @override
  void initState() {
    getAllCategoriesDerechohabiencia();
    getAllCategoriesEscolaridades();
    getAllCategoriesGradoEscolar();
    getAllCategoriesMotivoDerechohabiencias();
    getAllCategortegoriesTipoEmpleo();
    getAllCategoriesOcupacion();
    getAllEstructura1();
    getAllEstructura2();
    getAllEstructura3();
    getAllEstructura4();

    cargarDatos();
    super.initState();
    dbHelper = DbHelper();
  }

  cargarDatos() {
    getAllEscolaridad1();
    getAllEscolaridad2();
    getAllEscolaridad3();
    getAllEscolaridad4();
    getAllEscolaridad5();
    getAllEscolaridad6();
    getAllEscolaridad7();
    getAllEscolaridad8();
    getAllEscolaridad9();
    getAllEscolaridad10();
  }

  getAllEscolaridad1() async {
    _Escolaridad1 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad1(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad1.add(categoryModel);
      });
    });
    _escolaridad1.text = _Escolaridad1.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad1.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad1.map((e) => e.Escolaridad).first;

    _gradoEscolar1.text = _Escolaridad1.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad1.map((e) => e.GradoEscolar).first;

    _ocupacion1.text = _Escolaridad1.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad1.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad1.map((e) => e.Ocupacion).first;

    _tipoEmpleo1.text = _Escolaridad1.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad1.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad1.map((e) => e.TipoEmpleo).first;

    _derechohabiencia1.text =
        _Escolaridad1.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad1.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad1.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia1.text =
        _Escolaridad1.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad1.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad1.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad1.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela1 = AsisteEscuela.si;
    } else if (_Escolaridad1.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela1 = AsisteEscuela.no;
    } else {
      _asisteEscuela1 = AsisteEscuela.na;
    }

    if (_Escolaridad1.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado1 = JubilacionPensionado.si;
    } else if (_Escolaridad1.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado1 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado1 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad2() async {
    _Escolaridad2 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad2(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad2.add(categoryModel);
      });
    });
    _escolaridad2.text = _Escolaridad2.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad2.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad2.map((e) => e.Escolaridad).first;

    _gradoEscolar2.text = _Escolaridad2.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad2.map((e) => e.GradoEscolar).first;

    _ocupacion2.text = _Escolaridad2.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad2.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad2.map((e) => e.Ocupacion).first;

    _tipoEmpleo2.text = _Escolaridad2.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad2.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad2.map((e) => e.TipoEmpleo).first;

    _derechohabiencia2.text =
        _Escolaridad2.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad2.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad2.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia2.text =
        _Escolaridad2.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad2.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad2.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad2.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela2 = AsisteEscuela.si;
    } else if (_Escolaridad2.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela2 = AsisteEscuela.no;
    } else {
      _asisteEscuela2 = AsisteEscuela.na;
    }

    if (_Escolaridad2.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado2 = JubilacionPensionado.si;
    } else if (_Escolaridad2.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado2 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado2 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad3() async {
    _Escolaridad3 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad3(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad3.add(categoryModel);
      });
    });
    _escolaridad3.text = _Escolaridad3.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad3.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad3.map((e) => e.Escolaridad).first;

    _gradoEscolar3.text = _Escolaridad3.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad3.map((e) => e.GradoEscolar).first;

    _ocupacion3.text = _Escolaridad3.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad3.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad3.map((e) => e.Ocupacion).first;

    _tipoEmpleo3.text = _Escolaridad3.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad3.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad3.map((e) => e.TipoEmpleo).first;

    _derechohabiencia3.text =
        _Escolaridad3.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad3.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad3.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia3.text =
        _Escolaridad3.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad3.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad3.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad3.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela3 = AsisteEscuela.si;
    } else if (_Escolaridad3.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela3 = AsisteEscuela.no;
    } else {
      _asisteEscuela3 = AsisteEscuela.na;
    }

    if (_Escolaridad3.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado3 = JubilacionPensionado.si;
    } else if (_Escolaridad3.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado3 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado3 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad4() async {
    _Escolaridad4 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad4(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad4.add(categoryModel);
      });
    });
    _escolaridad4.text = _Escolaridad4.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad4.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad4.map((e) => e.Escolaridad).first;

    _gradoEscolar4.text = _Escolaridad4.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad4.map((e) => e.GradoEscolar).first;

    _ocupacion4.text = _Escolaridad4.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad4.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad4.map((e) => e.Ocupacion).first;

    _tipoEmpleo4.text = _Escolaridad4.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad4.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad4.map((e) => e.TipoEmpleo).first;

    _derechohabiencia4.text =
        _Escolaridad4.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad4.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad4.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia4.text =
        _Escolaridad4.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad4.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad4.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad4.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela4 = AsisteEscuela.si;
    } else if (_Escolaridad4.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela4 = AsisteEscuela.no;
    } else {
      _asisteEscuela4 = AsisteEscuela.na;
    }

    if (_Escolaridad4.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado4 = JubilacionPensionado.si;
    } else if (_Escolaridad4.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado4 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado4 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad5() async {
    _Escolaridad5 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad5(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad5.add(categoryModel);
      });
    });
    _escolaridad5.text = _Escolaridad5.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad5.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad5.map((e) => e.Escolaridad).first;

    _gradoEscolar5.text = _Escolaridad5.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad5.map((e) => e.GradoEscolar).first;

    _ocupacion5.text = _Escolaridad5.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad5.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad5.map((e) => e.Ocupacion).first;

    _tipoEmpleo5.text = _Escolaridad5.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad5.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad5.map((e) => e.TipoEmpleo).first;

    _derechohabiencia5.text =
        _Escolaridad5.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad5.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad5.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia5.text =
        _Escolaridad5.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad5.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad5.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad5.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela5 = AsisteEscuela.si;
    } else if (_Escolaridad5.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela5 = AsisteEscuela.no;
    } else {
      _asisteEscuela5 = AsisteEscuela.na;
    }

    if (_Escolaridad5.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado5 = JubilacionPensionado.si;
    } else if (_Escolaridad5.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado5 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado5 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad6() async {
    _Escolaridad6 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad6(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad6.add(categoryModel);
      });
    });
    _escolaridad6.text = _Escolaridad6.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad6.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad6.map((e) => e.Escolaridad).first;

    _gradoEscolar6.text = _Escolaridad6.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad6.map((e) => e.GradoEscolar).first;

    _ocupacion6.text = _Escolaridad6.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad6.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad6.map((e) => e.Ocupacion).first;

    _tipoEmpleo6.text = _Escolaridad6.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad6.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad6.map((e) => e.TipoEmpleo).first;

    _derechohabiencia6.text =
        _Escolaridad6.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad6.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad6.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia6.text =
        _Escolaridad6.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad6.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad6.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad6.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela6 = AsisteEscuela.si;
    } else if (_Escolaridad6.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela6 = AsisteEscuela.no;
    } else {
      _asisteEscuela6 = AsisteEscuela.na;
    }

    if (_Escolaridad6.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado6 = JubilacionPensionado.si;
    } else if (_Escolaridad6.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado6 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado6 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad7() async {
    _Escolaridad7 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad7(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad7.add(categoryModel);
      });
    });
    _escolaridad7.text = _Escolaridad7.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad7.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad7.map((e) => e.Escolaridad).first;

    _gradoEscolar7.text = _Escolaridad7.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad7.map((e) => e.GradoEscolar).first;

    _ocupacion7.text = _Escolaridad7.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad7.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad7.map((e) => e.Ocupacion).first;

    _tipoEmpleo7.text = _Escolaridad7.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad7.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad7.map((e) => e.TipoEmpleo).first;

    _derechohabiencia7.text =
        _Escolaridad7.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad7.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad7.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia7.text =
        _Escolaridad7.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad7.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad7.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad7.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela7 = AsisteEscuela.si;
    } else if (_Escolaridad7.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela7 = AsisteEscuela.no;
    } else {
      _asisteEscuela7 = AsisteEscuela.na;
    }

    if (_Escolaridad7.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado7 = JubilacionPensionado.si;
    } else if (_Escolaridad7.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado7 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado7 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad8() async {
    _Escolaridad8 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad8(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad8.add(categoryModel);
      });
    });
    _escolaridad8.text = _Escolaridad8.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad8.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad8.map((e) => e.Escolaridad).first;

    _gradoEscolar8.text = _Escolaridad8.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad8.map((e) => e.GradoEscolar).first;

    _ocupacion8.text = _Escolaridad8.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad8.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad8.map((e) => e.Ocupacion).first;

    _tipoEmpleo8.text = _Escolaridad8.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad8.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad8.map((e) => e.TipoEmpleo).first;

    _derechohabiencia8.text =
        _Escolaridad8.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad8.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad8.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia8.text =
        _Escolaridad8.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad8.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad8.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad8.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela8 = AsisteEscuela.si;
    } else if (_Escolaridad8.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela8 = AsisteEscuela.no;
    } else {
      _asisteEscuela8 = AsisteEscuela.na;
    }

    if (_Escolaridad8.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado8 = JubilacionPensionado.si;
    } else if (_Escolaridad8.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado8 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado8 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad9() async {
    _Escolaridad9 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad9(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad9.add(categoryModel);
      });
    });
    _escolaridad9.text = _Escolaridad9.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad9.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad9.map((e) => e.Escolaridad).first;

    _gradoEscolar9.text = _Escolaridad9.map((e) => e.ClaveGradoEscolar).first +
        " " +
        _Escolaridad9.map((e) => e.GradoEscolar).first;

    _ocupacion9.text = _Escolaridad9.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad9.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad9.map((e) => e.Ocupacion).first;

    _tipoEmpleo9.text = _Escolaridad9.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad9.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad9.map((e) => e.TipoEmpleo).first;

    _derechohabiencia9.text =
        _Escolaridad9.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad9.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad9.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia9.text =
        _Escolaridad9.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad9.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad9.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad9.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela9 = AsisteEscuela.si;
    } else if (_Escolaridad9.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela9 = AsisteEscuela.no;
    } else {
      _asisteEscuela9 = AsisteEscuela.na;
    }

    if (_Escolaridad9.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado9 = JubilacionPensionado.si;
    } else if (_Escolaridad9.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado9 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado9 = JubilacionPensionado.na;
    }
  }

  getAllEscolaridad10() async {
    _Escolaridad10 = List<EscolaridadSeguridadSocial>();
    var categories =
        await CategoryService().readEscolaridad10(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadSeguridadSocial();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveEscolaridad = category['ClaveEscolaridad'];
        categoryModel.OrdenEscolaridad = category['OrdenEscolaridad'];
        categoryModel.Escolaridad = category['Escolaridad'];
        categoryModel.ClaveGradoEscolar = category['ClaveGradoEscolar'];
        categoryModel.GradoEscolar = category['GradoEscolar'];
        categoryModel.ClaveAsisteEscuela = category['ClaveAsisteEscuela'];
        categoryModel.OrdenAsisteEscuela = category['OrdenAsisteEscuela'];
        categoryModel.AsisteEscuela = category['AsisteEscuela'];
        categoryModel.ClaveOcupacion = category['ClaveOcupacion'];
        categoryModel.OrdenOcupacion = category['OrdenOcupacion'];
        categoryModel.Ocupacion = category['Ocupacion'];
        categoryModel.ClaveTipoEmpleo = category['ClaveTipoEmpleo'];
        categoryModel.OrdenTipoEmpleo = category['OrdenTipoEmpleo'];
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        categoryModel.pk_prestacioneslab = category['pk_prestacioneslab'];
        categoryModel.int_OrdenPrestacionesLab =
            category['int_OrdenPrestacionesLab'];
        categoryModel.txt_desc_prestacioneslab =
            category['txt_desc_prestacioneslab'];
        categoryModel.ClaveJubilacion = category['ClaveJubilacion'];
        categoryModel.OrdenJubilacion = category['OrdenJubilacion'];
        categoryModel.Jubilacion = category['Jubilacion'];
        categoryModel.ClaveDerechohabiencia = category['ClaveDerechohabiencia'];
        categoryModel.OrdenDerechohabiencia = category['OrdenDerechohabiencia'];
        categoryModel.Derechohabiencia = category['Derechohabiencia'];
        categoryModel.ClaveMotivoDerechohabiencia =
            category['ClaveMotivoDerechohabiencia'];
        categoryModel.OrdenMotivoDerechohabiencia =
            category['OrdenMotivoDerechohabiencia'];
        categoryModel.MotivoDerechohabiencia =
            category['MotivoDerechohabiencia'];

        _Escolaridad10.add(categoryModel);
      });
    });
    _escolaridad10.text = _Escolaridad10.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad10.map((e) => e.ClaveEscolaridad).first +
        " " +
        _Escolaridad10.map((e) => e.Escolaridad).first;

    _gradoEscolar10.text =
        _Escolaridad10.map((e) => e.ClaveGradoEscolar).first +
            " " +
            _Escolaridad10.map((e) => e.GradoEscolar).first;

    _ocupacion10.text = _Escolaridad10.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad10.map((e) => e.OrdenOcupacion).first +
        " " +
        _Escolaridad10.map((e) => e.Ocupacion).first;

    _tipoEmpleo10.text = _Escolaridad10.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad10.map((e) => e.OrdenTipoEmpleo).first +
        " " +
        _Escolaridad10.map((e) => e.TipoEmpleo).first;

    _derechohabiencia10.text =
        _Escolaridad10.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad10.map((e) => e.OrdenDerechohabiencia).first +
            " " +
            _Escolaridad10.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia10.text =
        _Escolaridad10.map((e) => e.ClaveMotivoDerechohabiencia).first +
            " " +
            _Escolaridad10.map((e) => e.OrdenMotivoDerechohabiencia).first +
            " " +
            _Escolaridad10.map((e) => e.MotivoDerechohabiencia).first;

    if (_Escolaridad10.map((e) => e.AsisteEscuela).first == "si") {
      _asisteEscuela10 = AsisteEscuela.si;
    } else if (_Escolaridad10.map((e) => e.AsisteEscuela).first == "no") {
      _asisteEscuela10 = AsisteEscuela.no;
    } else {
      _asisteEscuela10 = AsisteEscuela.na;
    }

    if (_Escolaridad10.map((e) => e.Jubilacion).first == "si") {
      _jubilacionPensionado10 = JubilacionPensionado.si;
    } else if (_Escolaridad10.map((e) => e.Jubilacion).first == "no") {
      _jubilacionPensionado10 = JubilacionPensionado.no;
    } else {
      _jubilacionPensionado10 = JubilacionPensionado.na;
    }
  }

  getAllEstructura1() async {
    _EstructuraFamiliar1 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura1(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar1.add(categoryModel);
      });
    });
    _nombre1.text = _EstructuraFamiliar1.map((e) => e.nombre).first;
  }

  getAllEstructura2() async {
    _EstructuraFamiliar2 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura2(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar2.add(categoryModel);
      });
    });
    _nombre2.text = _EstructuraFamiliar2.map((e) => e.nombre).first;
  }

  getAllEstructura3() async {
    _EstructuraFamiliar3 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura3(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar3.add(categoryModel);
      });
    });
    _nombre3.text = _EstructuraFamiliar3.map((e) => e.nombre).first;
  }

  getAllEstructura4() async {
    _EstructuraFamiliar4 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura4(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar4.add(categoryModel);
      });
    });
    _nombre4.text = _EstructuraFamiliar4.map((e) => e.nombre).first;
  }

  getAllEstructura5() async {
    _EstructuraFamiliar5 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura5(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar5.add(categoryModel);
      });
    });
    _nombre5.text = _EstructuraFamiliar5.map((e) => e.nombre).first;
  }

  getAllEstructura6() async {
    _EstructuraFamiliar6 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura6(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar6.add(categoryModel);
      });
    });
    _nombre6.text = _EstructuraFamiliar6.map((e) => e.nombre).first;
  }

  getAllEstructura7() async {
    _EstructuraFamiliar7 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura7(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar7.add(categoryModel);
      });
    });
    _nombre7.text = _EstructuraFamiliar7.map((e) => e.nombre).first;
  }

  getAllEstructura8() async {
    _EstructuraFamiliar8 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura8(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar8.add(categoryModel);
      });
    });
    _nombre8.text = _EstructuraFamiliar8.map((e) => e.nombre).first;
  }

  getAllEstructura9() async {
    _EstructuraFamiliar9 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura9(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar9.add(categoryModel);
      });
    });
    _nombre9.text = _EstructuraFamiliar9.map((e) => e.nombre).first;
  }

  getAllEstructura10() async {
    _EstructuraFamiliar10 = List<EstructuraFamilarModel>();
    var categories =
        await CategoryService().readEstructura10(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar10.add(categoryModel);
      });
    });
    _nombre10.text = _EstructuraFamiliar10.map((e) => e.nombre).first;
  }

  getAllCategoriesEscolaridades() async {
    _Escolaridad = List<EscolaridadesModel>();
    var categories = await CategoryService().readCategoriesEcolaridades();
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.escolaridad = category['Escolaridad'];
        _Escolaridad.add(categoryModel);
      });
    });
  }

  renglon1() async {
    var Escolaridad = _escolaridad1.text.toString(); // 'artlang'
    final escolaridad = Escolaridad.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion = _ocupacion1.text.toString(); // 'artlang'
    final ocupacion = Ocupacion.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo = _tipoEmpleo1.text.toString(); // 'artlang'
    final tipoEmpleo = TipoEmpleo.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho = _derechohabiencia1.text.toString(); // 'artlang'
    final Derecho = derecho
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

    var motivoDerecho = _motivoderechohabiencia1.text.toString(); // 'artlang'
    final motivoDereHab = motivoDerecho
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

    selectedItems1.clear();
    selectedItems1.addAll((dataList1.where((p0) => p0.value)));

    var pkPrestaciones = selectedItems1.toString(); // 'artlang'
    final prestacionesPK = pkPrestaciones
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones = selectedItems1.toString(); // 'artlang'
    final prestacionesInt = intPrestaciones
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones = selectedItems1.toString(); // 'artlang'
    final prestaciones = Prestaciones.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela = _asisteEscuela1.name.toString();
    if (asisteEscuela == 'si') {
      asisteEscuela = '1 1 Si';
    } else if (asisteEscuela == 'no') {
      asisteEscuela = '2 2 No';
    } else if (asisteEscuela == 'na') {
      asisteEscuela = '3 3 Otro';
    }

    String Jubilado = _jubilacionPensionado1.name.toString();
    if (Jubilado == 'si') {
      Jubilado = '1 1 Si';
    } else if (Jubilado == 'no') {
      Jubilado = '2 2 No';
    } else if (Jubilado == 'na') {
      Jubilado = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad1.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad1.text.substring(0, 2),
      Escolaridad: escolaridad.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar1.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar1.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela.substring(0, 1),
      AsisteEscuela: _asisteEscuela1.name,
      ClaveOcupacion: _ocupacion1.text.substring(0, 2),
      OrdenOcupacion: _ocupacion1.text.substring(0, 2),
      Ocupacion: ocupacion.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo1.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo1.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo.trimLeft(),

      pk_prestacioneslab: prestacionesPK.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones.trimLeft(),

      ClaveJubilacion: Jubilado.substring(0, 1),
      OrdenJubilacion: Jubilado.substring(0, 1),
      Jubilacion: _jubilacionPensionado1.name,
      ClaveDerechohabiencia: _derechohabiencia1.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia1.text.substring(0, 1),
      Derechohabiencia: Derecho.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia1.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia1.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  upDateRenglon1() async {
    var Escolaridad = _escolaridad1.text.toString(); // 'artlang'
    final escolaridad = Escolaridad.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion = _ocupacion1.text.toString(); // 'artlang'
    final ocupacion = Ocupacion.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo = _tipoEmpleo1.text.toString(); // 'artlang'
    final tipoEmpleo = TipoEmpleo.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho = _derechohabiencia1.text.toString(); // 'artlang'
    final Derecho = derecho
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

    var motivoDerecho = _motivoderechohabiencia1.text.toString(); // 'artlang'
    final motivoDereHab = motivoDerecho
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

    selectedItems1.clear();
    selectedItems1.addAll((dataList1.where((p0) => p0.value)));

    var pkPrestaciones = selectedItems1.toString(); // 'artlang'
    final prestacionesPK = pkPrestaciones
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones = selectedItems1.toString(); // 'artlang'
    final prestacionesInt = intPrestaciones
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones = selectedItems1.toString(); // 'artlang'
    final prestaciones = Prestaciones.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela = _asisteEscuela1.name.toString();
    if (asisteEscuela == 'si') {
      asisteEscuela = '1 1 Si';
    } else if (asisteEscuela == 'no') {
      asisteEscuela = '2 2 No';
    } else if (asisteEscuela == 'na') {
      asisteEscuela = '3 3 Otro';
    }

    String Jubilado = _jubilacionPensionado1.name.toString();
    if (Jubilado == 'si') {
      Jubilado = '1 1 Si';
    } else if (Jubilado == 'no') {
      Jubilado = '2 2 No';
    } else if (Jubilado == 'na') {
      Jubilado = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad1.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad1.text.substring(0, 2),
      Escolaridad: escolaridad.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar1.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar1.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela.substring(0, 1),
      AsisteEscuela: _asisteEscuela1.name,
      ClaveOcupacion: _ocupacion1.text.substring(0, 2),
      OrdenOcupacion: _ocupacion1.text.substring(0, 2),
      Ocupacion: ocupacion.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo1.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo1.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo.trimLeft(),

      pk_prestacioneslab: prestacionesPK.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones.trimLeft(),

      ClaveJubilacion: Jubilado.substring(0, 1),
      OrdenJubilacion: Jubilado.substring(0, 1),
      Jubilacion: _jubilacionPensionado1.name,
      ClaveDerechohabiencia: _derechohabiencia1.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia1.text.substring(0, 1),
      Derechohabiencia: Derecho.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia1.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia1.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad1(DModel)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon2() async {
    var Escolaridad2 = _escolaridad2.text.toString(); // 'artlang'
    final escolaridad2 = Escolaridad2.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion2 = _ocupacion2.text.toString(); // 'artlang'
    final ocupacion2 = Ocupacion2.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo2 = _tipoEmpleo2.text.toString(); // 'artlang'
    final tipoEmpleo2 = TipoEmpleo2.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho2 = _derechohabiencia2.text.toString(); // 'artlang'
    final Derecho2 = derecho2
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

    var motivoDerecho2 = _motivoderechohabiencia2.text.toString(); // 'artlang'
    final motivoDereHab2 = motivoDerecho2
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

    selectedItems2.clear();
    selectedItems2.addAll((dataList2.where((p0) => p0.value)));

    var pkPrestaciones2 = selectedItems2.toString(); // 'artlang'
    final prestacionesPK2 = pkPrestaciones2
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones2 = selectedItems2.toString(); // 'artlang'
    final prestacionesInt2 = intPrestaciones2
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones2 = selectedItems2.toString(); // 'artlang'
    final prestaciones2 = Prestaciones2.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela2 = _asisteEscuela2.name.toString();
    if (asisteEscuela2 == 'si') {
      asisteEscuela2 = '1 1 Si';
    } else if (asisteEscuela2 == 'no') {
      asisteEscuela2 = '2 2 No';
    } else if (asisteEscuela2 == 'na') {
      asisteEscuela2 = '3 3 Otro';
    }

    String Jubilado2 = _jubilacionPensionado2.name.toString();
    if (Jubilado2 == 'si') {
      Jubilado2 = '1 1 Si';
    } else if (Jubilado2 == 'no') {
      Jubilado2 = '2 2 No';
    } else if (Jubilado2 == 'na') {
      Jubilado2 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel2 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad2.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad2.text.substring(0, 2),
      Escolaridad: escolaridad2.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar2.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar2.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela2.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela2.substring(0, 1),
      AsisteEscuela: _asisteEscuela2.name,
      ClaveOcupacion: _ocupacion2.text.substring(0, 2),
      OrdenOcupacion: _ocupacion2.text.substring(0, 2),
      Ocupacion: ocupacion2.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo2.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo2.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo2.trimLeft(),

      pk_prestacioneslab: prestacionesPK2.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt2.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones2.trimLeft(),

      ClaveJubilacion: Jubilado2.substring(0, 1),
      OrdenJubilacion: Jubilado2.substring(0, 1),
      Jubilacion: _jubilacionPensionado2.name,
      ClaveDerechohabiencia: _derechohabiencia2.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia2.text.substring(0, 1),
      Derechohabiencia: Derecho2.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia2.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia2.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab2.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel2)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  upDateRenglon2() async {
    var Escolaridad2 = _escolaridad2.text.toString(); // 'artlang'
    final escolaridad2 = Escolaridad2.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion2 = _ocupacion2.text.toString(); // 'artlang'
    final ocupacion2 = Ocupacion2.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo2 = _tipoEmpleo2.text.toString(); // 'artlang'
    final tipoEmpleo2 = TipoEmpleo2.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho2 = _derechohabiencia2.text.toString(); // 'artlang'
    final Derecho2 = derecho2
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

    var motivoDerecho2 = _motivoderechohabiencia2.text.toString(); // 'artlang'
    final motivoDereHab2 = motivoDerecho2
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

    selectedItems2.clear();
    selectedItems2.addAll((dataList2.where((p0) => p0.value)));

    var pkPrestaciones2 = selectedItems2.toString(); // 'artlang'
    final prestacionesPK2 = pkPrestaciones2
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones2 = selectedItems2.toString(); // 'artlang'
    final prestacionesInt2 = intPrestaciones2
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones2 = selectedItems2.toString(); // 'artlang'
    final prestaciones2 = Prestaciones2.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela2 = _asisteEscuela2.name.toString();
    if (asisteEscuela2 == 'si') {
      asisteEscuela2 = '1 1 Si';
    } else if (asisteEscuela2 == 'no') {
      asisteEscuela2 = '2 2 No';
    } else if (asisteEscuela2 == 'na') {
      asisteEscuela2 = '3 3 Otro';
    }

    String Jubilado2 = _jubilacionPensionado2.name.toString();
    if (Jubilado2 == 'si') {
      Jubilado2 = '1 1 Si';
    } else if (Jubilado2 == 'no') {
      Jubilado2 = '2 2 No';
    } else if (Jubilado2 == 'na') {
      Jubilado2 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel2 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad2.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad2.text.substring(0, 2),
      Escolaridad: escolaridad2.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar2.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar2.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela2.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela2.substring(0, 1),
      AsisteEscuela: _asisteEscuela2.name,
      ClaveOcupacion: _ocupacion2.text.substring(0, 2),
      OrdenOcupacion: _ocupacion2.text.substring(0, 2),
      Ocupacion: ocupacion2.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo2.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo2.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo2.trimLeft(),

      pk_prestacioneslab: prestacionesPK2.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt2.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones2.trimLeft(),

      ClaveJubilacion: Jubilado2.substring(0, 1),
      OrdenJubilacion: Jubilado2.substring(0, 1),
      Jubilacion: _jubilacionPensionado2.name,
      ClaveDerechohabiencia: _derechohabiencia2.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia2.text.substring(0, 1),
      Derechohabiencia: Derecho2.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia2.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia2.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab2.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad2(DModel2)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon3() async {
    var Escolaridad3 = _escolaridad3.text.toString(); // 'artlang'
    final escolaridad3 = Escolaridad3.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion3 = _ocupacion3.text.toString(); // 'artlang'
    final ocupacion3 = Ocupacion3.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo3 = _tipoEmpleo3.text.toString(); // 'artlang'
    final tipoEmpleo3 = TipoEmpleo3.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho3 = _derechohabiencia3.text.toString(); // 'artlang'
    final Derecho3 = derecho3
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

    var motivoDerecho3 = _motivoderechohabiencia3.text.toString(); // 'artlang'
    final motivoDereHab3 = motivoDerecho3
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

    selectedItems3.clear();
    selectedItems3.addAll((dataList3.where((p0) => p0.value)));

    var pkPrestaciones3 = selectedItems3.toString(); // 'artlang'
    final prestacionesPK3 = pkPrestaciones3
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones3 = selectedItems3.toString(); // 'artlang'
    final prestacionesInt3 = intPrestaciones3
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones3 = selectedItems3.toString(); // 'artlang'
    final prestaciones3 = Prestaciones3.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela3 = _asisteEscuela3.name.toString();
    if (asisteEscuela3 == 'si') {
      asisteEscuela3 = '1 1 Si';
    } else if (asisteEscuela3 == 'no') {
      asisteEscuela3 = '2 2 No';
    } else if (asisteEscuela3 == 'na') {
      asisteEscuela3 = '3 3 Otro';
    }

    String Jubilado3 = _jubilacionPensionado3.name.toString();
    if (Jubilado3 == 'si') {
      Jubilado3 = '1 1 Si';
    } else if (Jubilado3 == 'no') {
      Jubilado3 = '2 2 No';
    } else if (Jubilado3 == 'na') {
      Jubilado3 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel3 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad3.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad3.text.substring(0, 2),
      Escolaridad: escolaridad3.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar3.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar3.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela3.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela3.substring(0, 1),
      AsisteEscuela: _asisteEscuela3.name,
      ClaveOcupacion: _ocupacion3.text.substring(0, 2),
      OrdenOcupacion: _ocupacion3.text.substring(0, 2),
      Ocupacion: ocupacion3.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo3.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo3.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo3.trimLeft(),

      pk_prestacioneslab: prestacionesPK3.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt3.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones3.trimLeft(),

      ClaveJubilacion: Jubilado3.substring(0, 1),
      OrdenJubilacion: Jubilado3.substring(0, 1),
      Jubilacion: _jubilacionPensionado3.name,
      ClaveDerechohabiencia: _derechohabiencia3.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia3.text.substring(0, 1),
      Derechohabiencia: Derecho3.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia3.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia3.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab3.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel3)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  upDateRenglon3() async {
    var Escolaridad3 = _escolaridad3.text.toString(); // 'artlang'
    final escolaridad3 = Escolaridad3.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion3 = _ocupacion3.text.toString(); // 'artlang'
    final ocupacion3 = Ocupacion3.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo3 = _tipoEmpleo3.text.toString(); // 'artlang'
    final tipoEmpleo3 = TipoEmpleo3.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho3 = _derechohabiencia3.text.toString(); // 'artlang'
    final Derecho3 = derecho3
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

    var motivoDerecho3 = _motivoderechohabiencia3.text.toString(); // 'artlang'
    final motivoDereHab3 = motivoDerecho3
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

    selectedItems3.clear();
    selectedItems3.addAll((dataList3.where((p0) => p0.value)));

    var pkPrestaciones3 = selectedItems3.toString(); // 'artlang'
    final prestacionesPK3 = pkPrestaciones3
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones3 = selectedItems3.toString(); // 'artlang'
    final prestacionesInt3 = intPrestaciones3
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones3 = selectedItems3.toString(); // 'artlang'
    final prestaciones3 = Prestaciones3.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela3 = _asisteEscuela3.name.toString();
    if (asisteEscuela3 == 'si') {
      asisteEscuela3 = '1 1 Si';
    } else if (asisteEscuela3 == 'no') {
      asisteEscuela3 = '2 2 No';
    } else if (asisteEscuela3 == 'na') {
      asisteEscuela3 = '3 3 Otro';
    }

    String Jubilado3 = _jubilacionPensionado3.name.toString();
    if (Jubilado3 == 'si') {
      Jubilado3 = '1 1 Si';
    } else if (Jubilado3 == 'no') {
      Jubilado3 = '2 2 No';
    } else if (Jubilado3 == 'na') {
      Jubilado3 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel3 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad3.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad3.text.substring(0, 2),
      Escolaridad: escolaridad3.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar3.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar3.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela3.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela3.substring(0, 1),
      AsisteEscuela: _asisteEscuela3.name,
      ClaveOcupacion: _ocupacion3.text.substring(0, 2),
      OrdenOcupacion: _ocupacion3.text.substring(0, 2),
      Ocupacion: ocupacion3.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo3.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo3.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo3.trimLeft(),

      pk_prestacioneslab: prestacionesPK3.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt3.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones3.trimLeft(),

      ClaveJubilacion: Jubilado3.substring(0, 1),
      OrdenJubilacion: Jubilado3.substring(0, 1),
      Jubilacion: _jubilacionPensionado3.name,
      ClaveDerechohabiencia: _derechohabiencia3.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia3.text.substring(0, 1),
      Derechohabiencia: Derecho3.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia3.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia3.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab3.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad3(DModel3)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon4() async {
    var Escolaridad4 = _escolaridad4.text.toString(); // 'artlang'
    final escolaridad4 = Escolaridad4.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion4 = _ocupacion4.text.toString(); // 'artlang'
    final ocupacion4 = Ocupacion4.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo4 = _tipoEmpleo4.text.toString(); // 'artlang'
    final tipoEmpleo4 = TipoEmpleo4.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho4 = _derechohabiencia4.text.toString(); // 'artlang'
    final Derecho4 = derecho4
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

    var motivoDerecho4 = _motivoderechohabiencia4.text.toString(); // 'artlang'
    final motivoDereHab4 = motivoDerecho4
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

    selectedItems4.clear();
    selectedItems4.addAll((dataList4.where((p0) => p0.value)));

    var pkPrestaciones4 = selectedItems4.toString(); // 'artlang'
    final prestacionesPK4 = pkPrestaciones4
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones4 = selectedItems4.toString(); // 'artlang'
    final prestacionesInt4 = intPrestaciones4
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones4 = selectedItems4.toString(); // 'artlang'
    final prestaciones4 = Prestaciones4.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela4 = _asisteEscuela4.name.toString();
    if (asisteEscuela4 == 'si') {
      asisteEscuela4 = '1 1 Si';
    } else if (asisteEscuela4 == 'no') {
      asisteEscuela4 = '2 2 No';
    } else if (asisteEscuela4 == 'na') {
      asisteEscuela4 = '3 3 Otro';
    }

    String Jubilado4 = _jubilacionPensionado4.name.toString();
    if (Jubilado4 == 'si') {
      Jubilado4 = '1 1 Si';
    } else if (Jubilado4 == 'no') {
      Jubilado4 = '2 2 No';
    } else if (Jubilado4 == 'na') {
      Jubilado4 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel4 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad4.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad4.text.substring(0, 2),
      Escolaridad: escolaridad4.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar4.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar4.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela4.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela4.substring(0, 1),
      AsisteEscuela: _asisteEscuela4.name,
      ClaveOcupacion: _ocupacion4.text.substring(0, 2),
      OrdenOcupacion: _ocupacion4.text.substring(0, 2),
      Ocupacion: ocupacion4.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo4.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo4.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo4.trimLeft(),

      pk_prestacioneslab: prestacionesPK4.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt4.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones4.trimLeft(),

      ClaveJubilacion: Jubilado4.substring(0, 1),
      OrdenJubilacion: Jubilado4.substring(0, 1),
      Jubilacion: _jubilacionPensionado4.name,
      ClaveDerechohabiencia: _derechohabiencia4.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia4.text.substring(0, 1),
      Derechohabiencia: Derecho4.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia4.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia4.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab4.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel4)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon4() async {
    var Escolaridad4 = _escolaridad4.text.toString(); // 'artlang'
    final escolaridad4 = Escolaridad4.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion4 = _ocupacion4.text.toString(); // 'artlang'
    final ocupacion4 = Ocupacion4.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo4 = _tipoEmpleo4.text.toString(); // 'artlang'
    final tipoEmpleo4 = TipoEmpleo4.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho4 = _derechohabiencia4.text.toString(); // 'artlang'
    final Derecho4 = derecho4
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

    var motivoDerecho4 = _motivoderechohabiencia4.text.toString(); // 'artlang'
    final motivoDereHab4 = motivoDerecho4
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

    selectedItems4.clear();
    selectedItems4.addAll((dataList4.where((p0) => p0.value)));

    var pkPrestaciones4 = selectedItems4.toString(); // 'artlang'
    final prestacionesPK4 = pkPrestaciones4
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones4 = selectedItems4.toString(); // 'artlang'
    final prestacionesInt4 = intPrestaciones4
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones4 = selectedItems4.toString(); // 'artlang'
    final prestaciones4 = Prestaciones4.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela4 = _asisteEscuela4.name.toString();
    if (asisteEscuela4 == 'si') {
      asisteEscuela4 = '1 1 Si';
    } else if (asisteEscuela4 == 'no') {
      asisteEscuela4 = '2 2 No';
    } else if (asisteEscuela4 == 'na') {
      asisteEscuela4 = '3 3 Otro';
    }

    String Jubilado4 = _jubilacionPensionado4.name.toString();
    if (Jubilado4 == 'si') {
      Jubilado4 = '1 1 Si';
    } else if (Jubilado4 == 'no') {
      Jubilado4 = '2 2 No';
    } else if (Jubilado4 == 'na') {
      Jubilado4 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel4 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad4.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad4.text.substring(0, 2),
      Escolaridad: escolaridad4.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar4.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar4.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela4.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela4.substring(0, 1),
      AsisteEscuela: _asisteEscuela4.name,
      ClaveOcupacion: _ocupacion4.text.substring(0, 2),
      OrdenOcupacion: _ocupacion4.text.substring(0, 2),
      Ocupacion: ocupacion4.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo4.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo4.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo4.trimLeft(),

      pk_prestacioneslab: prestacionesPK4.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt4.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones4.trimLeft(),

      ClaveJubilacion: Jubilado4.substring(0, 1),
      OrdenJubilacion: Jubilado4.substring(0, 1),
      Jubilacion: _jubilacionPensionado4.name,
      ClaveDerechohabiencia: _derechohabiencia4.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia4.text.substring(0, 1),
      Derechohabiencia: Derecho4.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia4.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia4.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab4.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad4(DModel4)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  renglon5() async {
    var Escolaridad5 = _escolaridad5.text.toString(); // 'artlang'
    final escolaridad5 = Escolaridad5.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion5 = _ocupacion5.text.toString(); // 'artlang'
    final ocupacion5 = Ocupacion5.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo5 = _tipoEmpleo5.text.toString(); // 'artlang'
    final tipoEmpleo5 = TipoEmpleo5.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho5 = _derechohabiencia5.text.toString(); // 'artlang'
    final Derecho5 = derecho5
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

    var motivoDerecho5 = _motivoderechohabiencia5.text.toString(); // 'artlang'
    final motivoDereHab5 = motivoDerecho5
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

    selectedItems5.clear();
    selectedItems5.addAll((dataList5.where((p0) => p0.value)));

    var pkPrestaciones5 = selectedItems5.toString(); // 'artlang'
    final prestacionesPK5 = pkPrestaciones5
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones5 = selectedItems5.toString(); // 'artlang'
    final prestacionesInt5 = intPrestaciones5
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones5 = selectedItems5.toString(); // 'artlang'
    final prestaciones5 = Prestaciones5.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela5 = _asisteEscuela5.name.toString();
    if (asisteEscuela5 == 'si') {
      asisteEscuela5 = '1 1 Si';
    } else if (asisteEscuela5 == 'no') {
      asisteEscuela5 = '2 2 No';
    } else if (asisteEscuela5 == 'na') {
      asisteEscuela5 = '3 3 Otro';
    }

    String Jubilado5 = _jubilacionPensionado5.name.toString();
    if (Jubilado5 == 'si') {
      Jubilado5 = '1 1 Si';
    } else if (Jubilado5 == 'no') {
      Jubilado5 = '2 2 No';
    } else if (Jubilado5 == 'na') {
      Jubilado5 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel5 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad5.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad5.text.substring(0, 2),
      Escolaridad: escolaridad5.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar5.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar5.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela5.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela5.substring(0, 1),
      AsisteEscuela: _asisteEscuela5.name,
      ClaveOcupacion: _ocupacion5.text.substring(0, 2),
      OrdenOcupacion: _ocupacion5.text.substring(0, 2),
      Ocupacion: ocupacion5.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo5.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo5.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo5.trimLeft(),

      pk_prestacioneslab: prestacionesPK5.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt5.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones5.trimLeft(),

      ClaveJubilacion: Jubilado5.substring(0, 1),
      OrdenJubilacion: Jubilado5.substring(0, 1),
      Jubilacion: _jubilacionPensionado5.name,
      ClaveDerechohabiencia: _derechohabiencia5.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia5.text.substring(0, 1),
      Derechohabiencia: Derecho5.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia5.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia5.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab5.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel5)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon5() async {
    var Escolaridad5 = _escolaridad5.text.toString(); // 'artlang'
    final escolaridad5 = Escolaridad5.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion5 = _ocupacion5.text.toString(); // 'artlang'
    final ocupacion5 = Ocupacion5.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo5 = _tipoEmpleo5.text.toString(); // 'artlang'
    final tipoEmpleo5 = TipoEmpleo5.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho5 = _derechohabiencia5.text.toString(); // 'artlang'
    final Derecho5 = derecho5
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

    var motivoDerecho5 = _motivoderechohabiencia5.text.toString(); // 'artlang'
    final motivoDereHab5 = motivoDerecho5
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

    selectedItems5.clear();
    selectedItems5.addAll((dataList5.where((p0) => p0.value)));

    var pkPrestaciones5 = selectedItems5.toString(); // 'artlang'
    final prestacionesPK5 = pkPrestaciones5
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones5 = selectedItems5.toString(); // 'artlang'
    final prestacionesInt5 = intPrestaciones5
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones5 = selectedItems5.toString(); // 'artlang'
    final prestaciones5 = Prestaciones5.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela5 = _asisteEscuela5.name.toString();
    if (asisteEscuela5 == 'si') {
      asisteEscuela5 = '1 1 Si';
    } else if (asisteEscuela5 == 'no') {
      asisteEscuela5 = '2 2 No';
    } else if (asisteEscuela5 == 'na') {
      asisteEscuela5 = '3 3 Otro';
    }

    String Jubilado5 = _jubilacionPensionado5.name.toString();
    if (Jubilado5 == 'si') {
      Jubilado5 = '1 1 Si';
    } else if (Jubilado5 == 'no') {
      Jubilado5 = '2 2 No';
    } else if (Jubilado5 == 'na') {
      Jubilado5 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel5 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad5.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad5.text.substring(0, 2),
      Escolaridad: escolaridad5.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar5.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar5.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela5.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela5.substring(0, 1),
      AsisteEscuela: _asisteEscuela5.name,
      ClaveOcupacion: _ocupacion5.text.substring(0, 2),
      OrdenOcupacion: _ocupacion5.text.substring(0, 2),
      Ocupacion: ocupacion5.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo5.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo5.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo5.trimLeft(),

      pk_prestacioneslab: prestacionesPK5.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt5.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones5.trimLeft(),

      ClaveJubilacion: Jubilado5.substring(0, 1),
      OrdenJubilacion: Jubilado5.substring(0, 1),
      Jubilacion: _jubilacionPensionado5.name,
      ClaveDerechohabiencia: _derechohabiencia5.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia5.text.substring(0, 1),
      Derechohabiencia: Derecho5.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia5.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia5.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab5.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad5(DModel5)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  renglon6() async {
    var Escolaridad6 = _escolaridad6.text.toString(); // 'artlang'
    final escolaridad6 = Escolaridad6.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion6 = _ocupacion6.text.toString(); // 'artlang'
    final ocupacion6 = Ocupacion6.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo6 = _tipoEmpleo6.text.toString(); // 'artlang'
    final tipoEmpleo6 = TipoEmpleo6.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho6 = _derechohabiencia6.text.toString(); // 'artlang'
    final Derecho6 = derecho6
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

    var motivoDerecho6 = _motivoderechohabiencia6.text.toString(); // 'artlang'
    final motivoDereHab6 = motivoDerecho6
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

    selectedItems6.clear();
    selectedItems6.addAll((dataList6.where((p0) => p0.value)));

    var pkPrestaciones6 = selectedItems6.toString(); // 'artlang'
    final prestacionesPK6 = pkPrestaciones6
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones6 = selectedItems6.toString(); // 'artlang'
    final prestacionesInt6 = intPrestaciones6
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones6 = selectedItems6.toString(); // 'artlang'
    final prestaciones6 = Prestaciones6.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela6 = _asisteEscuela6.name.toString();
    if (asisteEscuela6 == 'si') {
      asisteEscuela6 = '1 1 Si';
    } else if (asisteEscuela6 == 'no') {
      asisteEscuela6 = '2 2 No';
    } else if (asisteEscuela6 == 'na') {
      asisteEscuela6 = '3 3 Otro';
    }

    String Jubilado6 = _jubilacionPensionado6.name.toString();
    if (Jubilado6 == 'si') {
      Jubilado6 = '1 1 Si';
    } else if (Jubilado6 == 'no') {
      Jubilado6 = '2 2 No';
    } else if (Jubilado6 == 'na') {
      Jubilado6 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel6 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad6.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad6.text.substring(0, 2),
      Escolaridad: escolaridad6.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar6.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar6.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela6.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela6.substring(0, 1),
      AsisteEscuela: _asisteEscuela6.name,
      ClaveOcupacion: _ocupacion6.text.substring(0, 2),
      OrdenOcupacion: _ocupacion6.text.substring(0, 2),
      Ocupacion: ocupacion6.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo6.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo6.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo6.trimLeft(),

      pk_prestacioneslab: prestacionesPK6.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt6.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones6.trimLeft(),

      ClaveJubilacion: Jubilado6.substring(0, 1),
      OrdenJubilacion: Jubilado6.substring(0, 1),
      Jubilacion: _jubilacionPensionado6.name,
      ClaveDerechohabiencia: _derechohabiencia6.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia6.text.substring(0, 1),
      Derechohabiencia: Derecho6.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia6.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia6.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab6.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel6)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new ActualizarEstudio(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon6() async {
    var Escolaridad6 = _escolaridad6.text.toString(); // 'artlang'
    final escolaridad6 = Escolaridad6.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion6 = _ocupacion6.text.toString(); // 'artlang'
    final ocupacion6 = Ocupacion6.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo6 = _tipoEmpleo6.text.toString(); // 'artlang'
    final tipoEmpleo6 = TipoEmpleo6.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho6 = _derechohabiencia6.text.toString(); // 'artlang'
    final Derecho6 = derecho6
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

    var motivoDerecho6 = _motivoderechohabiencia6.text.toString(); // 'artlang'
    final motivoDereHab6 = motivoDerecho6
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

    selectedItems6.clear();
    selectedItems6.addAll((dataList6.where((p0) => p0.value)));

    var pkPrestaciones6 = selectedItems6.toString(); // 'artlang'
    final prestacionesPK6 = pkPrestaciones6
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones6 = selectedItems6.toString(); // 'artlang'
    final prestacionesInt6 = intPrestaciones6
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones6 = selectedItems6.toString(); // 'artlang'
    final prestaciones6 = Prestaciones6.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela6 = _asisteEscuela6.name.toString();
    if (asisteEscuela6 == 'si') {
      asisteEscuela6 = '1 1 Si';
    } else if (asisteEscuela6 == 'no') {
      asisteEscuela6 = '2 2 No';
    } else if (asisteEscuela6 == 'na') {
      asisteEscuela6 = '3 3 Otro';
    }

    String Jubilado6 = _jubilacionPensionado6.name.toString();
    if (Jubilado6 == 'si') {
      Jubilado6 = '1 1 Si';
    } else if (Jubilado6 == 'no') {
      Jubilado6 = '2 2 No';
    } else if (Jubilado6 == 'na') {
      Jubilado6 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel6 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad6.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad6.text.substring(0, 2),
      Escolaridad: escolaridad6.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar6.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar6.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela6.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela6.substring(0, 1),
      AsisteEscuela: _asisteEscuela6.name,
      ClaveOcupacion: _ocupacion6.text.substring(0, 2),
      OrdenOcupacion: _ocupacion6.text.substring(0, 2),
      Ocupacion: ocupacion6.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo6.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo6.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo6.trimLeft(),

      pk_prestacioneslab: prestacionesPK6.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt6.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones6.trimLeft(),

      ClaveJubilacion: Jubilado6.substring(0, 1),
      OrdenJubilacion: Jubilado6.substring(0, 1),
      Jubilacion: _jubilacionPensionado6.name,
      ClaveDerechohabiencia: _derechohabiencia6.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia6.text.substring(0, 1),
      Derechohabiencia: Derecho6.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia6.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia6.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab6.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad6(DModel6)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaActualizar(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  renglon7() async {
    var Escolaridad7 = _escolaridad7.text.toString(); // 'artlang'
    final escolaridad7 = Escolaridad7.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion7 = _ocupacion7.text.toString(); // 'artlang'
    final ocupacion7 = Ocupacion7.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo7 = _tipoEmpleo7.text.toString(); // 'artlang'
    final tipoEmpleo7 = TipoEmpleo7.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho7 = _derechohabiencia7.text.toString(); // 'artlang'
    final Derecho7 = derecho7
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

    var motivoDerecho7 = _motivoderechohabiencia7.text.toString(); // 'artlang'
    final motivoDereHab7 = motivoDerecho7
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

    selectedItems7.clear();
    selectedItems7.addAll((dataList7.where((p0) => p0.value)));

    var pkPrestaciones7 = selectedItems7.toString(); // 'artlang'
    final prestacionesPK7 = pkPrestaciones7
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones7 = selectedItems7.toString(); // 'artlang'
    final prestacionesInt7 = intPrestaciones7
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones7 = selectedItems7.toString(); // 'artlang'
    final prestaciones7 = Prestaciones7.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela7 = _asisteEscuela7.name.toString();
    if (asisteEscuela7 == 'si') {
      asisteEscuela7 = '1 1 Si';
    } else if (asisteEscuela7 == 'no') {
      asisteEscuela7 = '2 2 No';
    } else if (asisteEscuela7 == 'na') {
      asisteEscuela7 = '3 3 Otro';
    }

    String Jubilado7 = _jubilacionPensionado7.name.toString();
    if (Jubilado7 == 'si') {
      Jubilado7 = '1 1 Si';
    } else if (Jubilado7 == 'no') {
      Jubilado7 = '2 2 No';
    } else if (Jubilado7 == 'na') {
      Jubilado7 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel7 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad7.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad7.text.substring(0, 2),
      Escolaridad: escolaridad7.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar7.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar7.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela7.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela7.substring(0, 1),
      AsisteEscuela: _asisteEscuela7.name,
      ClaveOcupacion: _ocupacion7.text.substring(0, 2),
      OrdenOcupacion: _ocupacion7.text.substring(0, 2),
      Ocupacion: ocupacion7.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo7.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo7.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo7.trimLeft(),

      pk_prestacioneslab: prestacionesPK7.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt7.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones7.trimLeft(),

      ClaveJubilacion: Jubilado7.substring(0, 1),
      OrdenJubilacion: Jubilado7.substring(0, 1),
      Jubilacion: _jubilacionPensionado7.name,
      ClaveDerechohabiencia: _derechohabiencia7.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia7.text.substring(0, 1),
      Derechohabiencia: Derecho7.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia7.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia7.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab7.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel7)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon7() async {
    var Escolaridad7 = _escolaridad7.text.toString(); // 'artlang'
    final escolaridad7 = Escolaridad7.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion7 = _ocupacion7.text.toString(); // 'artlang'
    final ocupacion7 = Ocupacion7.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo7 = _tipoEmpleo7.text.toString(); // 'artlang'
    final tipoEmpleo7 = TipoEmpleo7.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho7 = _derechohabiencia7.text.toString(); // 'artlang'
    final Derecho7 = derecho7
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

    var motivoDerecho7 = _motivoderechohabiencia7.text.toString(); // 'artlang'
    final motivoDereHab7 = motivoDerecho7
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

    selectedItems7.clear();
    selectedItems7.addAll((dataList7.where((p0) => p0.value)));

    var pkPrestaciones7 = selectedItems7.toString(); // 'artlang'
    final prestacionesPK7 = pkPrestaciones7
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones7 = selectedItems7.toString(); // 'artlang'
    final prestacionesInt7 = intPrestaciones7
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones7 = selectedItems7.toString(); // 'artlang'
    final prestaciones7 = Prestaciones7.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela7 = _asisteEscuela7.name.toString();
    if (asisteEscuela7 == 'si') {
      asisteEscuela7 = '1 1 Si';
    } else if (asisteEscuela7 == 'no') {
      asisteEscuela7 = '2 2 No';
    } else if (asisteEscuela7 == 'na') {
      asisteEscuela7 = '3 3 Otro';
    }

    String Jubilado7 = _jubilacionPensionado7.name.toString();
    if (Jubilado7 == 'si') {
      Jubilado7 = '1 1 Si';
    } else if (Jubilado7 == 'no') {
      Jubilado7 = '2 2 No';
    } else if (Jubilado7 == 'na') {
      Jubilado7 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel7 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad7.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad7.text.substring(0, 2),
      Escolaridad: escolaridad7.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar7.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar7.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela7.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela7.substring(0, 1),
      AsisteEscuela: _asisteEscuela7.name,
      ClaveOcupacion: _ocupacion7.text.substring(0, 2),
      OrdenOcupacion: _ocupacion7.text.substring(0, 2),
      Ocupacion: ocupacion7.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo7.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo7.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo7.trimLeft(),

      pk_prestacioneslab: prestacionesPK7.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt7.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones7.trimLeft(),

      ClaveJubilacion: Jubilado7.substring(0, 1),
      OrdenJubilacion: Jubilado7.substring(0, 1),
      Jubilacion: _jubilacionPensionado7.name,
      ClaveDerechohabiencia: _derechohabiencia7.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia7.text.substring(0, 1),
      Derechohabiencia: Derecho7.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia7.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia7.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab7.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad7(DModel7)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  renglon8() async {
    var Escolaridad8 = _escolaridad8.text.toString(); // 'artlang'
    final escolaridad8 = Escolaridad8.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion8 = _ocupacion8.text.toString(); // 'artlang'
    final ocupacion8 = Ocupacion8.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo8 = _tipoEmpleo8.text.toString(); // 'artlang'
    final tipoEmpleo8 = TipoEmpleo8.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho8 = _derechohabiencia8.text.toString(); // 'artlang'
    final Derecho8 = derecho8
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

    var motivoDerecho8 = _motivoderechohabiencia8.text.toString(); // 'artlang'
    final motivoDereHab8 = motivoDerecho8
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

    selectedItems8.clear();
    selectedItems8.addAll((dataList8.where((p0) => p0.value)));

    var pkPrestaciones8 = selectedItems8.toString(); // 'artlang'
    final prestacionesPK8 = pkPrestaciones8
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones8 = selectedItems8.toString(); // 'artlang'
    final prestacionesInt8 = intPrestaciones8
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones8 = selectedItems8.toString(); // 'artlang'
    final prestaciones8 = Prestaciones8.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela8 = _asisteEscuela8.name.toString();
    if (asisteEscuela8 == 'si') {
      asisteEscuela8 = '1 1 Si';
    } else if (asisteEscuela8 == 'no') {
      asisteEscuela8 = '2 2 No';
    } else if (asisteEscuela8 == 'na') {
      asisteEscuela8 = '3 3 Otro';
    }

    String Jubilado8 = _jubilacionPensionado8.name.toString();
    if (Jubilado8 == 'si') {
      Jubilado8 = '1 1 Si';
    } else if (Jubilado8 == 'no') {
      Jubilado8 = '2 2 No';
    } else if (Jubilado8 == 'na') {
      Jubilado8 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel8 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad8.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad8.text.substring(0, 2),
      Escolaridad: escolaridad8.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar8.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar8.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela8.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela8.substring(0, 1),
      AsisteEscuela: _asisteEscuela8.name,
      ClaveOcupacion: _ocupacion8.text.substring(0, 2),
      OrdenOcupacion: _ocupacion8.text.substring(0, 2),
      Ocupacion: ocupacion8.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo8.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo8.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo8.trimLeft(),

      pk_prestacioneslab: prestacionesPK8.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt8.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones8.trimLeft(),

      ClaveJubilacion: Jubilado8.substring(0, 1),
      OrdenJubilacion: Jubilado8.substring(0, 1),
      Jubilacion: _jubilacionPensionado8.name,
      ClaveDerechohabiencia: _derechohabiencia8.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia8.text.substring(0, 1),
      Derechohabiencia: Derecho8.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia8.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia8.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab8.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel8)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon8() async {
    var Escolaridad8 = _escolaridad8.text.toString(); // 'artlang'
    final escolaridad8 = Escolaridad8.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion8 = _ocupacion8.text.toString(); // 'artlang'
    final ocupacion8 = Ocupacion8.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo8 = _tipoEmpleo8.text.toString(); // 'artlang'
    final tipoEmpleo8 = TipoEmpleo8.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho8 = _derechohabiencia8.text.toString(); // 'artlang'
    final Derecho8 = derecho8
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

    var motivoDerecho8 = _motivoderechohabiencia8.text.toString(); // 'artlang'
    final motivoDereHab8 = motivoDerecho8
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

    selectedItems8.clear();
    selectedItems8.addAll((dataList8.where((p0) => p0.value)));

    var pkPrestaciones8 = selectedItems8.toString(); // 'artlang'
    final prestacionesPK8 = pkPrestaciones8
        .replaceAll("[", "")
        .replaceAll("]", "")
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

    var intPrestaciones8 = selectedItems8.toString(); // 'artlang'
    final prestacionesInt8 = intPrestaciones8
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("z", "")
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

    var Prestaciones8 = selectedItems8.toString(); // 'artlang'
    final prestaciones8 = Prestaciones8.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela8 = _asisteEscuela8.name.toString();
    if (asisteEscuela8 == 'si') {
      asisteEscuela8 = '1 1 Si';
    } else if (asisteEscuela8 == 'no') {
      asisteEscuela8 = '2 2 No';
    } else if (asisteEscuela8 == 'na') {
      asisteEscuela8 = '3 3 Otro';
    }

    String Jubilado8 = _jubilacionPensionado8.name.toString();
    if (Jubilado8 == 'si') {
      Jubilado8 = '1 1 Si';
    } else if (Jubilado8 == 'no') {
      Jubilado8 = '2 2 No';
    } else if (Jubilado8 == 'na') {
      Jubilado8 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel8 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad8.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad8.text.substring(0, 2),
      Escolaridad: escolaridad8.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar8.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar8.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela8.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela8.substring(0, 1),
      AsisteEscuela: _asisteEscuela8.name,
      ClaveOcupacion: _ocupacion8.text.substring(0, 2),
      OrdenOcupacion: _ocupacion8.text.substring(0, 2),
      Ocupacion: ocupacion8.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo8.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo8.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo8.trimLeft(),

      pk_prestacioneslab: prestacionesPK8.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt8.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones8.trimLeft(),

      ClaveJubilacion: Jubilado8.substring(0, 1),
      OrdenJubilacion: Jubilado8.substring(0, 1),
      Jubilacion: _jubilacionPensionado8.name,
      ClaveDerechohabiencia: _derechohabiencia8.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia8.text.substring(0, 1),
      Derechohabiencia: Derecho8.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia8.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia8.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab8.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad8(DModel8)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  renglon9() async {
    var Escolaridad9 = _escolaridad9.text.toString(); // 'artlang'
    final escolaridad9 = Escolaridad9.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion9 = _ocupacion9.text.toString(); // 'artlang'
    final ocupacion9 = Ocupacion9.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo9 = _tipoEmpleo9.text.toString(); // 'artlang'
    final tipoEmpleo9 = TipoEmpleo9.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho9 = _derechohabiencia9.text.toString(); // 'artlang'
    final Derecho9 = derecho9
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var motivoDerecho9 = _motivoderechohabiencia9.text.toString(); // 'artlang'
    final motivoDereHab9 = motivoDerecho9
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    selectedItems9.clear();
    selectedItems9.addAll((dataList9.where((p0) => p0.value)));

    var pkPrestaciones9 = selectedItems9.toString(); // 'artlang'
    final prestacionesPK9 = pkPrestaciones9
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
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

    var intPrestaciones9 = selectedItems9.toString(); // 'artlang'
    final prestacionesInt9 = intPrestaciones9
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
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
        .replaceAll("z", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Prestaciones9 = selectedItems9.toString(); // 'artlang'
    final prestaciones9 = Prestaciones9.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela9 = _asisteEscuela9.name.toString();
    if (asisteEscuela9 == 'si') {
      asisteEscuela9 = '1 1 Si';
    } else if (asisteEscuela9 == 'no') {
      asisteEscuela9 = '2 2 No';
    } else if (asisteEscuela9 == 'na') {
      asisteEscuela9 = '3 3 Otro';
    }

    String Jubilado9 = _jubilacionPensionado9.name.toString();
    if (Jubilado9 == 'si') {
      Jubilado9 = '1 1 Si';
    } else if (Jubilado9 == 'no') {
      Jubilado9 = '2 2 No';
    } else if (Jubilado9 == 'na') {
      Jubilado9 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel9 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad9.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad9.text.substring(0, 2),
      Escolaridad: escolaridad9.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar9.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar9.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela9.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela9.substring(0, 1),
      AsisteEscuela: _asisteEscuela9.name,
      ClaveOcupacion: _ocupacion9.text.substring(0, 2),
      OrdenOcupacion: _ocupacion9.text.substring(0, 2),
      Ocupacion: ocupacion9.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo9.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo9.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo9.trimLeft(),

      pk_prestacioneslab: prestacionesPK9.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt9.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones9.trimLeft(),

      ClaveJubilacion: Jubilado9.substring(0, 1),
      OrdenJubilacion: Jubilado9.substring(0, 1),
      Jubilacion: _jubilacionPensionado9.name,
      ClaveDerechohabiencia: _derechohabiencia9.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia9.text.substring(0, 1),
      Derechohabiencia: Derecho9.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia9.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia9.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab9.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel9)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaActualizar(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon9() async {
    var Escolaridad9 = _escolaridad9.text.toString(); // 'artlang'
    final escolaridad9 = Escolaridad9.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion9 = _ocupacion9.text.toString(); // 'artlang'
    final ocupacion9 = Ocupacion9.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo9 = _tipoEmpleo9.text.toString(); // 'artlang'
    final tipoEmpleo9 = TipoEmpleo9.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho9 = _derechohabiencia9.text.toString(); // 'artlang'
    final Derecho9 = derecho9
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var motivoDerecho9 = _motivoderechohabiencia9.text.toString(); // 'artlang'
    final motivoDereHab9 = motivoDerecho9
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    selectedItems9.clear();
    selectedItems9.addAll((dataList9.where((p0) => p0.value)));

    var pkPrestaciones9 = selectedItems9.toString(); // 'artlang'
    final prestacionesPK9 = pkPrestaciones9
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
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

    var intPrestaciones9 = selectedItems9.toString(); // 'artlang'
    final prestacionesInt9 = intPrestaciones9
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
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
        .replaceAll("z", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Prestaciones9 = selectedItems9.toString(); // 'artlang'
    final prestaciones9 = Prestaciones9.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela9 = _asisteEscuela9.name.toString();
    if (asisteEscuela9 == 'si') {
      asisteEscuela9 = '1 1 Si';
    } else if (asisteEscuela9 == 'no') {
      asisteEscuela9 = '2 2 No';
    } else if (asisteEscuela9 == 'na') {
      asisteEscuela9 = '3 3 Otro';
    }

    String Jubilado9 = _jubilacionPensionado9.name.toString();
    if (Jubilado9 == 'si') {
      Jubilado9 = '1 1 Si';
    } else if (Jubilado9 == 'no') {
      Jubilado9 = '2 2 No';
    } else if (Jubilado9 == 'na') {
      Jubilado9 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel9 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad9.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad9.text.substring(0, 2),
      Escolaridad: escolaridad9.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar9.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar9.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela9.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela9.substring(0, 1),
      AsisteEscuela: _asisteEscuela9.name,
      ClaveOcupacion: _ocupacion9.text.substring(0, 2),
      OrdenOcupacion: _ocupacion9.text.substring(0, 2),
      Ocupacion: ocupacion9.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo9.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo9.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo9.trimLeft(),

      pk_prestacioneslab: prestacionesPK9.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt9.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones9.trimLeft(),

      ClaveJubilacion: Jubilado9.substring(0, 1),
      OrdenJubilacion: Jubilado9.substring(0, 1),
      Jubilacion: _jubilacionPensionado9.name,
      ClaveDerechohabiencia: _derechohabiencia9.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia9.text.substring(0, 1),
      Derechohabiencia: Derecho9.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia9.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia9.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab9.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad9(DModel9)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaActualizar(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  renglon10() async {
    var Escolaridad10 = _escolaridad10.text.toString(); // 'artlang'
    final escolaridad10 = Escolaridad10.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion10 = _ocupacion10.text.toString(); // 'artlang'
    final ocupacion10 = Ocupacion10.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo10 = _tipoEmpleo10.text.toString(); // 'artlang'
    final tipoEmpleo10 = TipoEmpleo10.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho10 = _derechohabiencia10.text.toString(); // 'artlang'
    final Derecho10 = derecho10
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var motivoDerecho10 =
        _motivoderechohabiencia10.text.toString(); // 'artlang'
    final motivoDereHab10 = motivoDerecho10
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    selectedItems10.clear();
    selectedItems10.addAll((dataList10.where((p0) => p0.value)));

    var pkPrestaciones10 = selectedItems10.toString(); // 'artlang'
    final prestacionesPK10 = pkPrestaciones10
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
        .replaceAll("m", "")
        .replaceAll("n", "")
        .replaceAll("ñ", "")
        .replaceAll("9", "")
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

    var intPrestaciones10 = selectedItems10.toString(); // 'artlang'
    final prestacionesInt10 = intPrestaciones10
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
        .replaceAll("m", "")
        .replaceAll("n", "")
        .replaceAll("ñ", "")
        .replaceAll("9", "")
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
        .replaceAll("z", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Prestaciones10 = selectedItems10.toString(); // 'artlang'
    final prestaciones10 = Prestaciones10.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela10 = _asisteEscuela10.name.toString();
    if (asisteEscuela10 == 'si') {
      asisteEscuela10 = '1 1 Si';
    } else if (asisteEscuela10 == 'no') {
      asisteEscuela10 = '2 2 No';
    } else if (asisteEscuela10 == 'na') {
      asisteEscuela10 = '3 3 Otro';
    }

    String Jubilado10 = _jubilacionPensionado10.name.toString();
    if (Jubilado10 == 'si') {
      Jubilado10 = '1 1 Si';
    } else if (Jubilado10 == 'no') {
      Jubilado10 = '2 2 No';
    } else if (Jubilado10 == 'na') {
      Jubilado10 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel10 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad10.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad10.text.substring(0, 2),
      Escolaridad: escolaridad10.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar10.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar10.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela10.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela10.substring(0, 1),
      AsisteEscuela: _asisteEscuela10.name,
      ClaveOcupacion: _ocupacion10.text.substring(0, 2),
      OrdenOcupacion: _ocupacion10.text.substring(0, 2),
      Ocupacion: ocupacion10.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo10.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo10.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo10.trimLeft(),

      pk_prestacioneslab: prestacionesPK10.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt10.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones10.trimLeft(),

      ClaveJubilacion: Jubilado10.substring(0, 1),
      OrdenJubilacion: Jubilado10.substring(0, 1),
      Jubilacion: _jubilacionPensionado10.name,
      ClaveDerechohabiencia: _derechohabiencia10.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia10.text.substring(0, 1),
      Derechohabiencia: Derecho10.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia10.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia10.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab10.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel10)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaActualizar(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  upDateRenglon10() async {
    var Escolaridad10 = _escolaridad10.text.toString(); // 'artlang'
    final escolaridad10 = Escolaridad10.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Ocupacion10 = _ocupacion10.text.toString(); // 'artlang'
    final ocupacion10 = Ocupacion10.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoEmpleo10 = _tipoEmpleo10.text.toString(); // 'artlang'
    final tipoEmpleo10 = TipoEmpleo10.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var derecho10 = _derechohabiencia10.text.toString(); // 'artlang'
    final Derecho10 = derecho10
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var motivoDerecho10 =
        _motivoderechohabiencia10.text.toString(); // 'artlang'
    final motivoDereHab10 = motivoDerecho10
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    selectedItems10.clear();
    selectedItems10.addAll((dataList10.where((p0) => p0.value)));

    var pkPrestaciones10 = selectedItems10.toString(); // 'artlang'
    final prestacionesPK10 = pkPrestaciones10
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
        .replaceAll("m", "")
        .replaceAll("n", "")
        .replaceAll("ñ", "")
        .replaceAll("9", "")
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

    var intPrestaciones10 = selectedItems10.toString(); // 'artlang'
    final prestacionesInt10 = intPrestaciones10
        .replaceAll("[", "")
        .replaceAll("]", "")
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
        .replaceAll("7", "")
        .replaceAll("m", "")
        .replaceAll("n", "")
        .replaceAll("ñ", "")
        .replaceAll("9", "")
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
        .replaceAll("z", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var Prestaciones10 = selectedItems10.toString(); // 'artlang'
    final prestaciones10 = Prestaciones10.replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("L", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "")
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
        .replaceAll("Z", "");

    String asisteEscuela10 = _asisteEscuela10.name.toString();
    if (asisteEscuela10 == 'si') {
      asisteEscuela10 = '1 1 Si';
    } else if (asisteEscuela10 == 'no') {
      asisteEscuela10 = '2 2 No';
    } else if (asisteEscuela10 == 'na') {
      asisteEscuela10 = '3 3 Otro';
    }

    String Jubilado10 = _jubilacionPensionado10.name.toString();
    if (Jubilado10 == 'si') {
      Jubilado10 = '1 1 Si';
    } else if (Jubilado10 == 'no') {
      Jubilado10 = '2 2 No';
    } else if (Jubilado10 == 'na') {
      Jubilado10 = '3 3 Otro';
    }

    EscolaridadSeguridadSocial DModel10 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad10.text.substring(0, 2),
      OrdenEscolaridad: _escolaridad10.text.substring(0, 2),
      Escolaridad: escolaridad10.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar10.text.substring(0, 2),
      //arreglar
      GradoEscolar:
          (int.parse(_gradoEscolar10.text.substring(0, 2)) - 1).toString(),

      ClaveAsisteEscuela: asisteEscuela10.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela10.substring(0, 1),
      AsisteEscuela: _asisteEscuela10.name,
      ClaveOcupacion: _ocupacion10.text.substring(0, 2),
      OrdenOcupacion: _ocupacion10.text.substring(0, 2),
      Ocupacion: ocupacion10.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo10.text.substring(0, 1),
      OrdenTipoEmpleo: _tipoEmpleo10.text.substring(0, 1),
      TipoEmpleo: tipoEmpleo10.trimLeft(),

      pk_prestacioneslab: prestacionesPK10.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt10.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones10.trimLeft(),

      ClaveJubilacion: Jubilado10.substring(0, 1),
      OrdenJubilacion: Jubilado10.substring(0, 1),
      Jubilacion: _jubilacionPensionado10.name,
      ClaveDerechohabiencia: _derechohabiencia10.text.substring(0, 1),
      OrdenDerechohabiencia: _derechohabiencia10.text.substring(0, 1),
      Derechohabiencia: Derecho10.trimLeft(),
      ClaveMotivoDerechohabiencia:
          _motivoderechohabiencia10.text.substring(0, 2),
      OrdenMotivoDerechohabiencia:
          _motivoderechohabiencia10.text.substring(0, 2),
      MotivoDerechohabiencia: motivoDereHab10.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad10(DModel10)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaActualizar(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
    //////////////////////////////////////////////////////////////////
  }

  actualizar() async {
    if (!_nombre1.text.toString().isEmpty) {
      if (!_nombre2.text.toString().isEmpty) {
        if (!_nombre3.text.toString().isEmpty) {
          if (!_nombre4.text.toString().isEmpty) {
            if (!_nombre5.text.toString().isEmpty) {
              if (!_nombre6.text.toString().isEmpty) {
                if (!_nombre7.text.toString().isEmpty) {
                  if (!_nombre8.text.toString().isEmpty) {
                    if (!_nombre9.text.toString().isEmpty) {
                      if (!_nombre10.text.toString().isEmpty) {
                        upDateRenglon1();
                        upDateRenglon2();
                        upDateRenglon3();
                        upDateRenglon4();
                        upDateRenglon5();
                        upDateRenglon6();
                        upDateRenglon7();
                        upDateRenglon8();
                        upDateRenglon9();
                        upDateRenglon10();
                      } else {
                        upDateRenglon1();
                        upDateRenglon2();
                        upDateRenglon3();
                        upDateRenglon4();
                        upDateRenglon5();
                        upDateRenglon6();
                        upDateRenglon7();
                        upDateRenglon8();
                        upDateRenglon9();
                        Navigator.of(context).push(MaterialPageRoute<Null>(
                            builder: (BuildContext context) {
                          return new Salud_PertenenciaIndigenaActualizar(
                              widget.folio);
                        }));
                      }
                    } else {
                      upDateRenglon1();
                      upDateRenglon2();
                      upDateRenglon3();
                      upDateRenglon4();
                      upDateRenglon5();
                      upDateRenglon6();
                      upDateRenglon7();
                      upDateRenglon8();

                      Navigator.of(context).push(MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                        return new Salud_PertenenciaIndigenaActualizar(
                            widget.folio);
                      }));
                    }
                  } else {
                    upDateRenglon1();
                    upDateRenglon2();
                    upDateRenglon3();
                    upDateRenglon4();
                    upDateRenglon5();
                    upDateRenglon6();
                    upDateRenglon7();
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Salud_PertenenciaIndigenaActualizar(
                          widget.folio);
                    }));
                  }
                } else {
                  upDateRenglon1();
                  upDateRenglon2();
                  upDateRenglon3();
                  upDateRenglon4();
                  upDateRenglon5();
                  upDateRenglon6();
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return new Salud_PertenenciaIndigenaActualizar(
                        widget.folio);
                  }));
                }
              } else {
                upDateRenglon1();
                upDateRenglon2();
                upDateRenglon3();
                upDateRenglon4();
                upDateRenglon5();
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new Salud_PertenenciaIndigenaActualizar(widget.folio);
                }));
              }
            } else {
              upDateRenglon1();
              upDateRenglon2();
              upDateRenglon3();
              upDateRenglon4();
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new Salud_PertenenciaIndigenaActualizar(widget.folio);
              }));
            }
          } else {
            upDateRenglon1();
            upDateRenglon2();
            upDateRenglon3();
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Salud_PertenenciaIndigenaActualizar(widget.folio);
            }));
          }
        } else {
          upDateRenglon1();
          upDateRenglon2();
          Navigator.of(context)
              .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
            return new Salud_PertenenciaIndigenaActualizar(widget.folio);
          }));
        }
      } else {
        upDateRenglon1();
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new Salud_PertenenciaIndigenaActualizar(widget.folio);
        }));
      }
    }
  }

  getAllCategoriesGradoEscolar() async {
    _GradoEscolar = List<GradosEscolaresModel>();
    var categories = await CategoryService().readCategoriesGradosEscolares();
    categories.forEach((category) {
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
    categories.forEach((category) {
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
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoEmpleoModel();
        categoryModel.TipoEmpleo = category['TipoEmpleo'];
        _TipoEmpleo.add(categoryModel);
      });
    });
  }

  getAllCategoriesDerechohabiencia() async {
    _Derechohabiencia = List<DerechoHabienciasModel>();
    var categories = await CategoryService().readCategoriesDerechohabiencias();
    categories.forEach((category) {
      setState(() {
        var categoryModel = DerechoHabienciasModel();
        categoryModel.derechoHabiencia = category['Derechohabiencia'];
        _Derechohabiencia.add(categoryModel);
      });
    });
  }

  getAllCategoriesMotivoDerechohabiencias() async {
    _MotivioDerechohabiencia = List<MotivoDerechoHabienciasModel>();
    var categories =
        await CategoryService().readCategoriesMotivoDerechohabiencias();
    categories.forEach((category) {
      setState(() {
        var categoryModel = MotivoDerechoHabienciasModel();
        categoryModel.motivoDerechoHabiencia =
            category['MotivoDerechohabiencia'];
        _MotivioDerechohabiencia.add(categoryModel);
      });
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
              children: [
                SizedBox(height: 10.0),
                getTextFolio(
                  controller: TextEditingController.fromValue(
                      TextEditingValue(text: widget.folio)),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                    onPressed: cargarDatos,
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
                              DataColumn(label: Text('Escolaridad')),
                              DataColumn(label: Text('Grado')),
                              DataColumn(label: Text('Asisiste Escuela')),
                              DataColumn(label: Text('Ocupación')),
                              DataColumn(label: Text('Tipo De Empleo')),
                              DataColumn(label: Text('Prestaciones Laborales')),
                              DataColumn(label: Text('Jubilado o Pensionado')),
                              DataColumn(label: Text('Derechohabiencia')),
                              DataColumn(
                                  label: Text('Motivo Derechohabiencia')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getTextDataTable(
                                    controller: _nombre1, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad1,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar1,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                                _asisteEscuela1 = value;
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
                                DataCell(getSearchField(
                                    controller: _ocupacion1,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo1,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems1())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia1,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia1,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(getTextDataTable(
                                    controller: _nombre2, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad2,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar2,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion2,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo2,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems2())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia2,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia2,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(getTextDataTable(
                                    controller: _nombre3, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad3,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar3,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion3,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo3,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems3())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado3 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia3,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia3,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(getTextDataTable(
                                    controller: _nombre4, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad4,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar4,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion4,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo4,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems4())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado4 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia4,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia4,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(getTextDataTable(
                                    controller: _nombre5, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad5,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar5,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion5,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo5,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo de Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems5())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado5 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia5,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia5,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(getTextDataTable(
                                    controller: _nombre6, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad6,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar6,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion6,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo6,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems6())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado6 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia6,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia6,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(getTextDataTable(
                                    controller: _nombre7, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad7,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar7,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion7,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo7,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo de Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems7())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado7 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia7,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia7,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('8')),
                                DataCell(getTextDataTable(
                                    controller: _nombre8, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad8,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar8,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion8,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo8,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems8())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado8 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia8,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia8,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('9')),
                                DataCell(getTextDataTable(
                                    controller: _nombre9, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad9,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar9,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion9,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo9,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo de Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() =>
                                            Column(children: genarateItems9())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado9 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia9,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia9,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('10')),
                                DataCell(getTextDataTable(
                                    controller: _nombre10,
                                    hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _escolaridad10,
                                    suggestions: _Escolaridad.map(
                                        (escolaridad) => SearchFieldListItem(
                                            escolaridad.escolaridad,
                                            item: escolaridad)).toList(),
                                    hintName: 'Escolaridad')),
                                DataCell(getSearchField(
                                    controller: _gradoEscolar10,
                                    suggestions: _GradoEscolar.map(
                                        (gradoEscolar) => SearchFieldListItem(
                                            gradoEscolar.grado,
                                            item: gradoEscolar)).toList(),
                                    hintName: 'Grado')),
                                DataCell(
                                  Row(
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
                                DataCell(getSearchField(
                                    controller: _ocupacion10,
                                    suggestions: _Ocupacion.map((ocupacion) =>
                                        SearchFieldListItem(ocupacion.ocupacion,
                                            item: ocupacion)).toList(),
                                    hintName: 'Ocupación')),
                                DataCell(getSearchField(
                                    controller: _tipoEmpleo10,
                                    suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                        SearchFieldListItem(
                                            tipoEmpleo.TipoEmpleo,
                                            item: tipoEmpleo)).toList(),
                                    hintName: 'Tipo De Empleo')),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Obx(() => Column(
                                            children: genarateItems10())),
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
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
                                          onChanged:
                                              (JubilacionPensionado value) {
                                            setState(() {
                                              _jubilacionPensionado10 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(getSearchField(
                                    controller: _derechohabiencia10,
                                    suggestions: _Derechohabiencia.map(
                                            (derechohabiencia) =>
                                                SearchFieldListItem(
                                                    derechohabiencia
                                                        .derechoHabiencia,
                                                    item: derechohabiencia))
                                        .toList(),
                                    hintName: 'Derechohabiencia')),
                                DataCell(getSearchField(
                                    controller: _motivoderechohabiencia10,
                                    suggestions: _MotivioDerechohabiencia.map(
                                            (motivoderechohabiencia) =>
                                                SearchFieldListItem(
                                                    motivoderechohabiencia
                                                        .motivoDerechoHabiencia,
                                                    item:
                                                        motivoderechohabiencia))
                                        .toList(),
                                    hintName: 'Motivo Derechohabiencia'))
                              ])
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
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

  List<Widget> genarateItems1() {
    final result = <Widget>[];
    for (int i = 0; i < dataList1.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList1[i].value,
          title: Text(dataList1[i].prestacion),
          onChanged: (v) {
            dataList1[i].value = v ?? false;
            dataList1.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems2() {
    final result = <Widget>[];
    for (int i = 0; i < dataList2.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList2[i].value,
          title: Text(dataList2[i].prestacion),
          onChanged: (v) {
            dataList2[i].value = v ?? false;
            dataList2.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems3() {
    final result = <Widget>[];
    for (int i = 0; i < dataList3.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList3[i].value,
          title: Text(dataList3[i].prestacion),
          onChanged: (v) {
            dataList3[i].value = v ?? false;
            dataList3.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems4() {
    final result = <Widget>[];
    for (int i = 0; i < dataList4.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList4[i].value,
          title: Text(dataList4[i].prestacion),
          onChanged: (v) {
            dataList4[i].value = v ?? false;
            dataList4.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems5() {
    final result = <Widget>[];
    for (int i = 0; i < dataList5.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList5[i].value,
          title: Text(dataList5[i].prestacion),
          onChanged: (v) {
            dataList5[i].value = v ?? false;
            dataList5.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems6() {
    final result = <Widget>[];
    for (int i = 0; i < dataList6.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList6[i].value,
          title: Text(dataList6[i].prestacion),
          onChanged: (v) {
            dataList6[i].value = v ?? false;
            dataList6.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems7() {
    final result = <Widget>[];
    for (int i = 0; i < dataList7.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList7[i].value,
          title: Text(dataList7[i].prestacion),
          onChanged: (v) {
            dataList7[i].value = v ?? false;
            dataList7.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems8() {
    final result = <Widget>[];
    for (int i = 0; i < dataList9.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList9[i].value,
          title: Text(dataList9[i].prestacion),
          onChanged: (v) {
            dataList9[i].value = v ?? false;
            dataList9.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems9() {
    final result = <Widget>[];
    for (int i = 0; i < dataList9.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList9[i].value,
          title: Text(dataList9[i].prestacion),
          onChanged: (v) {
            dataList9[i].value = v ?? false;
            dataList9.refresh();
          }));
    }
    return result;
  }

  List<Widget> genarateItems10() {
    final result = <Widget>[];
    for (int i = 0; i < dataList10.length; i++) {
      result.add(CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: dataList10[i].value,
          title: Text(dataList10[i].prestacion),
          onChanged: (v) {
            dataList10[i].value = v ?? false;
            dataList10.refresh();
          }));
    }
    return result;
  }
}
