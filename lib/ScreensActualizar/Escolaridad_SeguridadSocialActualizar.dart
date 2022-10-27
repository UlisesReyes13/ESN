import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genSearchField.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextExpand.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Comm/genTextTipoEmpleado.dart';
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
import 'package:esn/Screens/EstructuraFamiliarTabla.dart';
import 'package:esn/Screens/Salud_PertenenciaIndigenaTabla.dart';
import 'package:esn/replaceAll/replaceAllLetter.dart';
import 'package:esn/replaceAll/replaceAllNum.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';

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
  List<EscolaridadesModel> _Escolaridad = [];
  List<GradosEscolaresModel> _GradoEscolar = [];
  List<OcupacionesModel> _Ocupacion = [];
  List<TipoEmpleoModel> _TipoEmpleo = [];
  List<DerechoHabienciasModel> _Derechohabiencia = [];
  List<MotivoDerechoHabienciasModel> _MotivioDerechohabiencia = [];
  List<PrestacionesLaboralesModel> _PrestacionesList = [];

  List<EscolaridadesModel> _EscolaridadOrden2 = [];
  List<EscolaridadesModel> _EscolaridadOrden3 = [];
  List<GradosEscolaresModel> _GradoEscolar2 = [];
  List<OcupacionesModel> _Ocupacion2 = [];
  List<TipoEmpleoModel> _TipoEmpleo2 = [];
  List<DerechoHabienciasModel> _Derechohabiencia2 = [];
  List<MotivoDerechoHabienciasModel> _MotivioDerechohabiencia2 = [];

  List<EstructuraFamilarModel> _EstructuraFamiliar1 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar2 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar3 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar4 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar5 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar6 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar7 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar8 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar9 = [];
  List<EstructuraFamilarModel> _EstructuraFamiliar10 = [];

  List<EscolaridadSeguridadSocial> _Escolaridad1 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad2 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad3 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad4 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad5 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad6 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad7 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad8 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad9 = [];
  List<EscolaridadSeguridadSocial> _Escolaridad10 = [];

  final _escolaridad1 = TextEditingController();
  final _gradoEscolar1 = TextEditingController();
  final _ocupacion1 = TextEditingController();
  final _tipoEmpleo1 = TextEditingController();
  final _derechohabiencia1 = TextEditingController();
  final _motivoderechohabiencia1 = TextEditingController();
  AsisteEscuela _asisteEscuela1 = AsisteEscuela.si;
  JubilacionPensionado _jubilacionPensionado1;
  final _nombre1 = TextEditingController();
  final _prestacion1 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem1 = [];

  final _escolaridad2 = TextEditingController();
  final _gradoEscolar2 = TextEditingController();
  final _ocupacion2 = TextEditingController();
  final _tipoEmpleo2 = TextEditingController();
  final _derechohabiencia2 = TextEditingController();
  final _motivoderechohabiencia2 = TextEditingController();
  AsisteEscuela _asisteEscuela2;
  JubilacionPensionado _jubilacionPensionado2;
  final _nombre2 = TextEditingController();
  final _prestacion2 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem2 = [];

  final _escolaridad3 = TextEditingController();
  final _gradoEscolar3 = TextEditingController();
  final _ocupacion3 = TextEditingController();
  final _tipoEmpleo3 = TextEditingController();
  final _derechohabiencia3 = TextEditingController();
  final _motivoderechohabiencia3 = TextEditingController();
  AsisteEscuela _asisteEscuela3;
  JubilacionPensionado _jubilacionPensionado3;
  final _nombre3 = TextEditingController();
  final _prestacion3 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem3 = [];

  final _escolaridad4 = TextEditingController();
  final _gradoEscolar4 = TextEditingController();
  final _ocupacion4 = TextEditingController();
  final _tipoEmpleo4 = TextEditingController();
  final _derechohabiencia4 = TextEditingController();
  final _motivoderechohabiencia4 = TextEditingController();
  AsisteEscuela _asisteEscuela4;
  JubilacionPensionado _jubilacionPensionado4;
  final _nombre4 = TextEditingController();
  final _prestacion4 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem4 = [];

  final _escolaridad5 = TextEditingController();
  final _gradoEscolar5 = TextEditingController();
  final _ocupacion5 = TextEditingController();
  final _tipoEmpleo5 = TextEditingController();
  final _derechohabiencia5 = TextEditingController();
  final _motivoderechohabiencia5 = TextEditingController();
  AsisteEscuela _asisteEscuela5;
  JubilacionPensionado _jubilacionPensionado5;
  final _nombre5 = TextEditingController();
  final _prestacion5 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem5 = [];

  final _escolaridad6 = TextEditingController();
  final _gradoEscolar6 = TextEditingController();
  final _ocupacion6 = TextEditingController();
  final _tipoEmpleo6 = TextEditingController();
  final _derechohabiencia6 = TextEditingController();
  final _motivoderechohabiencia6 = TextEditingController();
  AsisteEscuela _asisteEscuela6;
  JubilacionPensionado _jubilacionPensionado6;
  final _nombre6 = TextEditingController();
  final _prestacion6 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem6 = [];

  final _escolaridad7 = TextEditingController();
  final _gradoEscolar7 = TextEditingController();
  final _ocupacion7 = TextEditingController();
  final _tipoEmpleo7 = TextEditingController();
  final _derechohabiencia7 = TextEditingController();
  final _motivoderechohabiencia7 = TextEditingController();
  AsisteEscuela _asisteEscuela7;
  JubilacionPensionado _jubilacionPensionado7;
  final _nombre7 = TextEditingController();
  final _prestacion7 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem7 = [];

  final _escolaridad8 = TextEditingController();
  final _gradoEscolar8 = TextEditingController();
  final _ocupacion8 = TextEditingController();
  final _tipoEmpleo8 = TextEditingController();
  final _derechohabiencia8 = TextEditingController();
  final _motivoderechohabiencia8 = TextEditingController();
  AsisteEscuela _asisteEscuela8;
  JubilacionPensionado _jubilacionPensionado8;
  final _nombre8 = TextEditingController();
  final _prestacion8 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem8 = [];

  final _escolaridad9 = TextEditingController();
  final _gradoEscolar9 = TextEditingController();
  final _ocupacion9 = TextEditingController();
  final _tipoEmpleo9 = TextEditingController();
  final _derechohabiencia9 = TextEditingController();
  final _motivoderechohabiencia9 = TextEditingController();
  AsisteEscuela _asisteEscuela9;
  JubilacionPensionado _jubilacionPensionado9;
  final _nombre9 = TextEditingController();
  final _prestacion9 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem9 = [];

  final _escolaridad10 = TextEditingController();
  final _gradoEscolar10 = TextEditingController();
  final _ocupacion10 = TextEditingController();
  final _tipoEmpleo10 = TextEditingController();
  final _derechohabiencia10 = TextEditingController();
  final _motivoderechohabiencia10 = TextEditingController();
  AsisteEscuela _asisteEscuela10;
  JubilacionPensionado _jubilacionPensionado10;
  final _nombre10 = TextEditingController();
  final _prestacion10 = TextEditingController();
  List<PrestacionesLaboralesModel> _selectedItem10 = [];

  var dbHelper;

  @override
  void initState() {
    getAllCategoriesDerechohabiencia();
    getAllCategoriesEscolaridades();
    getAllCategoriesGradoEscolar();
    getAllCategoriesMotivoDerechohabiencias();
    getAllCategortegoriesTipoEmpleo();
    getAllCategoriesOcupacion();
    getAllPrestacionesLaborales();
    getAllEstructura1();
    getAllEstructura2();
    getAllEstructura3();
    getAllEstructura4();
    getAllEstructura5();
    getAllEstructura6();
    getAllEstructura7();
    getAllEstructura8();
    getAllEstructura9();
    getAllEstructura10();

    super.initState();
    dbHelper = DbHelper();
  }

  getAllEscolaridad1() async {
    _Escolaridad1 = [];
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
        _Escolaridad1.map((e) => e.Escolaridad).first;

    _gradoEscolar1.text = _Escolaridad1.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion1.text = _Escolaridad1.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad1.map((e) => e.Ocupacion).first;

    _tipoEmpleo1.text = _Escolaridad1.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad1.map((e) => e.TipoEmpleo).first;

    _derechohabiencia1.text =
        _Escolaridad1.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad1.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia1.text =
        _Escolaridad1.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad2 = [];
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
        _Escolaridad2.map((e) => e.Escolaridad).first;

    _gradoEscolar2.text = _Escolaridad2.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion2.text = _Escolaridad2.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad2.map((e) => e.Ocupacion).first;

    _tipoEmpleo2.text = _Escolaridad2.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad2.map((e) => e.TipoEmpleo).first;

    _derechohabiencia2.text =
        _Escolaridad2.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad2.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia2.text =
        _Escolaridad2.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad3 = [];
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
        _Escolaridad3.map((e) => e.Escolaridad).first;

    _gradoEscolar3.text = _Escolaridad3.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion3.text = _Escolaridad3.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad3.map((e) => e.Ocupacion).first;

    _tipoEmpleo3.text = _Escolaridad3.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad3.map((e) => e.TipoEmpleo).first;

    _derechohabiencia3.text =
        _Escolaridad3.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad3.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia3.text =
        _Escolaridad3.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad4 = [];
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
        _Escolaridad4.map((e) => e.Escolaridad).first;

    _gradoEscolar4.text = _Escolaridad4.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion4.text = _Escolaridad4.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad4.map((e) => e.Ocupacion).first;

    _tipoEmpleo4.text = _Escolaridad4.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad4.map((e) => e.TipoEmpleo).first;

    _derechohabiencia4.text =
        _Escolaridad4.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad4.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia4.text =
        _Escolaridad4.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad5 = [];
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
        _Escolaridad5.map((e) => e.Escolaridad).first;

    _gradoEscolar5.text = _Escolaridad5.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion5.text = _Escolaridad5.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad5.map((e) => e.Ocupacion).first;

    _tipoEmpleo5.text = _Escolaridad5.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad5.map((e) => e.TipoEmpleo).first;

    _derechohabiencia5.text =
        _Escolaridad5.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad5.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia5.text =
        _Escolaridad5.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad6 = [];
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
        _Escolaridad6.map((e) => e.Escolaridad).first;

    _gradoEscolar6.text = _Escolaridad6.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion6.text = _Escolaridad6.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad6.map((e) => e.Ocupacion).first;

    _tipoEmpleo6.text = _Escolaridad6.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad6.map((e) => e.TipoEmpleo).first;

    _derechohabiencia6.text =
        _Escolaridad6.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad6.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia6.text =
        _Escolaridad6.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad7 = [];
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
        _Escolaridad7.map((e) => e.Escolaridad).first;

    _gradoEscolar7.text = _Escolaridad7.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion7.text = _Escolaridad7.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad7.map((e) => e.Ocupacion).first;

    _tipoEmpleo7.text = _Escolaridad7.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad7.map((e) => e.TipoEmpleo).first;

    _derechohabiencia7.text =
        _Escolaridad7.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad7.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia7.text =
        _Escolaridad7.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad8 = [];
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
        _Escolaridad8.map((e) => e.Escolaridad).first;

    _gradoEscolar8.text = _Escolaridad8.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion8.text = _Escolaridad8.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad8.map((e) => e.Ocupacion).first;

    _tipoEmpleo8.text = _Escolaridad8.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad8.map((e) => e.TipoEmpleo).first;

    _derechohabiencia8.text =
        _Escolaridad8.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad8.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia8.text =
        _Escolaridad8.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad9 = [];
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
        _Escolaridad9.map((e) => e.Escolaridad).first;

    _gradoEscolar9.text = _Escolaridad9.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion9.text = _Escolaridad9.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad9.map((e) => e.Ocupacion).first;

    _tipoEmpleo9.text = _Escolaridad9.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad9.map((e) => e.TipoEmpleo).first;

    _derechohabiencia9.text =
        _Escolaridad9.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad9.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia9.text =
        _Escolaridad9.map((e) => e.ClaveMotivoDerechohabiencia).first +
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
    _Escolaridad10 = [];
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
        _Escolaridad10.map((e) => e.Escolaridad).first;

    _gradoEscolar10.text = _Escolaridad10.map((e) => e.ClaveGradoEscolar).first;

    _ocupacion10.text = _Escolaridad10.map((e) => e.ClaveOcupacion).first +
        " " +
        _Escolaridad10.map((e) => e.Ocupacion).first;

    _tipoEmpleo10.text = _Escolaridad10.map((e) => e.ClaveTipoEmpleo).first +
        " " +
        _Escolaridad10.map((e) => e.TipoEmpleo).first;

    _derechohabiencia10.text =
        _Escolaridad10.map((e) => e.ClaveDerechohabiencia).first +
            " " +
            _Escolaridad10.map((e) => e.Derechohabiencia).first;

    _motivoderechohabiencia10.text =
        _Escolaridad10.map((e) => e.ClaveMotivoDerechohabiencia).first +
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

  getAllEstructura1() async {
    _EstructuraFamiliar1 = [];
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
    _EstructuraFamiliar2 = [];
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
    _EstructuraFamiliar3 = [];
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
    _EstructuraFamiliar4 = [];
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
    _EstructuraFamiliar5 = [];
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
    _EstructuraFamiliar6 = [];
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
    _EstructuraFamiliar7 = [];
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
    _EstructuraFamiliar8 = [];
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
    _EstructuraFamiliar9 = [];
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
    _EstructuraFamiliar10 = [];
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
    _Escolaridad = [];
    var categories = await CategoryService().readCategoriesEcolaridades();
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.escolaridad = category['Escolaridad'];
        _Escolaridad.add(categoryModel);
      });
    });
  }

  getAllCategoriesGradoEscolar() async {
    _GradoEscolar = [];
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
    _Ocupacion = [];
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
    _TipoEmpleo = [];
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
    _Derechohabiencia = [];
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
    _MotivioDerechohabiencia = [];
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

  getAllPrestacionesLaborales() async {
    _PrestacionesList = [];
    var categories = await CategoryService().readPrestacionesLaborales();
    categories.forEach((category) {
      setState(() {
        var categoryModel = PrestacionesLaboralesModel();
        categoryModel.txt_desc_prestacioneslab =
        category['txt_desc_prestacioneslab'];
        _PrestacionesList.add(categoryModel);
      });
    });
  }

  renglon1() async {
    replaceAllLetter rpl1 = new replaceAllLetter();
    replaceAllNum rpn1 = new replaceAllNum();

    var Escolaridad = _escolaridad1.text.toString();
    final escolaridad = rpn1.replaceNum(Escolaridad);

    var Ocupacion = _ocupacion1.text.toString();
    final ocupacion = rpn1.replaceNum(Ocupacion);

    var TipoEmpleo = _tipoEmpleo1.text.toString();
    final tipoEmpleo = rpn1.replaceNum(TipoEmpleo);

    var derecho = _derechohabiencia1.text.toString();
    final Derecho = rpn1.replaceNum(derecho);

    var motivoDerecho = _motivoderechohabiencia1.text.toString();
    final motivoDereHab = rpn1.replaceNum(motivoDerecho);

    var pkPrestaciones = _prestacion1.text.toString();
    final prestacionesPK = rpl1.replaceLetter(pkPrestaciones);

    var intPrestaciones = _prestacion1.text.toString();
    final prestacionesInt = rpl1.replaceOrdPresta(intPrestaciones);

    var Prestaciones = _prestacion1.text.toString();
    final prestaciones = rpl1.replaceAll(Prestaciones);

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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad1.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = [];
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar1.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = [];
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion1.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = [];
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo1.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = [];
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia1.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = [];
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia1.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel11 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad1.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden.toString()).first,
      Escolaridad: escolaridad.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar1.text,
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,
      ClaveAsisteEscuela: asisteEscuela.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela.substring(0, 1),
      AsisteEscuela: _asisteEscuela1.name,
      ClaveOcupacion: _ocupacion1.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo1.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo.trimLeft(),
      pk_prestacioneslab: prestacionesPK.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones.trimLeft(),
      ClaveJubilacion: Jubilado.substring(0, 1),
      OrdenJubilacion: Jubilado.substring(0, 1),
      Jubilacion: _jubilacionPensionado1.name,
      ClaveDerechohabiencia: _derechohabiencia1.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia1.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel11)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  upDateRenglon1() async {
    replaceAllLetter rpl1 = new replaceAllLetter();
    replaceAllNum rpn1 = new replaceAllNum();

    var Escolaridad = _escolaridad1.text.toString();
    final escolaridad = rpn1.replaceNum(Escolaridad);

    var Ocupacion = _ocupacion1.text.toString();
    final ocupacion = rpn1.replaceNum(Ocupacion);

    var TipoEmpleo = _tipoEmpleo1.text.toString();
    final tipoEmpleo = rpn1.replaceNum(TipoEmpleo);

    var derecho = _derechohabiencia1.text.toString();
    final Derecho = rpn1.replaceNum(derecho);

    var motivoDerecho = _motivoderechohabiencia1.text.toString();
    final motivoDereHab = rpn1.replaceNum(motivoDerecho);

    var pkPrestaciones = _prestacion1.text.toString();
    final prestacionesPK = rpl1.replaceLetter(pkPrestaciones);

    var intPrestaciones = _prestacion1.text.toString();
    final prestacionesInt = rpl1.replaceOrdPresta(intPrestaciones);

    var Prestaciones = _prestacion1.text.toString();
    final prestaciones = rpl1.replaceAll(Prestaciones);

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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad1.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = [];
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar1.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = [];
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion1.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = [];
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo1.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = [];
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia1.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = [];
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia1.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad1.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden.toString()).first,
      Escolaridad: escolaridad.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar1.text,
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,
      ClaveAsisteEscuela: asisteEscuela.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela.substring(0, 1),
      AsisteEscuela: _asisteEscuela1.name,
      ClaveOcupacion: _ocupacion1.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo1.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo.trimLeft(),
      pk_prestacioneslab: prestacionesPK.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones.trimLeft(),
      ClaveJubilacion: Jubilado.substring(0, 1),
      OrdenJubilacion: Jubilado.substring(0, 1),
      Jubilacion: _jubilacionPensionado1.name,
      ClaveDerechohabiencia: _derechohabiencia1.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia1.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones2 = _prestacion2.text.toString(); // 'artlang'
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

    var intPrestaciones2 = _prestacion2.text.toString(); // 'artlang'
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

    var Prestaciones2 = _prestacion2.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad2.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar2.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion2.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo2.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia2.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia2.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel2 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad2.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad2.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar2.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela2.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela2.substring(0, 1),
      AsisteEscuela: _asisteEscuela2.name,
      ClaveOcupacion: _ocupacion2.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion2.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo2.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo2.trimLeft(),

      pk_prestacioneslab: prestacionesPK2.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt2.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones2.trimLeft(),

      ClaveJubilacion: Jubilado2.substring(0, 1),
      OrdenJubilacion: Jubilado2.substring(0, 1),
      Jubilacion: _jubilacionPensionado2.name,
      ClaveDerechohabiencia: _derechohabiencia2.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho2.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia2.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones2 = _prestacion2.text.toString(); // 'artlang'
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

    var intPrestaciones2 = _prestacion2.text.toString(); // 'artlang'
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

    var Prestaciones2 = _prestacion2.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad2.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar2.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion2.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo2.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia2.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia2.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel2 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad2.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad2.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar2.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela2.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela2.substring(0, 1),
      AsisteEscuela: _asisteEscuela2.name,
      ClaveOcupacion: _ocupacion2.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion2.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo2.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo2.trimLeft(),

      pk_prestacioneslab: prestacionesPK2.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt2.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones2.trimLeft(),

      ClaveJubilacion: Jubilado2.substring(0, 1),
      OrdenJubilacion: Jubilado2.substring(0, 1),
      Jubilacion: _jubilacionPensionado2.name,
      ClaveDerechohabiencia: _derechohabiencia2.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho2.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia2.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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


    var pkPrestaciones3 = _prestacion3.text.toString(); // 'artlang'
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

    var intPrestaciones3 = _prestacion3.text.toString(); // 'artlang'
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

    var Prestaciones3 = _prestacion3.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad3.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar3.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion3.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo3.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia3.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia3.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel3 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad3.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad3.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar3.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela3.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela3.substring(0, 1),
      AsisteEscuela: _asisteEscuela3.name,
      ClaveOcupacion: _ocupacion3.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion3.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo3.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo3.trimLeft(),

      pk_prestacioneslab: prestacionesPK3.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt3.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones3.trimLeft(),

      ClaveJubilacion: Jubilado3.substring(0, 1),
      OrdenJubilacion: Jubilado3.substring(0, 1),
      Jubilacion: _jubilacionPensionado3.name,
      ClaveDerechohabiencia: _derechohabiencia3.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho3.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia3.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones3 = _prestacion3.text.toString(); // 'artlang'
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

    var intPrestaciones3 = _prestacion3.text.toString(); // 'artlang'
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

    var Prestaciones3 = _prestacion3.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad3.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar3.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion3.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo3.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia3.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia3.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel3 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad3.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad3.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar3.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela3.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela3.substring(0, 1),
      AsisteEscuela: _asisteEscuela3.name,
      ClaveOcupacion: _ocupacion3.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion3.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo3.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo3.trimLeft(),

      pk_prestacioneslab: prestacionesPK3.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt3.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones3.trimLeft(),

      ClaveJubilacion: Jubilado3.substring(0, 1),
      OrdenJubilacion: Jubilado3.substring(0, 1),
      Jubilacion: _jubilacionPensionado3.name,
      ClaveDerechohabiencia: _derechohabiencia3.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho3.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia3.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones4 = _prestacion4.text.toString(); // 'artlang'
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

    var intPrestaciones4 = _prestacion4.text.toString(); // 'artlang'
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

    var Prestaciones4 = _prestacion4.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad4.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar4.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion4.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo4.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia4.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia4.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel4 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad4.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad4.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar4.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela4.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela4.substring(0, 1),
      AsisteEscuela: _asisteEscuela4.name,
      ClaveOcupacion: _ocupacion4.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion4.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo4.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo4.trimLeft(),

      pk_prestacioneslab: prestacionesPK4.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt4.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones4.trimLeft(),

      ClaveJubilacion: Jubilado4.substring(0, 1),
      OrdenJubilacion: Jubilado4.substring(0, 1),
      Jubilacion: _jubilacionPensionado4.name,
      ClaveDerechohabiencia: _derechohabiencia4.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho4.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia4.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones4 = _prestacion4.text.toString(); // 'artlang'
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

    var intPrestaciones4 = _prestacion4.text.toString(); // 'artlang'
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

    var Prestaciones4 = _prestacion4.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad4.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar4.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion4.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo4.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia4.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia4.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel4 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad4.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad4.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar4.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela4.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela4.substring(0, 1),
      AsisteEscuela: _asisteEscuela4.name,
      ClaveOcupacion: _ocupacion4.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion4.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo4.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo4.trimLeft(),

      pk_prestacioneslab: prestacionesPK4.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt4.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones4.trimLeft(),

      ClaveJubilacion: Jubilado4.substring(0, 1),
      OrdenJubilacion: Jubilado4.substring(0, 1),
      Jubilacion: _jubilacionPensionado4.name,
      ClaveDerechohabiencia: _derechohabiencia4.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho4.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia4.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones5 = _prestacion5.text.toString(); // 'artlang'
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

    var intPrestaciones5 = _prestacion5.text.toString(); // 'artlang'
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

    var Prestaciones5 = _prestacion5.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad5.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar5.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion5.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo5.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia5.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia5.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel5 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad5.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad5.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar5.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela5.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela5.substring(0, 1),
      AsisteEscuela: _asisteEscuela5.name,
      ClaveOcupacion: _ocupacion5.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion5.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo5.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo5.trimLeft(),

      pk_prestacioneslab: prestacionesPK5.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt5.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones5.trimLeft(),

      ClaveJubilacion: Jubilado5.substring(0, 1),
      OrdenJubilacion: Jubilado5.substring(0, 1),
      Jubilacion: _jubilacionPensionado5.name,
      ClaveDerechohabiencia: _derechohabiencia5.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho5.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia5.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones5 = _prestacion5.text.toString(); // 'artlang'
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

    var intPrestaciones5 = _prestacion5.text.toString(); // 'artlang'
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

    var Prestaciones5 = _prestacion5.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad5.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar5.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion5.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo5.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia5.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia5.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel5 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad5.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad5.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar5.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela5.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela5.substring(0, 1),
      AsisteEscuela: _asisteEscuela5.name,
      ClaveOcupacion: _ocupacion5.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion5.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo5.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo5.trimLeft(),

      pk_prestacioneslab: prestacionesPK5.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt5.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones5.trimLeft(),

      ClaveJubilacion: Jubilado5.substring(0, 1),
      OrdenJubilacion: Jubilado5.substring(0, 1),
      Jubilacion: _jubilacionPensionado5.name,
      ClaveDerechohabiencia: _derechohabiencia5.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho5.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia5.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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


    var pkPrestaciones6 = _prestacion6.text.toString(); // 'artlang'
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

    var intPrestaciones6 = _prestacion6.text.toString(); // 'artlang'
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

    var Prestaciones6 = _prestacion6.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad6.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar6.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion6.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo6.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia6.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia6.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel6 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad6.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad6.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar6.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela6.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela6.substring(0, 1),
      AsisteEscuela: _asisteEscuela6.name,
      ClaveOcupacion: _ocupacion6.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion6.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo6.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo6.trimLeft(),

      pk_prestacioneslab: prestacionesPK6.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt6.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones6.trimLeft(),

      ClaveJubilacion: Jubilado6.substring(0, 1),
      OrdenJubilacion: Jubilado6.substring(0, 1),
      Jubilacion: _jubilacionPensionado6.name,
      ClaveDerechohabiencia: _derechohabiencia6.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho6.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia6.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab6.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel6)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaTabla(widget.folio);
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

    var pkPrestaciones6 = _prestacion6.text.toString(); // 'artlang'
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

    var intPrestaciones6 = _prestacion6.text.toString(); // 'artlang'
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

    var Prestaciones6 = _prestacion6.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad6.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar6.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion6.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo6.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia6.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia6.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel6 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad6.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad6.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar6.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela6.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela6.substring(0, 1),
      AsisteEscuela: _asisteEscuela6.name,
      ClaveOcupacion: _ocupacion6.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion6.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo6.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo6.trimLeft(),

      pk_prestacioneslab: prestacionesPK6.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt6.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones6.trimLeft(),

      ClaveJubilacion: Jubilado6.substring(0, 1),
      OrdenJubilacion: Jubilado6.substring(0, 1),
      Jubilacion: _jubilacionPensionado6.name,
      ClaveDerechohabiencia: _derechohabiencia6.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho6.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia6.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab6.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad6(DModel6)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaTabla(widget.folio);
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

    var pkPrestaciones7 = _prestacion7.text.toString(); // 'artlang'
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

    var intPrestaciones7 = _prestacion7.text.toString(); // 'artlang'
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

    var Prestaciones7 = _prestacion7.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad7.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar7.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion7.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo7.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia7.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia7.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel7 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad7.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad7.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar7.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela7.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela7.substring(0, 1),
      AsisteEscuela: _asisteEscuela7.name,
      ClaveOcupacion: _ocupacion7.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion7.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo7.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo7.trimLeft(),

      pk_prestacioneslab: prestacionesPK7.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt7.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones7.trimLeft(),

      ClaveJubilacion: Jubilado7.substring(0, 1),
      OrdenJubilacion: Jubilado7.substring(0, 1),
      Jubilacion: _jubilacionPensionado7.name,
      ClaveDerechohabiencia: _derechohabiencia7.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho7.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia7.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones7 = _prestacion7.text.toString(); // 'artlang'
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

    var intPrestaciones7 = _prestacion7.text.toString(); // 'artlang'
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

    var Prestaciones7 = _prestacion7.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad7.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar7.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion7.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo7.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia7.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia7.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel7 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad7.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad7.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar7.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela7.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela7.substring(0, 1),
      AsisteEscuela: _asisteEscuela7.name,
      ClaveOcupacion: _ocupacion7.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion7.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo7.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo7.trimLeft(),

      pk_prestacioneslab: prestacionesPK7.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt7.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones7.trimLeft(),

      ClaveJubilacion: Jubilado7.substring(0, 1),
      OrdenJubilacion: Jubilado7.substring(0, 1),
      Jubilacion: _jubilacionPensionado7.name,
      ClaveDerechohabiencia: _derechohabiencia7.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho7.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia7.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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


    var pkPrestaciones8 = _prestacion8.text.toString(); // 'artlang'
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

    var intPrestaciones8 = _prestacion8.text.toString(); // 'artlang'
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

    var Prestaciones8 = _prestacion8.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad8.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar8.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion8.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo8.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia8.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia8.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel8 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad8.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad8.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar8.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela8.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela8.substring(0, 1),
      AsisteEscuela: _asisteEscuela8.name,
      ClaveOcupacion: _ocupacion8.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion8.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo8.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo8.trimLeft(),

      pk_prestacioneslab: prestacionesPK8.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt8.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones8.trimLeft(),

      ClaveJubilacion: Jubilado8.substring(0, 1),
      OrdenJubilacion: Jubilado8.substring(0, 1),
      Jubilacion: _jubilacionPensionado8.name,
      ClaveDerechohabiencia: _derechohabiencia8.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho8.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia8.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones8 = _prestacion8.text.toString(); // 'artlang'
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

    var intPrestaciones8 = _prestacion8.text.toString(); // 'artlang'
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

    var Prestaciones8 = _prestacion8.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad8.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar8.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion8.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo8.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia8.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia8.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel8 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad8.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad8.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar8.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,
      ClaveAsisteEscuela: asisteEscuela8.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela8.substring(0, 1),
      AsisteEscuela: _asisteEscuela8.name,
      ClaveOcupacion: _ocupacion8.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion8.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo8.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo8.trimLeft(),

      pk_prestacioneslab: prestacionesPK8.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt8.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones8.trimLeft(),

      ClaveJubilacion: Jubilado8.substring(0, 1),
      OrdenJubilacion: Jubilado8.substring(0, 1),
      Jubilacion: _jubilacionPensionado8.name,
      ClaveDerechohabiencia: _derechohabiencia8.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho8.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia8.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
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

    var pkPrestaciones9 = _prestacion9.text.toString(); // 'artlang'
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

    var intPrestaciones9 = _prestacion9.text.toString(); // 'artlang'
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

    var Prestaciones9 = _prestacion9.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad9.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar9.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion9.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo9.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia9.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia9.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel9 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad9.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad9.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar9.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela9.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela9.substring(0, 1),
      AsisteEscuela: _asisteEscuela9.name,
      ClaveOcupacion: _ocupacion9.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion9.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo9.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo9.trimLeft(),

      pk_prestacioneslab: prestacionesPK9.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt9.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones9.trimLeft(),

      ClaveJubilacion: Jubilado9.substring(0, 1),
      OrdenJubilacion: Jubilado9.substring(0, 1),
      Jubilacion: _jubilacionPensionado9.name,
      ClaveDerechohabiencia: _derechohabiencia9.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho9.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia9.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab9.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel9)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaTabla(widget.folio);
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

    var pkPrestaciones9 = _prestacion9.text.toString(); // 'artlang'
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

    var intPrestaciones9 = _prestacion9.text.toString(); // 'artlang'
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

    var Prestaciones9 = _prestacion9.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad9.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar9.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion9.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo9.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia9.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia9.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

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
      ClaveEscolaridad: _escolaridad9.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad9.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar9.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela9.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela9.substring(0, 1),
      AsisteEscuela: _asisteEscuela9.name,
      ClaveOcupacion: _ocupacion9.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion9.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo9.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo9.trimLeft(),

      pk_prestacioneslab: prestacionesPK9.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt9.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones9.trimLeft(),

      ClaveJubilacion: Jubilado9.substring(0, 1),
      OrdenJubilacion: Jubilado9.substring(0, 1),
      Jubilacion: _jubilacionPensionado9.name,
      ClaveDerechohabiencia: _derechohabiencia9.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho9.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia9.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab9.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad9(DModel9)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");

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

    var pkPrestaciones10 = _prestacion10.text.toString(); // 'artlang'
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

    var intPrestaciones10 = _prestacion10.text.toString(); // 'artlang'
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

    var Prestaciones10 = _prestacion10.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad10.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar10.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion10.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo10.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia10.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia10.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel10 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad10.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad10.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar10.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela10.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela10.substring(0, 1),
      AsisteEscuela: _asisteEscuela10.name,
      ClaveOcupacion: _ocupacion10.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion10.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo10.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo10.trimLeft(),

      pk_prestacioneslab: prestacionesPK10.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt10.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones10.trimLeft(),

      ClaveJubilacion: Jubilado10.substring(0, 1),
      OrdenJubilacion: Jubilado10.substring(0, 1),
      Jubilacion: _jubilacionPensionado10.name,
      ClaveDerechohabiencia: _derechohabiencia10.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho10.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia10.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab10.trimLeft(),
    );
    await dbHelper
        .saveEscolaridadSocial(DModel10)
        .then((escolaridadSeguridadSocial) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Salud_PertenenciaIndigenaTabla(widget.folio);
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


    var pkPrestaciones10 = _prestacion10.text.toString(); // 'artlang'
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

    var intPrestaciones10 = _prestacion10.text.toString(); // 'artlang'
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

    var Prestaciones10 = _prestacion10.text.toString(); // 'artlang'
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

    _EscolaridadOrden2 = List<EscolaridadesModel>();
    var categories =
    await CategoryService().readOrdenEscolaridad(_escolaridad10.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EscolaridadesModel();
        categoryModel.Orden = category['Orden'];
        _EscolaridadOrden2.add(categoryModel);
      });
    });

    _GradoEscolar2 = List<GradosEscolaresModel>();
    var categories1 =
    await CategoryService().readOrdenGrado(_gradoEscolar10.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = GradosEscolaresModel();
        categoryModel1.Orden = category['Orden'];
        _GradoEscolar2.add(categoryModel1);
      });
    });

    _Ocupacion2 = List<OcupacionesModel>();
    var categories2 =
    await CategoryService().readOrdenOcupacion(_ocupacion10.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = OcupacionesModel();
        categoryModel2.Orden = category['Orden'];
        _Ocupacion2.add(categoryModel2);
      });
    });

    _TipoEmpleo2 = List<TipoEmpleoModel>();
    var categories3 =
    await CategoryService().readOrdenTipoEmpl(_tipoEmpleo10.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel3 = TipoEmpleoModel();
        categoryModel3.Orden = category['Orden'];
        _TipoEmpleo2.add(categoryModel3);
      });
    });

    _Derechohabiencia2 = List<DerechoHabienciasModel>();
    var categories4 =
    await CategoryService().readOrdenDerecho(_derechohabiencia10.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel4 = DerechoHabienciasModel();
        categoryModel4.Orden = category['Orden'];
        _Derechohabiencia2.add(categoryModel4);
      });
    });

    _MotivioDerechohabiencia2 = List<MotivoDerechoHabienciasModel>();
    var categories5 = await CategoryService()
        .readOrdenMotivoDerecho(_motivoderechohabiencia10.text);
    categories5.forEach((category) {
      setState(() {
        var categoryModel5 = MotivoDerechoHabienciasModel();
        categoryModel5.Orden = category['Orden'];
        _MotivioDerechohabiencia2.add(categoryModel5);
      });
    });

    EscolaridadSeguridadSocial DModel10 = EscolaridadSeguridadSocial(
      folio: int.parse(widget.folio),
      ClaveEscolaridad: _escolaridad10.text.substring(0, 2).trimRight(),
      OrdenEscolaridad: _EscolaridadOrden2.map((e) => e.Orden).first,
      Escolaridad: escolaridad10.trimLeft(),
      ClaveGradoEscolar: _gradoEscolar10.text,
      //arreglar
      GradoEscolar: _GradoEscolar2.map((e) => e.Orden).first,

      ClaveAsisteEscuela: asisteEscuela10.substring(0, 1),
      OrdenAsisteEscuela: asisteEscuela10.substring(0, 1),
      AsisteEscuela: _asisteEscuela10.name,
      ClaveOcupacion: _ocupacion10.text.substring(0, 2).trimRight(),
      OrdenOcupacion: _Ocupacion2.map((e) => e.Orden).first,
      Ocupacion: ocupacion10.trimLeft(),
      ClaveTipoEmpleo: _tipoEmpleo10.text.substring(0, 2).trimRight(),
      OrdenTipoEmpleo: _TipoEmpleo2.map((e) => e.Orden).first,
      TipoEmpleo: tipoEmpleo10.trimLeft(),

      pk_prestacioneslab: prestacionesPK10.trimRight(),
      int_OrdenPrestacionesLab: prestacionesInt10.trimRight().trimLeft(),
      txt_desc_prestacioneslab: prestaciones10.trimLeft(),

      ClaveJubilacion: Jubilado10.substring(0, 1),
      OrdenJubilacion: Jubilado10.substring(0, 1),
      Jubilacion: _jubilacionPensionado10.name,
      ClaveDerechohabiencia: _derechohabiencia10.text.substring(0, 1),
      OrdenDerechohabiencia: _Derechohabiencia2.map((e) => e.Orden).first,
      Derechohabiencia: Derecho10.trimLeft(),
      ClaveMotivoDerechohabiencia:
      _motivoderechohabiencia10.text.substring(0, 2).trimRight(),
      OrdenMotivoDerechohabiencia:
      _MotivioDerechohabiencia2.map((e) => e.Orden).first,
      MotivoDerechohabiencia: motivoDereHab10.trimLeft(),
    );
    await dbHelper
        .upDateEscolaridad10(DModel10)
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
                              return new ActualizarEstudio(
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
                            return new ActualizarEstudio(widget.folio);
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
                          return new ActualizarEstudio(widget.folio);
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
                        return new ActualizarEstudio(widget.folio);
                      }));
                }
              } else {
                upDateRenglon1();
                upDateRenglon2();
                upDateRenglon3();
                upDateRenglon4();
                upDateRenglon5();
                print("entro aqui");
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new ActualizarEstudio(widget.folio);
                    }));
              }
            } else {
              upDateRenglon1();
              upDateRenglon2();
              upDateRenglon3();
              upDateRenglon4();
              print("entro por aca");
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return new ActualizarEstudio(widget.folio);
                  }));
            }
          } else {
            upDateRenglon1();
            upDateRenglon2();
            upDateRenglon3();
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new ActualizarEstudio(widget.folio);
            }));
          }
        } else {
          upDateRenglon1();
          upDateRenglon2();
          Navigator.of(context)
              .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
            return new ActualizarEstudio(widget.folio);
          }));
        }
      } else {
        upDateRenglon1();
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new ActualizarEstudio(widget.folio);
        }));
      }
    }
  }

  addChecked1() {
    List<PrestacionesLaboralesModel> previa1 = [];
    previa1 = _PrestacionesList;
    _selectedItem1.clear();
    for (var select1 in previa1) {
      if (select1.value) _selectedItem1.add(select1);
    }
    setState(() => previa1 = _selectedItem1);
    print(_selectedItem1);
    var prestacion1 = _selectedItem1.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal1 = rpl.replaceSymbol(prestacion1);
    _prestacion1.text = prestacionFinal1;
  }

  addChecked2() {
    List<PrestacionesLaboralesModel> previa2 = [];
    previa2 = _PrestacionesList;
    _selectedItem2.clear();
    for (var select2 in previa2) {
      if (select2.value) _selectedItem2.add(select2);
    }
    setState(() => previa2 = _selectedItem2);
    print(_selectedItem2);
    var prestacion2 = _selectedItem2.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal2 = rpl.replaceSymbol(prestacion2);
    _prestacion2.text = prestacionFinal2;
  }

  addChecked3() {
    List<PrestacionesLaboralesModel> previa3 = [];
    previa3 = _PrestacionesList;
    _selectedItem3.clear();
    for (var select3 in previa3) {
      if (select3.value) _selectedItem3.add(select3);
    }
    setState(() => previa3 = _selectedItem3);
    print(_selectedItem3);
    var prestacion3 = _selectedItem3.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal3 = rpl.replaceSymbol(prestacion3);
    _prestacion3.text = prestacionFinal3;
  }

  addChecked4() {
    List<PrestacionesLaboralesModel> previa4 = [];
    previa4 = _PrestacionesList;
    _selectedItem4.clear();
    for (var select4 in previa4) {
      if (select4.value) _selectedItem4.add(select4);
    }
    setState(() => previa4 = _selectedItem4);
    print(_selectedItem4);
    var prestacion4 = _selectedItem4.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal4 = rpl.replaceSymbol(prestacion4);
    _prestacion4.text = prestacionFinal4;
  }

  addChecked5() {
    List<PrestacionesLaboralesModel> previa5 = [];
    previa5 = _PrestacionesList;
    _selectedItem5.clear();
    for (var select5 in previa5) {
      if (select5.value) _selectedItem5.add(select5);
    }
    setState(() => previa5 = _selectedItem5);
    print(_selectedItem5);
    var prestacion5 = _selectedItem5.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal5 = rpl.replaceSymbol(prestacion5);
    _prestacion5.text = prestacionFinal5;
  }

  addChecked6() {
    List<PrestacionesLaboralesModel> previa6 = [];
    previa6 = _PrestacionesList;
    _selectedItem6.clear();
    for (var select6 in previa6) {
      if (select6.value) _selectedItem6.add(select6);
    }
    setState(() => previa6 = _selectedItem6);
    print(_selectedItem6);
    var prestacion6 = _selectedItem6.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal6 = rpl.replaceSymbol(prestacion6);
    _prestacion6.text = prestacionFinal6;
  }

  addChecked7() {
    List<PrestacionesLaboralesModel> previa7 = [];
    previa7 = _PrestacionesList;
    _selectedItem7.clear();
    for (var select7 in previa7) {
      if (select7.value) _selectedItem7.add(select7);
    }
    setState(() => previa7 = _selectedItem7);
    print(_selectedItem7);
    var prestacion7 = _selectedItem7.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal7 = rpl.replaceSymbol(prestacion7);
    _prestacion7.text = prestacionFinal7;
  }

  addChecked8() {
    List<PrestacionesLaboralesModel> previa8 = [];
    previa8 = _PrestacionesList;
    _selectedItem8.clear();
    for (var select8 in previa8) {
      if (select8.value) _selectedItem8.add(select8);
    }
    setState(() => previa8 = _selectedItem8);
    print(_selectedItem8);
    var prestacion8 = _selectedItem8.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal8 = rpl.replaceSymbol(prestacion8);
    _prestacion8.text = prestacionFinal8;
  }

  addChecked9() {
    List<PrestacionesLaboralesModel> previa9 = [];
    previa9 = _PrestacionesList;
    _selectedItem9.clear();
    for (var select9 in previa9) {
      if (select9.value) _selectedItem9.add(select9);
    }
    setState(() => previa9 = _selectedItem9);
    print(_selectedItem9);
    var prestacion9 = _selectedItem9.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal9 = rpl.replaceSymbol(prestacion9);
    _prestacion9.text = prestacionFinal9;
  }

  addChecked10() {
    List<PrestacionesLaboralesModel> previa10 = [];
    previa10 = _PrestacionesList;
    _selectedItem10.clear();
    for (var select10 in previa10) {
      if (select10.value) _selectedItem10.add(select10);
    }
    setState(() => previa10 = _selectedItem10);
    print(_selectedItem10);
    var prestacion10 = _selectedItem10.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final prestacionFinal10 = rpl.replaceSymbol(prestacion10);
    _prestacion10.text = prestacionFinal10;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolaridad y Seguridad Social'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (_) => EstructuraFamiliarTabla(widget.folio)),
                    (Route<dynamic> route) => false);
          },
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(children: [
              SizedBox(height: 5.0),
              getTextQuestion(question: 'Folio'),
              getTextFolio(
                  controller: TextEditingController.fromValue(
                      TextEditingValue(text: widget.folio))),
              Container(
                margin: EdgeInsets.all(20.0),
                width: double.infinity,
                child: TextButton.icon(
                    onPressed: cargarDatos,
                    icon: Icon(Icons.add_circle_outline, color: Colors.white),
                    label: Text(
                      'Cargar Datos',
                      style: TextStyle(color: Colors.white),
                    )),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: DataTable(
                          dataRowHeight: 170,
                          columns: [
                            DataColumn(label: Text('No.')),
                            DataColumn(label: Text('Nombres')),
                            DataColumn(label: Text('Escolaridad')),
                            DataColumn(label: Text('Grado')),
                            DataColumn(label: Text('Asiste Escuela')),
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
                              DataCell(getTextDataTable(
                                  controller: _nombre1, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad1,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo1,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion1,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked1,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia1,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('2')),
                              DataCell(getTextDataTable(
                                  controller: _nombre2, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad2,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo2,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion2,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked2,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia2,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('3')),
                              DataCell(getTextDataTable(
                                  controller: _nombre3, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad3,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo3,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion3,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked3,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia3,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('4')),
                              DataCell(getTextDataTable(
                                  controller: _nombre4, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad4,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo4,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion4,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked4,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia4,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('5')),
                              DataCell(getTextDataTable(
                                  controller: _nombre5, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad5,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo5,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo de Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion5,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked5,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia5,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('6')),
                              DataCell(getTextDataTable(
                                  controller: _nombre6, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad6,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo6,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion6,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked6,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia6,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('7')),
                              DataCell(getTextDataTable(
                                  controller: _nombre7, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad7,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo7,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo de Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion7,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked7,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia7,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('8')),
                              DataCell(getTextDataTable(
                                  controller: _nombre8, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad8,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo8,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion8,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked8,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia8,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('9')),
                              DataCell(getTextDataTable(
                                  controller: _nombre9, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad9,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo9,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo de Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion9,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked9,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia9,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
                            DataRow(cells: [
                              DataCell(Text('10')),
                              DataCell(getTextDataTable(
                                  controller: _nombre10, hintName: 'Nombres')),
                              DataCell(getSearchField(
                                  controller: _escolaridad10,
                                  suggestions: _Escolaridad.map((escolaridad) =>
                                      SearchFieldListItem(
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
                              DataCell(getSearchTipoEmpleado(
                                  controller: _tipoEmpleo10,
                                  suggestions: _TipoEmpleo.map((tipoEmpleo) =>
                                      SearchFieldListItem(tipoEmpleo.TipoEmpleo,
                                          item: tipoEmpleo)).toList(),
                                  hintName: 'Tipo De Empleo')),
                              DataCell(
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          genTextExpand(
                                              controller: _prestacion10,
                                              hintName:
                                              'Prestaciones Laborales',
                                              inputType:
                                              TextInputType.multiline),
                                          ElevatedButton(
                                            child: Text('Abrir Opciones'),
                                            onPressed: () =>
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            30.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setstate) {
                                                            return SizedBox(
                                                              height: 500,
                                                              child:
                                                              ListView.builder(
                                                                itemCount:
                                                                _PrestacionesList
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                    index) =>
                                                                    InkWell(
                                                                      onTap: () {
                                                                        setstate(() {
                                                                          _PrestacionesList[
                                                                          index]
                                                                              .value = !_PrestacionesList[
                                                                          index]
                                                                              .value;
                                                                        });
                                                                      },
                                                                      child: ListTile(
                                                                        leading:
                                                                        Checkbox(
                                                                            value: _PrestacionesList[index]
                                                                                .value,
                                                                            onChanged:
                                                                                (checked) {
                                                                              setstate(
                                                                                      () {
                                                                                    _PrestacionesList[index].value =
                                                                                        checked;
                                                                                  });
                                                                            }),
                                                                        title: Text(_PrestacionesList[
                                                                        index]
                                                                            .txt_desc_prestacioneslab
                                                                            .toString()),
                                                                      ),
                                                                    ),
                                                              ),
                                                            );
                                                          });
                                                    }),
                                          ),
                                          ElevatedButton(
                                              onPressed: addChecked10,
                                              child: Text('Agregar')),
                                        ],
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
                                          (derechohabiencia) => SearchFieldListItem(
                                          derechohabiencia.derechoHabiencia,
                                          item: derechohabiencia)).toList(),
                                  hintName: 'Derechohabiencia')),
                              DataCell(getSearchField(
                                  controller: _motivoderechohabiencia10,
                                  suggestions: _MotivioDerechohabiencia.map(
                                          (motivoderechohabiencia) =>
                                          SearchFieldListItem(
                                              motivoderechohabiencia
                                                  .motivoDerechoHabiencia,
                                              item: motivoderechohabiencia))
                                      .toList(),
                                  hintName: 'Motivo Derechohabiencia'))
                            ]),
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
            ]),
          ),
        ),
      ),
    );
  }
}
