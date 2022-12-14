import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextDate.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/EstadosCiviles.dart';
import 'package:esn/Model/EstadosModel.dart';
import 'package:esn/Model/EstructuraFamiliarModel.dart';
import 'package:esn/Model/Parentesco.dart';
import 'package:esn/Screens/ServiciosCombustible.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/ScreensActualizar/Escolaridad_SeguridadSocialActualizar.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:masked_text_field/masked_text_field.dart';

enum Sexo { hombre, mujer, otro }

class EstructuraFamiliarActualizar extends StatefulWidget {
  String folio;

  EstructuraFamiliarActualizar(this.folio);

  @override
  State<EstructuraFamiliarActualizar> createState() =>
      _EstructuraFamiliarActualizarState();
}

class _EstructuraFamiliarActualizarState
    extends State<EstructuraFamiliarActualizar> {
  final _nombre1 = TextEditingController();
  final _primerApellido1 = TextEditingController();
  final _segundoApellido1 = TextEditingController();
  Sexo _sexo1;
  final _fechaNacimiento1 = TextEditingController();
  final _entidadNacimiento1 = TextEditingController();
  final _estadoCivil1 = TextEditingController();
  final _parentesco1 = TextEditingController();

  final _nombre2 = TextEditingController();
  final _primerApellido2 = TextEditingController();
  final _segundoApellido2 = TextEditingController();
  Sexo _sexo2;
  final _fechaNacimiento2 = TextEditingController();
  final _entidadNacimiento2 = TextEditingController();
  final _estadoCivil2 = TextEditingController();
  final _parentesco2 = TextEditingController();

  final _nombre3 = TextEditingController();
  final _primerApellido3 = TextEditingController();
  final _segundoApellido3 = TextEditingController();
  Sexo _sexo3;
  final _fechaNacimiento3 = TextEditingController();
  final _entidadNacimiento3 = TextEditingController();
  final _estadoCivil3 = TextEditingController();
  final _parentesco3 = TextEditingController();

  final _nombre4 = TextEditingController();
  final _primerApellido4 = TextEditingController();
  final _segundoApellido4 = TextEditingController();
  Sexo _sexo4;
  final _fechaNacimiento4 = TextEditingController();
  final _entidadNacimiento4 = TextEditingController();
  final _estadoCivil4 = TextEditingController();
  final _parentesco4 = TextEditingController();

  final _nombre5 = TextEditingController();
  final _primerApellido5 = TextEditingController();
  final _segundoApellido5 = TextEditingController();
  Sexo _sexo5;
  final _fechaNacimiento5 = TextEditingController();
  final _entidadNacimiento5 = TextEditingController();
  final _estadoCivil5 = TextEditingController();
  final _parentesco5 = TextEditingController();

  final _nombre6 = TextEditingController();
  final _primerApellido6 = TextEditingController();
  final _segundoApellido6 = TextEditingController();
  Sexo _sexo6;
  final _fechaNacimiento6 = TextEditingController();
  final _entidadNacimiento6 = TextEditingController();
  final _estadoCivil6 = TextEditingController();
  final _parentesco6 = TextEditingController();

  final _nombre7 = TextEditingController();
  final _primerApellido7 = TextEditingController();
  final _segundoApellido7 = TextEditingController();
  Sexo _sexo7;
  final _fechaNacimiento7 = TextEditingController();
  final _entidadNacimiento7 = TextEditingController();
  final _estadoCivil7 = TextEditingController();
  final _parentesco7 = TextEditingController();

  final _nombre8 = TextEditingController();
  final _primerApellido8 = TextEditingController();
  final _segundoApellido8 = TextEditingController();
  Sexo _sexo8;
  final _fechaNacimiento8 = TextEditingController();
  final _entidadNacimiento8 = TextEditingController();
  final _estadoCivil8 = TextEditingController();
  final _parentesco8 = TextEditingController();

  final _nombre9 = TextEditingController();
  final _primerApellido9 = TextEditingController();
  final _segundoApellido9 = TextEditingController();
  Sexo _sexo9;
  final _fechaNacimiento9 = TextEditingController();
  final _entidadNacimiento9 = TextEditingController();
  final _estadoCivil9 = TextEditingController();
  final _parentesco9 = TextEditingController();

  final _nombre10 = TextEditingController();
  final _primerApellido10 = TextEditingController();
  final _segundoApellido10 = TextEditingController();
  Sexo _sexo10;
  final _fechaNacimiento10 = TextEditingController();
  final _entidadNacimiento10 = TextEditingController();
  final _estadoCivil10 = TextEditingController();
  final _parentesco10 = TextEditingController();

  var dbHelper;
  List<EstadosCiviles> _EstadosCiviles = List<EstadosCiviles>();
  List<Parentescos> _Parentesco = List<Parentescos>();
  List<EstadosModel> _Estado = List<EstadosModel>();

  List<EstadosCiviles> _EstadosCiviles2 = List<EstadosCiviles>();
  List<Parentescos> _Parentesco2 = List<Parentescos>();
  List<EstadosModel> _Estado2 = List<EstadosModel>();

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

  getTitular() {
    String t = '0 Titular';
    _parentesco1.text = t;
  }

  @override
  void initState() {
    getAllCategoriesEstadosCiviles();
    getAllCategoriesParentesco();
    getAllCategoriesEstados();
    getTitular();
    dbHelper = DbHelper();
  }

  cargarDatos() {
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
  }

  getAllEstructura1() async {
    _EstructuraFamiliar1 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura1(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar1.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar1.map((e) => e.sexo).first == "hombre") {
      _nombre1.text = _EstructuraFamiliar1.map((e) => e.nombre).first;
      _primerApellido1.text = _EstructuraFamiliar1.map((e) => e.primerApellido).first;
      _segundoApellido1.text = _EstructuraFamiliar1.map((e) => e.segundoApellido).first;
      _sexo1 = Sexo.hombre;
      _fechaNacimiento1.text = _EstructuraFamiliar1.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento1.text = _EstructuraFamiliar1.map((e) => e.claveEntidad).first +
          " " +
          _EstructuraFamiliar1.map((e) => e.entidadNacimiento).first;
      _estadoCivil1.text =
          _EstructuraFamiliar1.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar1.map((e) => e.estadoCivil).first;
      _parentesco1.text =
          _EstructuraFamiliar1.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar1.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar1.map((e) => e.sexo).first == "mujer") {
      _nombre1.text = _EstructuraFamiliar1.map((e) => e.nombre).first;
      _primerApellido1.text =
          _EstructuraFamiliar1.map((e) => e.primerApellido).first;
      _segundoApellido1.text =
          _EstructuraFamiliar1.map((e) => e.segundoApellido).first;
      _sexo1 = Sexo.mujer;
      _fechaNacimiento1.text =
          _EstructuraFamiliar1.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento1.text =
          _EstructuraFamiliar1.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar1.map((e) => e.entidadNacimiento).first;
      _estadoCivil1.text =
          _EstructuraFamiliar1.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar1.map((e) => e.estadoCivil).first;
      _parentesco1.text =
          _EstructuraFamiliar1.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar1.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar1.map((e) => e.sexo).first == "otro") {
      _nombre1.text = _EstructuraFamiliar1.map((e) => e.nombre).first;
      _primerApellido1.text = _EstructuraFamiliar1.map((e) => e.primerApellido).first;
      _segundoApellido1.text = _EstructuraFamiliar1.map((e) => e.segundoApellido).first;
      _sexo1 = Sexo.otro;
      _fechaNacimiento1.text = _EstructuraFamiliar1.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento1.text = _EstructuraFamiliar1.map((e) => e.claveEntidad).first +
          " " + _EstructuraFamiliar1.map((e) => e.entidadNacimiento).first;
      _estadoCivil1.text = _EstructuraFamiliar1.map((e) => e.claveEstadoCivil).first +
          " " + _EstructuraFamiliar1.map((e) => e.estadoCivil).first;
      _parentesco1.text =
          _EstructuraFamiliar1.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar1.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura2() async {
    _EstructuraFamiliar2 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura2(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar2.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar2.map((e) => e.sexo).first == "hombre") {
      _nombre2.text = _EstructuraFamiliar2.map((e) => e.nombre).first;
      _primerApellido2.text =
          _EstructuraFamiliar2.map((e) => e.primerApellido).first;
      _segundoApellido2.text =
          _EstructuraFamiliar2.map((e) => e.segundoApellido).first;
      _sexo2 = Sexo.hombre;
      _fechaNacimiento2.text =
          _EstructuraFamiliar2.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento2.text =
          _EstructuraFamiliar2.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.entidadNacimiento).first;
      _estadoCivil2.text =
          _EstructuraFamiliar2.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.estadoCivil).first;
      _parentesco2.text =
          _EstructuraFamiliar2.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar2.map((e) => e.sexo).first == "mujer") {
      _nombre2.text = _EstructuraFamiliar2.map((e) => e.nombre).first;
      _primerApellido2.text =
          _EstructuraFamiliar2.map((e) => e.primerApellido).first;
      _segundoApellido2.text =
          _EstructuraFamiliar2.map((e) => e.segundoApellido).first;
      _sexo2 = Sexo.mujer;
      _fechaNacimiento2.text =
          _EstructuraFamiliar2.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento2.text =
          _EstructuraFamiliar2.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.entidadNacimiento).first;
      _estadoCivil2.text =
          _EstructuraFamiliar2.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.estadoCivil).first;
      _parentesco2.text =
          _EstructuraFamiliar2.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar2.map((e) => e.sexo).first == "otro") {
      _nombre2.text = _EstructuraFamiliar2.map((e) => e.nombre).first;
      _primerApellido2.text =
          _EstructuraFamiliar2.map((e) => e.primerApellido).first;
      _segundoApellido2.text =
          _EstructuraFamiliar2.map((e) => e.segundoApellido).first;
      _sexo2 = Sexo.otro;
      _fechaNacimiento2.text =
          _EstructuraFamiliar2.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento2.text =
          _EstructuraFamiliar2.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.entidadNacimiento).first;
      _estadoCivil2.text =
          _EstructuraFamiliar2.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.estadoCivil).first;
      _parentesco2.text =
          _EstructuraFamiliar2.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar2.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura3() async {
    _EstructuraFamiliar3 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura3(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar3.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar3.map((e) => e.sexo).first == "hombre") {
      _nombre3.text = _EstructuraFamiliar3.map((e) => e.nombre).first;
      _primerApellido3.text =
          _EstructuraFamiliar3.map((e) => e.primerApellido).first;
      _segundoApellido3.text =
          _EstructuraFamiliar3.map((e) => e.segundoApellido).first;
      _sexo3 = Sexo.hombre;
      _fechaNacimiento3.text =
          _EstructuraFamiliar3.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento3.text =
          _EstructuraFamiliar3.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.entidadNacimiento).first;
      _estadoCivil3.text =
          _EstructuraFamiliar3.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.estadoCivil).first;
      _parentesco3.text =
          _EstructuraFamiliar3.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar3.map((e) => e.sexo).first == "mujer") {
      _nombre3.text = _EstructuraFamiliar3.map((e) => e.nombre).first;
      _primerApellido3.text =
          _EstructuraFamiliar3.map((e) => e.primerApellido).first;
      _segundoApellido3.text =
          _EstructuraFamiliar3.map((e) => e.segundoApellido).first;
      _sexo3 = Sexo.mujer;
      _fechaNacimiento3.text =
          _EstructuraFamiliar3.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento3.text =
          _EstructuraFamiliar3.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.entidadNacimiento).first;
      _estadoCivil3.text =
          _EstructuraFamiliar3.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.estadoCivil).first;
      _parentesco3.text =
          _EstructuraFamiliar3.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar3.map((e) => e.sexo).first == "otro") {
      _nombre3.text = _EstructuraFamiliar3.map((e) => e.nombre).first;
      _primerApellido3.text =
          _EstructuraFamiliar3.map((e) => e.primerApellido).first;
      _segundoApellido3.text =
          _EstructuraFamiliar3.map((e) => e.segundoApellido).first;
      _sexo3 = Sexo.otro;
      _fechaNacimiento3.text =
          _EstructuraFamiliar3.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento3.text =
          _EstructuraFamiliar3.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.entidadNacimiento).first;
      _estadoCivil3.text =
          _EstructuraFamiliar3.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.estadoCivil).first;
      _parentesco3.text =
          _EstructuraFamiliar3.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar3.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura4() async {
    _EstructuraFamiliar4 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura4(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar4.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar4.map((e) => e.sexo).first == "hombre") {
      _nombre4.text = _EstructuraFamiliar4.map((e) => e.nombre).first;
      _primerApellido4.text =
          _EstructuraFamiliar4.map((e) => e.primerApellido).first;
      _segundoApellido4.text =
          _EstructuraFamiliar4.map((e) => e.segundoApellido).first;
      _sexo4 = Sexo.hombre;
      _fechaNacimiento4.text =
          _EstructuraFamiliar4.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento4.text =
          _EstructuraFamiliar4.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.entidadNacimiento).first;
      _estadoCivil4.text =
          _EstructuraFamiliar4.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.estadoCivil).first;
      _parentesco4.text =
          _EstructuraFamiliar4.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar4.map((e) => e.sexo).first == "mujer") {
      _nombre4.text = _EstructuraFamiliar4.map((e) => e.nombre).first;
      _primerApellido4.text =
          _EstructuraFamiliar4.map((e) => e.primerApellido).first;
      _segundoApellido4.text =
          _EstructuraFamiliar4.map((e) => e.segundoApellido).first;
      _sexo4 = Sexo.mujer;
      _fechaNacimiento4.text =
          _EstructuraFamiliar4.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento4.text =
          _EstructuraFamiliar4.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.entidadNacimiento).first;
      _estadoCivil4.text =
          _EstructuraFamiliar4.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.estadoCivil).first;
      _parentesco4.text =
          _EstructuraFamiliar4.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar4.map((e) => e.sexo).first == "otro") {
      _nombre4.text = _EstructuraFamiliar4.map((e) => e.nombre).first;
      _primerApellido4.text =
          _EstructuraFamiliar4.map((e) => e.primerApellido).first;
      _segundoApellido4.text =
          _EstructuraFamiliar4.map((e) => e.segundoApellido).first;
      _sexo4 = Sexo.otro;
      _fechaNacimiento4.text =
          _EstructuraFamiliar4.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento4.text =
          _EstructuraFamiliar4.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.entidadNacimiento).first;
      _estadoCivil4.text =
          _EstructuraFamiliar4.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.estadoCivil).first;
      _parentesco4.text =
          _EstructuraFamiliar4.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar4.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura5() async {
    _EstructuraFamiliar5 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura5(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar5.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar5.map((e) => e.sexo).first == "hombre") {
      _nombre5.text = _EstructuraFamiliar5.map((e) => e.nombre).first;
      _primerApellido5.text =
          _EstructuraFamiliar5.map((e) => e.primerApellido).first;
      _segundoApellido5.text =
          _EstructuraFamiliar5.map((e) => e.segundoApellido).first;
      _sexo5 = Sexo.hombre;
      _fechaNacimiento5.text =
          _EstructuraFamiliar5.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento5.text =
          _EstructuraFamiliar5.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.entidadNacimiento).first;
      _estadoCivil5.text =
          _EstructuraFamiliar5.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.estadoCivil).first;
      _parentesco5.text =
          _EstructuraFamiliar5.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar5.map((e) => e.sexo).first == "mujer") {
      _nombre5.text = _EstructuraFamiliar5.map((e) => e.nombre).first;
      _primerApellido5.text =
          _EstructuraFamiliar5.map((e) => e.primerApellido).first;
      _segundoApellido5.text =
          _EstructuraFamiliar5.map((e) => e.segundoApellido).first;
      _sexo5 = Sexo.mujer;
      _fechaNacimiento5.text =
          _EstructuraFamiliar5.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento5.text =
          _EstructuraFamiliar5.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.entidadNacimiento).first;
      _estadoCivil5.text =
          _EstructuraFamiliar5.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.estadoCivil).first;
      _parentesco5.text =
          _EstructuraFamiliar5.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar5.map((e) => e.sexo).first == "otro") {
      _nombre5.text = _EstructuraFamiliar5.map((e) => e.nombre).first;
      _primerApellido5.text =
          _EstructuraFamiliar5.map((e) => e.primerApellido).first;
      _segundoApellido5.text =
          _EstructuraFamiliar5.map((e) => e.segundoApellido).first;
      _sexo5 = Sexo.otro;
      _fechaNacimiento5.text =
          _EstructuraFamiliar5.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento5.text =
          _EstructuraFamiliar5.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.entidadNacimiento).first;
      _estadoCivil5.text =
          _EstructuraFamiliar5.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.estadoCivil).first;
      _parentesco5.text =
          _EstructuraFamiliar5.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar5.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura6() async {
    _EstructuraFamiliar6 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura6(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar6.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar6.map((e) => e.sexo).first == "hombre") {
      _nombre6.text = _EstructuraFamiliar6.map((e) => e.nombre).first;
      _primerApellido6.text =
          _EstructuraFamiliar6.map((e) => e.primerApellido).first;
      _segundoApellido6.text =
          _EstructuraFamiliar6.map((e) => e.segundoApellido).first;
      _sexo6 = Sexo.hombre;
      _fechaNacimiento6.text =
          _EstructuraFamiliar6.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento6.text =
          _EstructuraFamiliar6.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.entidadNacimiento).first;
      _estadoCivil6.text =
          _EstructuraFamiliar6.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.estadoCivil).first;
      _parentesco6.text =
          _EstructuraFamiliar6.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar6.map((e) => e.sexo).first == "mujer") {
      _nombre6.text = _EstructuraFamiliar6.map((e) => e.nombre).first;
      _primerApellido6.text =
          _EstructuraFamiliar6.map((e) => e.primerApellido).first;
      _segundoApellido6.text =
          _EstructuraFamiliar6.map((e) => e.segundoApellido).first;
      _sexo6 = Sexo.mujer;
      _fechaNacimiento6.text =
          _EstructuraFamiliar6.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento6.text =
          _EstructuraFamiliar6.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.entidadNacimiento).first;
      _estadoCivil6.text =
          _EstructuraFamiliar6.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.estadoCivil).first;
      _parentesco6.text =
          _EstructuraFamiliar6.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar6.map((e) => e.sexo).first == "otro") {
      _nombre6.text = _EstructuraFamiliar6.map((e) => e.nombre).first;
      _primerApellido6.text =
          _EstructuraFamiliar6.map((e) => e.primerApellido).first;
      _segundoApellido6.text =
          _EstructuraFamiliar6.map((e) => e.segundoApellido).first;
      _sexo6 = Sexo.otro;
      _fechaNacimiento6.text =
          _EstructuraFamiliar6.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento6.text =
          _EstructuraFamiliar6.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.entidadNacimiento).first;
      _estadoCivil6.text =
          _EstructuraFamiliar6.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.estadoCivil).first;
      _parentesco6.text =
          _EstructuraFamiliar6.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar6.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura7() async {
    _EstructuraFamiliar7 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura7(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar7.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar7.map((e) => e.sexo).first == "hombre") {
      _nombre7.text = _EstructuraFamiliar7.map((e) => e.nombre).first;
      _primerApellido7.text =
          _EstructuraFamiliar7.map((e) => e.primerApellido).first;
      _segundoApellido7.text =
          _EstructuraFamiliar7.map((e) => e.segundoApellido).first;
      _sexo7 = Sexo.hombre;
      _fechaNacimiento7.text =
          _EstructuraFamiliar7.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento7.text =
          _EstructuraFamiliar7.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.entidadNacimiento).first;
      _estadoCivil7.text =
          _EstructuraFamiliar7.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.estadoCivil).first;
      _parentesco7.text =
          _EstructuraFamiliar7.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar7.map((e) => e.sexo).first == "mujer") {
      _nombre7.text = _EstructuraFamiliar7.map((e) => e.nombre).first;
      _primerApellido7.text =
          _EstructuraFamiliar7.map((e) => e.primerApellido).first;
      _segundoApellido7.text =
          _EstructuraFamiliar7.map((e) => e.segundoApellido).first;
      _sexo7 = Sexo.mujer;
      _fechaNacimiento7.text =
          _EstructuraFamiliar7.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento7.text =
          _EstructuraFamiliar7.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.entidadNacimiento).first;
      _estadoCivil7.text =
          _EstructuraFamiliar7.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.estadoCivil).first;
      _parentesco7.text =
          _EstructuraFamiliar7.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar7.map((e) => e.sexo).first == "otro") {
      _nombre7.text = _EstructuraFamiliar7.map((e) => e.nombre).first;
      _primerApellido7.text =
          _EstructuraFamiliar7.map((e) => e.primerApellido).first;
      _segundoApellido7.text =
          _EstructuraFamiliar7.map((e) => e.segundoApellido).first;
      _sexo7 = Sexo.otro;
      _fechaNacimiento7.text =
          _EstructuraFamiliar7.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento7.text =
          _EstructuraFamiliar7.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.entidadNacimiento).first;
      _estadoCivil7.text =
          _EstructuraFamiliar7.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.estadoCivil).first;
      _parentesco7.text =
          _EstructuraFamiliar7.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar7.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura8() async {
    _EstructuraFamiliar8 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura8(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar8.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar8.map((e) => e.sexo).first == "hombre") {
      _nombre8.text = _EstructuraFamiliar8.map((e) => e.nombre).first;
      _primerApellido8.text =
          _EstructuraFamiliar8.map((e) => e.primerApellido).first;
      _segundoApellido8.text =
          _EstructuraFamiliar8.map((e) => e.segundoApellido).first;
      _sexo8 = Sexo.hombre;
      _fechaNacimiento8.text =
          _EstructuraFamiliar8.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento8.text =
          _EstructuraFamiliar8.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.entidadNacimiento).first;
      _estadoCivil8.text =
          _EstructuraFamiliar8.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.estadoCivil).first;
      _parentesco8.text =
          _EstructuraFamiliar8.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar8.map((e) => e.sexo).first == "mujer") {
      _nombre8.text = _EstructuraFamiliar8.map((e) => e.nombre).first;
      _primerApellido8.text =
          _EstructuraFamiliar8.map((e) => e.primerApellido).first;
      _segundoApellido8.text =
          _EstructuraFamiliar8.map((e) => e.segundoApellido).first;
      _sexo8 = Sexo.mujer;
      _fechaNacimiento8.text =
          _EstructuraFamiliar8.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento8.text =
          _EstructuraFamiliar8.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.entidadNacimiento).first;
      _estadoCivil8.text =
          _EstructuraFamiliar8.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.estadoCivil).first;
      _parentesco8.text =
          _EstructuraFamiliar8.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar8.map((e) => e.sexo).first == "otro") {
      _nombre8.text = _EstructuraFamiliar8.map((e) => e.nombre).first;
      _primerApellido8.text =
          _EstructuraFamiliar8.map((e) => e.primerApellido).first;
      _segundoApellido8.text =
          _EstructuraFamiliar8.map((e) => e.segundoApellido).first;
      _sexo8 = Sexo.otro;
      _fechaNacimiento8.text =
          _EstructuraFamiliar8.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento8.text =
          _EstructuraFamiliar8.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.entidadNacimiento).first;
      _estadoCivil8.text =
          _EstructuraFamiliar8.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.estadoCivil).first;
      _parentesco8.text =
          _EstructuraFamiliar8.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar8.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura9() async {
    _EstructuraFamiliar9 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura9(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar9.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar9.map((e) => e.sexo).first == "hombre") {
      _nombre9.text = _EstructuraFamiliar9.map((e) => e.nombre).first;
      _primerApellido9.text =
          _EstructuraFamiliar9.map((e) => e.primerApellido).first;
      _segundoApellido9.text =
          _EstructuraFamiliar9.map((e) => e.segundoApellido).first;
      _sexo9 = Sexo.hombre;
      _fechaNacimiento9.text =
          _EstructuraFamiliar9.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento9.text =
          _EstructuraFamiliar9.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.entidadNacimiento).first;
      _estadoCivil9.text =
          _EstructuraFamiliar9.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.estadoCivil).first;
      _parentesco9.text =
          _EstructuraFamiliar9.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar9.map((e) => e.sexo).first == "mujer") {
      _nombre9.text = _EstructuraFamiliar9.map((e) => e.nombre).first;
      _primerApellido9.text =
          _EstructuraFamiliar9.map((e) => e.primerApellido).first;
      _segundoApellido9.text =
          _EstructuraFamiliar9.map((e) => e.segundoApellido).first;
      _sexo9 = Sexo.mujer;
      _fechaNacimiento9.text =
          _EstructuraFamiliar9.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento9.text =
          _EstructuraFamiliar9.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.entidadNacimiento).first;
      _estadoCivil9.text =
          _EstructuraFamiliar9.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.estadoCivil).first;
      _parentesco9.text =
          _EstructuraFamiliar9.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar9.map((e) => e.sexo).first == "otro") {
      _nombre9.text = _EstructuraFamiliar9.map((e) => e.nombre).first;
      _primerApellido9.text =
          _EstructuraFamiliar9.map((e) => e.primerApellido).first;
      _segundoApellido9.text =
          _EstructuraFamiliar9.map((e) => e.segundoApellido).first;
      _sexo9 = Sexo.otro;
      _fechaNacimiento9.text =
          _EstructuraFamiliar9.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento9.text =
          _EstructuraFamiliar9.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.entidadNacimiento).first;
      _estadoCivil9.text =
          _EstructuraFamiliar9.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.estadoCivil).first;
      _parentesco9.text =
          _EstructuraFamiliar9.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar9.map((e) => e.parentesco).first;
    }
  }

  getAllEstructura10() async {
    _EstructuraFamiliar10 = List<EstructuraFamilarModel>();
    var categories =
    await CategoryService().readEstructura10(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.folio = category['folio'];
        categoryModel.nombre = category['nombre'];
        categoryModel.primerApellido = category['primerApellido'];
        categoryModel.segundoApellido = category['segundoApellido'];
        categoryModel.sexo = category['sexo'];
        categoryModel.fechaNacimiento = category['fechaNacimiento'];
        categoryModel.claveEntidad = category['claveEntidad'];
        categoryModel.entidadNacimiento = category['entidadNacimiento'];
        categoryModel.claveEstadoCivil = category['claveEstadoCivil'];
        categoryModel.ordenEstadoCivil = category['ordenEstadoCivil'];
        categoryModel.estadoCivil = category['estadoCivil'];
        categoryModel.claveParentesco = category['claveParentesco'];
        categoryModel.ordenParentesco = category['OrdenParentesco'];
        categoryModel.parentesco = category['parentesco'];

        _EstructuraFamiliar10.add(categoryModel);
      });
    });
    if (_EstructuraFamiliar10.map((e) => e.sexo).first == "hombre") {
      _nombre10.text = _EstructuraFamiliar10.map((e) => e.nombre).first;
      _primerApellido10.text =
          _EstructuraFamiliar10.map((e) => e.primerApellido).first;
      _segundoApellido10.text =
          _EstructuraFamiliar10.map((e) => e.segundoApellido).first;
      _sexo10 = Sexo.hombre;
      _fechaNacimiento10.text =
          _EstructuraFamiliar10.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento10.text =
          _EstructuraFamiliar10.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.entidadNacimiento).first;
      _estadoCivil10.text =
          _EstructuraFamiliar10.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.estadoCivil).first;
      _parentesco10.text =
          _EstructuraFamiliar10.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar10.map((e) => e.sexo).first == "mujer") {
      _nombre10.text = _EstructuraFamiliar10.map((e) => e.nombre).first;
      _primerApellido10.text =
          _EstructuraFamiliar10.map((e) => e.primerApellido).first;
      _segundoApellido10.text =
          _EstructuraFamiliar10.map((e) => e.segundoApellido).first;
      _sexo10 = Sexo.mujer;
      _fechaNacimiento10.text =
          _EstructuraFamiliar10.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento10.text =
          _EstructuraFamiliar10.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.entidadNacimiento).first;
      _estadoCivil10.text =
          _EstructuraFamiliar10.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.estadoCivil).first;
      _parentesco10.text =
          _EstructuraFamiliar10.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.parentesco).first;
    }
    if (_EstructuraFamiliar10.map((e) => e.sexo).first == "otro") {
      _nombre10.text = _EstructuraFamiliar10.map((e) => e.nombre).first;
      _primerApellido10.text =
          _EstructuraFamiliar10.map((e) => e.primerApellido).first;
      _segundoApellido10.text =
          _EstructuraFamiliar10.map((e) => e.segundoApellido).first;
      _sexo10 = Sexo.otro;
      _fechaNacimiento10.text =
          _EstructuraFamiliar10.map((e) => e.fechaNacimiento).first;
      _entidadNacimiento10.text =
          _EstructuraFamiliar10.map((e) => e.claveEntidad).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.entidadNacimiento).first;
      _estadoCivil10.text =
          _EstructuraFamiliar10.map((e) => e.claveEstadoCivil).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.estadoCivil).first;
      _parentesco10.text =
          _EstructuraFamiliar10.map((e) => e.claveParentesco).first +
              " " +
              _EstructuraFamiliar10.map((e) => e.parentesco).first;
    }
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

  getOrdenEstado(String Estado) async{
    _Estado2 = List<EstadosModel>();
    var categories = await CategoryService().readOrdenEstado(Estado);
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstadosModel();
        categoryModel.Orden = category['Orden'];
        _Estado2.add(categoryModel);
      });
    });
  }

  getOrdenEstadoCivil(String civil) async{
    _EstadosCiviles2 = List<EstadosCiviles>();
    var categories1 = await CategoryService().readOrdenEstadoCivil(civil);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = EstadosCiviles();
        categoryModel1.Orden = category['Orden'];
        _EstadosCiviles2.add(categoryModel1);
      });
    });
  }

  getOrdenParentesco(String Parentesco)async {
    _Parentesco2 = List<Parentescos>();
    var categories2 = await CategoryService().readOrdenParentesco(Parentesco);
    categories2.forEach((category) {
      setState(() {
        var categoryModel2 = Parentescos();
        categoryModel2.Orden = category['Orden'];
        _Parentesco2.add(categoryModel2);
      });
    });
  }


  metodos(String estado, String civil, String parentesco)async{
    await getOrdenEstado(estado);
    await getOrdenEstadoCivil(civil);
    await getOrdenParentesco(parentesco);
  }




  actualizar() async {
    if (_nombre1.text.toString().isEmpty) {
      alertDialog(context, "Error: Faltan datos en el renglon 1");
    } else if (_nombre2.text.toString().isEmpty) {
      String sexo1 = _sexo1.name.toString();
      if (sexo1 == 'hombre') {
        sexo1 = '1 1 Hombre';
      } else if (sexo1 == 'mujer') {
        sexo1 = '2 2 Mujer';
      } else if (sexo1 == 'otro') {
        sexo1 = '3 3 Otro';
      }
      await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                var EstadoCivil = _estadoCivil1.text.toString(); // 'artlang'
                final estado = EstadoCivil.replaceAll("1", "")
                    .replaceAll("2", "")
                    .replaceAll("3", "")
                    .replaceAll("4", "")
                    .replaceAll("5", "")
                    .replaceAll("6", "")
                    .replaceAll("7", "")
                    .replaceAll("8", "")
                    .replaceAll("9", "")
                    .replaceAll("0", "");
                var Parentesco = _parentesco1.text.toString(); // 'artlang'
                final parentesco = Parentesco.replaceAll("1", "")
                    .replaceAll("2", "")
                    .replaceAll("3", "")
                    .replaceAll("4", "")
                    .replaceAll("5", "")
                    .replaceAll("6", "")
                    .replaceAll("7", "")
                    .replaceAll("8", "")
                    .replaceAll("9", "")
                    .replaceAll("0", "");
                var EntidadN = _entidadNacimiento1.text.toString(); // 'artlang'
                final entidadNacimiento =
                EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                    .replaceAll("4", "")
                    .replaceAll("5", "")
                    .replaceAll("6", "")
                    .replaceAll("7", "")
                    .replaceAll("8", "")
                    .replaceAll("9", "")
                    .replaceAll("0", "");

                EstructuraFamilarModel DModel = EstructuraFamilarModel(
                  folio: int.parse(widget.folio),
                  nombre: _nombre1.text.toString(),
                  primerApellido: _primerApellido1.text.toString(),
                  segundoApellido: _segundoApellido1.text.toString(),
                  claveSexo: sexo1.substring(0, 1),
                  ordenSexo: sexo1.substring(0, 1),
                  sexo: _sexo1.name.toString(),
                  fechaNacimiento: _fechaNacimiento1.text.toString(),
                  claveEntidad:
                  _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                  entidadNacimiento: entidadNacimiento.trimLeft(),
                  claveEstadoCivil:
                  _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                  estadoCivil: estado.trimLeft(),
                  claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                  parentesco: parentesco.trimLeft(),
                );
                await dbHelper
                    .upDateEstructuraFamiliar1(DModel)
                    .then((estructuraFamilar) {
                  alertDialog(context, "Se registro correctamente");
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new
                          ActualizarEstudio(widget.folio);
                      }));
                }).catchError((error) {
                  print(error);
                  alertDialog(context, "Error: No se guardaron los datos");
                });
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre3.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          String sexo1 = _sexo1.name.toString();
                          if (sexo1 == 'hombre') {
                            sexo1 = '1 1 Hombre';
                          } else if (sexo1 == 'mujer') {
                            sexo1 = '2 2 Mujer';
                          } else if (sexo1 == 'otro') {
                            sexo1 = '3 3 Otro';
                          }

                          await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                          var EstadoCivil =
                          _estadoCivil1.text.toString(); // 'artlang'
                          final estado = EstadoCivil.replaceAll("1", "")
                              .replaceAll("2", "")
                              .replaceAll("3", "")
                              .replaceAll("4", "")
                              .replaceAll("5", "")
                              .replaceAll("6", "")
                              .replaceAll("7", "")
                              .replaceAll("8", "")
                              .replaceAll("9", "")
                              .replaceAll("0", "");
                          var Parentesco =
                          _parentesco1.text.toString(); // 'artlang'
                          final parentesco = Parentesco.replaceAll("1", "")
                              .replaceAll("2", "")
                              .replaceAll("3", "")
                              .replaceAll("4", "")
                              .replaceAll("5", "")
                              .replaceAll("6", "")
                              .replaceAll("7", "")
                              .replaceAll("8", "")
                              .replaceAll("9", "")
                              .replaceAll("0", "");

                          var EntidadN =
                          _entidadNacimiento1.text.toString(); // 'artlang'
                          final entidadNacimiento =
                          EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                              .replaceAll("4", "")
                              .replaceAll("5", "")
                              .replaceAll("6", "")
                              .replaceAll("7", "")
                              .replaceAll("8", "")
                              .replaceAll("9", "")
                              .replaceAll("0", "");

                          EstructuraFamilarModel DModel =
                          EstructuraFamilarModel(
                            folio: int.parse(widget.folio),
                            nombre: _nombre1.text.toString(),
                            primerApellido: _primerApellido1.text.toString(),
                            segundoApellido: _segundoApellido1.text.toString(),
                            claveSexo: sexo1.substring(0, 1),
                            ordenSexo: sexo1.substring(0, 1),
                            sexo: _sexo1.name.toString(),
                            fechaNacimiento: _fechaNacimiento1.text.toString(),
                            claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                            entidadNacimiento: entidadNacimiento.trimLeft(),
                            claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                            estadoCivil: estado.trimLeft(),
                            claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                            parentesco: parentesco.trimLeft(),
                          );
                          await dbHelper
                              .upDateEstructuraFamiliar1(DModel)
                              .then((estructuraFamilar) {})
                              .catchError((error) {
                            print(error);
                            alertDialog(
                                context, "Error: No se guardaron los datos");
                          });

                          String sexo2 = _sexo2.name.toString();
                          if (sexo2 == 'hombre') {
                            sexo2 = '1 1 Hombre';
                          } else if (sexo2 == 'mujer') {
                            sexo2 = '2 2 Mujer';
                          } else if (sexo2 == 'otro') {
                            sexo2 = '3 3 Otro';
                          }

                          await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                          var EstadoCivil2 =
                          _estadoCivil2.text.toString(); // 'artlang'
                          final estado2 = EstadoCivil2.replaceAll("1", "")
                              .replaceAll("2", "")
                              .replaceAll("3", "")
                              .replaceAll("4", "")
                              .replaceAll("5", "")
                              .replaceAll("6", "")
                              .replaceAll("7", "")
                              .replaceAll("8", "")
                              .replaceAll("9", "")
                              .replaceAll("0", "");
                          var Parentesco2 =
                          _parentesco2.text.toString(); // 'artlang'
                          final parentesco2 = Parentesco2.replaceAll("1", "")
                              .replaceAll("2", "")
                              .replaceAll("3", "")
                              .replaceAll("4", "")
                              .replaceAll("5", "")
                              .replaceAll("6", "")
                              .replaceAll("7", "")
                              .replaceAll("8", "")
                              .replaceAll("9", "")
                              .replaceAll("0", "");

                          var EntidadN2 =
                          _entidadNacimiento2.text.toString(); // 'artlang'
                          final entidadNacimiento2 =
                          EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                              .replaceAll("4", "")
                              .replaceAll("5", "")
                              .replaceAll("6", "")
                              .replaceAll("7", "")
                              .replaceAll("8", "")
                              .replaceAll("9", "")
                              .replaceAll("0", "");

                          EstructuraFamilarModel DModel2 =
                          EstructuraFamilarModel(
                            folio: int.parse(widget.folio),
                            nombre: _nombre2.text.toString(),
                            primerApellido: _primerApellido2.text.toString(),
                            segundoApellido: _segundoApellido2.text.toString(),
                            claveSexo: sexo2.substring(0, 1),
                            ordenSexo: sexo2.substring(0, 1),
                            sexo: _sexo2.name.toString(),
                            fechaNacimiento: _fechaNacimiento2.text.toString(),
                            claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                            entidadNacimiento: entidadNacimiento2.trimLeft(),
                            claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                            estadoCivil: estado2.trimLeft(),
                            claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                            parentesco: parentesco2.trimLeft(),
                          );
                          await dbHelper
                              .upDateEstructuraFamiliar2(DModel2)
                              .then((estructuraFamilar) {
                            alertDialog(context, "Se registro correctamente");
                            Navigator.of(context).push(MaterialPageRoute<Null>(
                                builder: (BuildContext context) {
                                  return new ActualizarEstudio(
                                      widget.folio);
                                }));
                          }).catchError((error) {
                            print(error);
                            alertDialog(
                                context, "Error: No se guardaron los datos");
                          });
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre4.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    String sexo1 = _sexo1.name.toString();
                                    if (sexo1 == 'hombre') {
                                      sexo1 = '1 1 Hombre';
                                    } else if (sexo1 == 'mujer') {
                                      sexo1 = '2 2 Mujer';
                                    } else if (sexo1 == 'otro') {
                                      sexo1 = '3 3 Otro';
                                    }
                                    await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                    var EstadoCivil =
                                    _estadoCivil1.text.toString(); // 'artlang'
                                    final estado = EstadoCivil.replaceAll("1", "")
                                        .replaceAll("2", "")
                                        .replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");
                                    var Parentesco =
                                    _parentesco1.text.toString(); // 'artlang'
                                    final parentesco = Parentesco.replaceAll("1", "")
                                        .replaceAll("2", "")
                                        .replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");

                                    var EntidadN =
                                    _entidadNacimiento1.text.toString(); // 'artlang'
                                    final entidadNacimiento =
                                    EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");

                                    EstructuraFamilarModel DModel =
                                    EstructuraFamilarModel(
                                      folio: int.parse(widget.folio),
                                      nombre: _nombre1.text.toString(),
                                      primerApellido: _primerApellido1.text.toString(),
                                      segundoApellido: _segundoApellido1.text.toString(),
                                      claveSexo: sexo1.substring(0, 1),
                                      ordenSexo: sexo1.substring(0, 1),
                                      sexo: _sexo1.name.toString(),
                                      fechaNacimiento: _fechaNacimiento1.text.toString(),
                                      claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                      entidadNacimiento: entidadNacimiento.trimLeft(),
                                      claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                      ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                      estadoCivil: estado.trimLeft(),
                                      claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                      ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                      parentesco: parentesco.trimLeft(),
                                    );
                                    await dbHelper
                                        .upDateEstructuraFamiliar1(DModel)
                                        .then((estructuraFamilar) {})
                                        .catchError((error) {
                                      print(error);
                                      alertDialog(
                                          context, "Error: No se guardaron los datos");
                                    });

                                    String sexo2 = _sexo2.name.toString();
                                    if (sexo2 == 'hombre') {
                                      sexo2 = '1 1 Hombre';
                                    } else if (sexo2 == 'mujer') {
                                      sexo2 = '2 2 Mujer';
                                    } else if (sexo2 == 'otro') {
                                      sexo2 = '3 3 Otro';
                                    }

                                    await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                    var EstadoCivil2 =
                                    _estadoCivil2.text.toString(); // 'artlang'
                                    final estado2 = EstadoCivil2.replaceAll("1", "")
                                        .replaceAll("2", "")
                                        .replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");
                                    var Parentesco2 =
                                    _parentesco2.text.toString(); // 'artlang'
                                    final parentesco2 = Parentesco2.replaceAll("1", "")
                                        .replaceAll("2", "")
                                        .replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");

                                    var EntidadN2 =
                                    _entidadNacimiento2.text.toString(); // 'artlang'
                                    final entidadNacimiento2 =
                                    EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");

                                    EstructuraFamilarModel DModel2 =
                                    EstructuraFamilarModel(
                                      folio: int.parse(widget.folio),
                                      nombre: _nombre2.text.toString(),
                                      primerApellido: _primerApellido2.text.toString(),
                                      segundoApellido: _segundoApellido2.text.toString(),
                                      claveSexo: sexo2.substring(0, 1),
                                      ordenSexo: sexo2.substring(0, 1),
                                      sexo: _sexo2.name.toString(),
                                      fechaNacimiento: _fechaNacimiento2.text.toString(),
                                      claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                      entidadNacimiento: entidadNacimiento2.trimLeft(),
                                      claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                      ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                      estadoCivil: estado2.trimLeft(),
                                      claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                      ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                      parentesco: parentesco2.trimLeft(),
                                    );
                                    await dbHelper
                                        .upDateEstructuraFamiliar2(DModel2)
                                        .then((estructuraFamilar) {
                                      alertDialog(
                                          context, "Se registro correctamente");
                                    }).catchError((error) {
                                      print(error);
                                      alertDialog(context,
                                          "Error: No se guardaron los datos");
                                    });

                                    String sexo3 = _sexo3.name.toString();
                                    if (sexo3 == 'hombre') {
                                      sexo3 = '1 1 Hombre';
                                    } else if (sexo3 == 'mujer') {
                                      sexo3 = '2 2 Mujer';
                                    } else if (sexo3 == 'otro') {
                                      sexo3 = '3 3 Otro';
                                    }

                                    await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                    var EstadoCivil3 = _estadoCivil3.text
                                        .toString(); // 'artlang'
                                    final estado3 =
                                    EstadoCivil3.replaceAll("1", "")
                                        .replaceAll("2", "")
                                        .replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");
                                    var Parentesco3 = _parentesco3.text
                                        .toString(); // 'artlang'
                                    final parentesco3 =
                                    Parentesco3.replaceAll("1", "")
                                        .replaceAll("2", "")
                                        .replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");

                                    var EntidadN3 = _entidadNacimiento3.text
                                        .toString(); // 'artlang'
                                    final entidadNacimiento3 =
                                    EntidadN3.replaceAll("1", "")
                                        .replaceAll("2", "").replaceAll("3", "")
                                        .replaceAll("4", "")
                                        .replaceAll("5", "")
                                        .replaceAll("6", "")
                                        .replaceAll("7", "")
                                        .replaceAll("8", "")
                                        .replaceAll("9", "")
                                        .replaceAll("0", "");

                                    EstructuraFamilarModel DModel3 =
                                    EstructuraFamilarModel(
                                      folio: int.parse(widget.folio),
                                      nombre: _nombre3.text.toString(),
                                      primerApellido:
                                      _primerApellido3.text.toString(),
                                      segundoApellido:
                                      _segundoApellido3.text.toString(),
                                      claveSexo: sexo3.substring(0, 1),
                                      ordenSexo: sexo3.substring(0, 1),
                                      sexo: _sexo3.name.toString(),
                                      fechaNacimiento:
                                      _fechaNacimiento3.text.toString(),
                                      claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                      entidadNacimiento: entidadNacimiento3.trimLeft(),
                                      claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                      ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                      estadoCivil: estado3.trimLeft(),
                                      claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                      ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                      parentesco: parentesco3.trimLeft(),
                                    );
                                    await dbHelper
                                        .upDateEstructuraFamiliar3(DModel3)
                                        .then((estructuraFamilar) {
                                      alertDialog(
                                          context, "Se registro correctamente");
                                      Navigator.of(context).push(
                                          MaterialPageRoute<Null>(
                                              builder: (BuildContext context) {
                                                return new ActualizarEstudio(
                                                    widget.folio);
                                              }));
                                    }).catchError((error) {
                                      print(error);
                                      alertDialog(context,
                                          "Error: No se guardaron los datos");
                                    });
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre5.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              String sexo1 =
                                              _sexo1.name.toString();
                                              if (sexo1 == 'hombre') {
                                                sexo1 = '1 1 Hombre';
                                              } else if (sexo1 == 'mujer') {
                                                sexo1 = '2 2 Mujer';
                                              } else if (sexo1 == 'otro') {
                                                sexo1 = '3 3 Otro';
                                              }
                                              await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                              var EstadoCivil =
                                              _estadoCivil1.text.toString(); // 'artlang'
                                              final estado = EstadoCivil.replaceAll("1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");
                                              var Parentesco =
                                              _parentesco1.text.toString(); // 'artlang'
                                              final parentesco = Parentesco.replaceAll("1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              var EntidadN =
                                              _entidadNacimiento1.text.toString(); // 'artlang'
                                              final entidadNacimiento =
                                              EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              EstructuraFamilarModel DModel =
                                              EstructuraFamilarModel(
                                                folio: int.parse(widget.folio),
                                                nombre: _nombre1.text.toString(),
                                                primerApellido: _primerApellido1.text.toString(),
                                                segundoApellido: _segundoApellido1.text.toString(),
                                                claveSexo: sexo1.substring(0, 1),
                                                ordenSexo: sexo1.substring(0, 1),
                                                sexo: _sexo1.name.toString(),
                                                fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                entidadNacimiento: entidadNacimiento.trimLeft(),
                                                claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                estadoCivil: estado.trimLeft(),
                                                claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                parentesco: parentesco.trimLeft(),
                                              );
                                              await dbHelper
                                                  .upDateEstructuraFamiliar1(DModel)
                                                  .then((estructuraFamilar) {})
                                                  .catchError((error) {
                                                print(error);
                                                alertDialog(
                                                    context, "Error: No se guardaron los datos");
                                              });

                                              String sexo2 = _sexo2.name.toString();
                                              if (sexo2 == 'hombre') {
                                                sexo2 = '1 1 Hombre';
                                              } else if (sexo2 == 'mujer') {
                                                sexo2 = '2 2 Mujer';
                                              } else if (sexo2 == 'otro') {
                                                sexo2 = '3 3 Otro';
                                              }

                                              await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                              var EstadoCivil2 =
                                              _estadoCivil2.text.toString(); // 'artlang'
                                              final estado2 = EstadoCivil2.replaceAll("1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");
                                              var Parentesco2 =
                                              _parentesco2.text.toString(); // 'artlang'
                                              final parentesco2 = Parentesco2.replaceAll("1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              var EntidadN2 =
                                              _entidadNacimiento2.text.toString(); // 'artlang'
                                              final entidadNacimiento2 =
                                              EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              EstructuraFamilarModel DModel2 =
                                              EstructuraFamilarModel(
                                                folio: int.parse(widget.folio),
                                                nombre: _nombre2.text.toString(),
                                                primerApellido: _primerApellido2.text.toString(),
                                                segundoApellido: _segundoApellido2.text.toString(),
                                                claveSexo: sexo2.substring(0, 1),
                                                ordenSexo: sexo2.substring(0, 1),
                                                sexo: _sexo2.name.toString(),
                                                fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                estadoCivil: estado2.trimLeft(),
                                                claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                parentesco: parentesco2.trimLeft(),
                                              );
                                              await dbHelper
                                                  .upDateEstructuraFamiliar2(DModel2)
                                                  .then((estructuraFamilar) {
                                                alertDialog(
                                                    context, "Se registro correctamente");
                                              }).catchError((error) {
                                                print(error);
                                                alertDialog(context,
                                                    "Error: No se guardaron los datos");
                                              });

                                              String sexo3 = _sexo3.name.toString();
                                              if (sexo3 == 'hombre') {
                                                sexo3 = '1 1 Hombre';
                                              } else if (sexo3 == 'mujer') {
                                                sexo3 = '2 2 Mujer';
                                              } else if (sexo3 == 'otro') {
                                                sexo3 = '3 3 Otro';
                                              }

                                              await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                              var EstadoCivil3 = _estadoCivil3.text
                                                  .toString(); // 'artlang'
                                              final estado3 =
                                              EstadoCivil3.replaceAll("1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");
                                              var Parentesco3 = _parentesco3.text
                                                  .toString(); // 'artlang'
                                              final parentesco3 =
                                              Parentesco3.replaceAll("1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              var EntidadN3 = _entidadNacimiento3.text
                                                  .toString(); // 'artlang'
                                              final entidadNacimiento3 =
                                              EntidadN3.replaceAll("1", "")
                                                  .replaceAll("2", "").replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              EstructuraFamilarModel DModel3 =
                                              EstructuraFamilarModel(
                                                folio: int.parse(widget.folio),
                                                nombre: _nombre3.text.toString(),
                                                primerApellido:
                                                _primerApellido3.text.toString(),
                                                segundoApellido:
                                                _segundoApellido3.text.toString(),
                                                claveSexo: sexo3.substring(0, 1),
                                                ordenSexo: sexo3.substring(0, 1),
                                                sexo: _sexo3.name.toString(),
                                                fechaNacimiento:
                                                _fechaNacimiento3.text.toString(),
                                                claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                estadoCivil: estado3.trimLeft(),
                                                claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                parentesco: parentesco3.trimLeft(),
                                              );
                                              await dbHelper
                                                  .upDateEstructuraFamiliar3(
                                                  DModel3)
                                                  .then((estructuraFamilar) {
                                                alertDialog(context,
                                                    "Se registro correctamente");
                                              }).catchError((error) {
                                                print(error);
                                                alertDialog(context,
                                                    "Error: No se guardaron los datos");
                                              });

                                              String sexo4 =
                                              _sexo4.name.toString();
                                              if (sexo4 == 'hombre') {
                                                sexo4 = '1 1 Hombre';
                                              } else if (sexo4 == 'mujer') {
                                                sexo4 = '2 2 Mujer';
                                              } else if (sexo4 == 'otro') {
                                                sexo4 = '3 3 Otro';
                                              }

                                              await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                              var EstadoCivil4 = _estadoCivil4
                                                  .text
                                                  .toString(); // 'artlang'
                                              final estado4 =
                                              EstadoCivil4.replaceAll(
                                                  "1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");
                                              var Parentesco4 = _parentesco4
                                                  .text
                                                  .toString(); // 'artlang'
                                              final parentesco4 =
                                              Parentesco4.replaceAll(
                                                  "1", "")
                                                  .replaceAll("2", "")
                                                  .replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              var EntidadN4 =
                                              _entidadNacimiento4.text
                                                  .toString(); // 'artlang'
                                              final entidadNacimiento4 =
                                              EntidadN4.replaceAll("1", "")
                                                  .replaceAll("2", "").replaceAll("3", "")
                                                  .replaceAll("4", "")
                                                  .replaceAll("5", "")
                                                  .replaceAll("6", "")
                                                  .replaceAll("7", "")
                                                  .replaceAll("8", "")
                                                  .replaceAll("9", "")
                                                  .replaceAll("0", "");

                                              EstructuraFamilarModel DModel4 =
                                              EstructuraFamilarModel(
                                                folio: int.parse(widget.folio),
                                                nombre:
                                                _nombre4.text.toString(),
                                                primerApellido: _primerApellido4
                                                    .text
                                                    .toString(),
                                                segundoApellido:
                                                _segundoApellido4.text
                                                    .toString(),
                                                claveSexo:
                                                sexo4.substring(0, 1),
                                                ordenSexo:
                                                sexo4.substring(0, 1),
                                                sexo: _sexo4.name.toString(),
                                                fechaNacimiento:
                                                _fechaNacimiento4.text
                                                    .toString(),
                                                claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                estadoCivil: estado4.trimLeft(),
                                                claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                parentesco:
                                                parentesco4.trimLeft(),
                                              );
                                              await dbHelper
                                                  .upDateEstructuraFamiliar4(
                                                  DModel4)
                                                  .then((estructuraFamilar) {
                                                alertDialog(context,
                                                    "Se registro correctamente");
                                                Navigator.of(context).push(
                                                    MaterialPageRoute<Null>(
                                                        builder: (BuildContext
                                                        context) {
                                                          return new ActualizarEstudio(
                                                              widget.folio);
                                                        }));
                                              }).catchError((error) {
                                                print(error);
                                                alertDialog(context,
                                                    "Error: No se guardaron los datos");
                                              });
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre6.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              if (!_fechaNacimiento5
                                                  .text.isEmpty) {
                                                if (_fechaNacimiento5
                                                    .text.length ==
                                                    10) {
                                                  if (int.parse(
                                                      _fechaNacimiento5
                                                          .text
                                                          .substring(
                                                          0, 2)) >=
                                                      1 &&
                                                      int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              0, 2)) <=
                                                          31) {
                                                    if (int.parse(
                                                        _fechaNacimiento5
                                                            .text
                                                            .substring(
                                                            3,
                                                            5)) >=
                                                        1 &&
                                                        int.parse(
                                                            _fechaNacimiento5
                                                                .text
                                                                .substring(
                                                                3,
                                                                5)) <=
                                                            12) {
                                                      if (int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              6, 10)) <=
                                                          2022) {
                                                        String sexo1 = _sexo1
                                                            .name
                                                            .toString();
                                                        if (sexo1 == 'hombre') {
                                                          sexo1 = '1 1 Hombre';
                                                        } else if (sexo1 ==
                                                            'mujer') {
                                                          sexo1 = '2 2 Mujer';
                                                        } else if (sexo1 ==
                                                            'otro') {
                                                          sexo1 = '3 3 Otro';
                                                        }
                                                        await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                                        var EstadoCivil =
                                                        _estadoCivil1.text.toString(); // 'artlang'
                                                        final estado = EstadoCivil.replaceAll("1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");
                                                        var Parentesco =
                                                        _parentesco1.text.toString(); // 'artlang'
                                                        final parentesco = Parentesco.replaceAll("1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        var EntidadN =
                                                        _entidadNacimiento1.text.toString(); // 'artlang'
                                                        final entidadNacimiento =
                                                        EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        EstructuraFamilarModel DModel =
                                                        EstructuraFamilarModel(
                                                          folio: int.parse(widget.folio),
                                                          nombre: _nombre1.text.toString(),
                                                          primerApellido: _primerApellido1.text.toString(),
                                                          segundoApellido: _segundoApellido1.text.toString(),
                                                          claveSexo: sexo1.substring(0, 1),
                                                          ordenSexo: sexo1.substring(0, 1),
                                                          sexo: _sexo1.name.toString(),
                                                          fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                          claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                          entidadNacimiento: entidadNacimiento.trimLeft(),
                                                          claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                          ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                          estadoCivil: estado.trimLeft(),
                                                          claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                          ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                          parentesco: parentesco.trimLeft(),
                                                        );
                                                        await dbHelper
                                                            .upDateEstructuraFamiliar1(DModel)
                                                            .then((estructuraFamilar) {})
                                                            .catchError((error) {
                                                          print(error);
                                                          alertDialog(
                                                              context, "Error: No se guardaron los datos");
                                                        });

                                                        String sexo2 = _sexo2.name.toString();
                                                        if (sexo2 == 'hombre') {
                                                          sexo2 = '1 1 Hombre';
                                                        } else if (sexo2 == 'mujer') {
                                                          sexo2 = '2 2 Mujer';
                                                        } else if (sexo2 == 'otro') {
                                                          sexo2 = '3 3 Otro';
                                                        }

                                                        await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                                        var EstadoCivil2 =
                                                        _estadoCivil2.text.toString(); // 'artlang'
                                                        final estado2 = EstadoCivil2.replaceAll("1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");
                                                        var Parentesco2 =
                                                        _parentesco2.text.toString(); // 'artlang'
                                                        final parentesco2 = Parentesco2.replaceAll("1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        var EntidadN2 =
                                                        _entidadNacimiento2.text.toString(); // 'artlang'
                                                        final entidadNacimiento2 =
                                                        EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        EstructuraFamilarModel DModel2 =
                                                        EstructuraFamilarModel(
                                                          folio: int.parse(widget.folio),
                                                          nombre: _nombre2.text.toString(),
                                                          primerApellido: _primerApellido2.text.toString(),
                                                          segundoApellido: _segundoApellido2.text.toString(),
                                                          claveSexo: sexo2.substring(0, 1),
                                                          ordenSexo: sexo2.substring(0, 1),
                                                          sexo: _sexo2.name.toString(),
                                                          fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                          claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                          entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                          claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                          ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                          estadoCivil: estado2.trimLeft(),
                                                          claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                          ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                          parentesco: parentesco2.trimLeft(),
                                                        );
                                                        await dbHelper
                                                            .upDateEstructuraFamiliar2(DModel2)
                                                            .then((estructuraFamilar) {
                                                          alertDialog(
                                                              context, "Se registro correctamente");
                                                        }).catchError((error) {
                                                          print(error);
                                                          alertDialog(context,
                                                              "Error: No se guardaron los datos");
                                                        });

                                                        String sexo3 = _sexo3.name.toString();
                                                        if (sexo3 == 'hombre') {
                                                          sexo3 = '1 1 Hombre';
                                                        } else if (sexo3 == 'mujer') {
                                                          sexo3 = '2 2 Mujer';
                                                        } else if (sexo3 == 'otro') {
                                                          sexo3 = '3 3 Otro';
                                                        }

                                                        await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                                        var EstadoCivil3 = _estadoCivil3.text
                                                            .toString(); // 'artlang'
                                                        final estado3 =
                                                        EstadoCivil3.replaceAll("1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");
                                                        var Parentesco3 = _parentesco3.text
                                                            .toString(); // 'artlang'
                                                        final parentesco3 =
                                                        Parentesco3.replaceAll("1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        var EntidadN3 = _entidadNacimiento3.text
                                                            .toString(); // 'artlang'
                                                        final entidadNacimiento3 =
                                                        EntidadN3.replaceAll("1", "")
                                                            .replaceAll("2", "").replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        EstructuraFamilarModel DModel3 =
                                                        EstructuraFamilarModel(
                                                          folio: int.parse(widget.folio),
                                                          nombre: _nombre3.text.toString(),
                                                          primerApellido:
                                                          _primerApellido3.text.toString(),
                                                          segundoApellido:
                                                          _segundoApellido3.text.toString(),
                                                          claveSexo: sexo3.substring(0, 1),
                                                          ordenSexo: sexo3.substring(0, 1),
                                                          sexo: _sexo3.name.toString(),
                                                          fechaNacimiento:
                                                          _fechaNacimiento3.text.toString(),
                                                          claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                          entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                          claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                          ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                          estadoCivil: estado3.trimLeft(),
                                                          claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                          ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                          parentesco: parentesco3.trimLeft(),
                                                        );
                                                        await dbHelper
                                                            .upDateEstructuraFamiliar3(
                                                            DModel3)
                                                            .then((estructuraFamilar) {
                                                          alertDialog(context,
                                                              "Se registro correctamente");
                                                        }).catchError((error) {
                                                          print(error);
                                                          alertDialog(context,
                                                              "Error: No se guardaron los datos");
                                                        });

                                                        String sexo4 =
                                                        _sexo4.name.toString();
                                                        if (sexo4 == 'hombre') {
                                                          sexo4 = '1 1 Hombre';
                                                        } else if (sexo4 == 'mujer') {
                                                          sexo4 = '2 2 Mujer';
                                                        } else if (sexo4 == 'otro') {
                                                          sexo4 = '3 3 Otro';
                                                        }

                                                        await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                                        var EstadoCivil4 = _estadoCivil4
                                                            .text
                                                            .toString(); // 'artlang'
                                                        final estado4 =
                                                        EstadoCivil4.replaceAll(
                                                            "1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");
                                                        var Parentesco4 = _parentesco4
                                                            .text
                                                            .toString(); // 'artlang'
                                                        final parentesco4 =
                                                        Parentesco4.replaceAll(
                                                            "1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        var EntidadN4 =
                                                        _entidadNacimiento4.text
                                                            .toString(); // 'artlang'
                                                        final entidadNacimiento4 =
                                                        EntidadN4.replaceAll("1", "")
                                                            .replaceAll("2", "").replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        EstructuraFamilarModel DModel4 =
                                                        EstructuraFamilarModel(
                                                          folio: int.parse(widget.folio),
                                                          nombre:
                                                          _nombre4.text.toString(),
                                                          primerApellido: _primerApellido4
                                                              .text
                                                              .toString(),
                                                          segundoApellido:
                                                          _segundoApellido4.text
                                                              .toString(),
                                                          claveSexo:
                                                          sexo4.substring(0, 1),
                                                          ordenSexo:
                                                          sexo4.substring(0, 1),
                                                          sexo: _sexo4.name.toString(),
                                                          fechaNacimiento:
                                                          _fechaNacimiento4.text
                                                              .toString(),
                                                          claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                          entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                          claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                          ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                          estadoCivil: estado4.trimLeft(),
                                                          claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                          ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                          parentesco:
                                                          parentesco4.trimLeft(),
                                                        );
                                                        await dbHelper
                                                            .upDateEstructuraFamiliar4(
                                                            DModel4)
                                                            .then(
                                                                (estructuraFamilar) {
                                                              alertDialog(context,
                                                                  "Se registro correctamente");
                                                            }).catchError((error) {
                                                          print(error);
                                                          alertDialog(context,
                                                              "Error: No se guardaron los datos");
                                                        });

                                                        String sexo5 = _sexo5
                                                            .name
                                                            .toString();
                                                        if (sexo5 == 'hombre') {
                                                          sexo5 = '1 1 Hombre';
                                                        } else if (sexo5 ==
                                                            'mujer') {
                                                          sexo5 = '2 2 Mujer';
                                                        } else if (sexo5 ==
                                                            'otro') {
                                                          sexo5 = '3 3 Otro';
                                                        }

                                                        await metodos(_entidadNacimiento5.text,_estadoCivil5.text,_parentesco5.text);


                                                        var EstadoCivil5 =
                                                        _estadoCivil5.text
                                                            .toString(); // 'artlang'
                                                        final estado5 = EstadoCivil5
                                                            .replaceAll(
                                                            "1", "")
                                                            .replaceAll("2", "")
                                                            .replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll(
                                                            "0", "");
                                                        var Parentesco5 =
                                                        _parentesco5.text
                                                            .toString(); // 'artlang'
                                                        final parentesco5 =
                                                        Parentesco5
                                                            .replaceAll(
                                                            "1", "")
                                                            .replaceAll(
                                                            "2", "")
                                                            .replaceAll(
                                                            "3", "")
                                                            .replaceAll(
                                                            "4", "")
                                                            .replaceAll(
                                                            "5", "")
                                                            .replaceAll(
                                                            "6", "")
                                                            .replaceAll(
                                                            "7", "")
                                                            .replaceAll(
                                                            "8", "")
                                                            .replaceAll(
                                                            "9", "")
                                                            .replaceAll(
                                                            "0", "");

                                                        var EntidadN5 =
                                                        _entidadNacimiento5
                                                            .text
                                                            .toString(); // 'artlang'
                                                        final entidadNacimiento5 =
                                                        EntidadN5
                                                            .replaceAll(
                                                            "1", "")
                                                            .replaceAll(
                                                            "2", "").replaceAll("3", "")
                                                            .replaceAll("4", "")
                                                            .replaceAll("5", "")
                                                            .replaceAll("6", "")
                                                            .replaceAll("7", "")
                                                            .replaceAll("8", "")
                                                            .replaceAll("9", "")
                                                            .replaceAll("0", "");

                                                        EstructuraFamilarModel
                                                        DModel5 =
                                                        EstructuraFamilarModel(
                                                          folio: int.parse(
                                                              widget.folio),
                                                          nombre: _nombre5.text
                                                              .toString(),
                                                          primerApellido:
                                                          _primerApellido5
                                                              .text
                                                              .toString(),
                                                          segundoApellido:
                                                          _segundoApellido5
                                                              .text
                                                              .toString(),
                                                          claveSexo: sexo5
                                                              .substring(0, 1),
                                                          ordenSexo: sexo5
                                                              .substring(0, 1),
                                                          sexo: _sexo5.name
                                                              .toString(),
                                                          fechaNacimiento:
                                                          _fechaNacimiento5
                                                              .text
                                                              .toString(),
                                                          claveEntidad: _entidadNacimiento5.text.toString().substring(0, 2).trimRight(),
                                                          entidadNacimiento: entidadNacimiento5.trimLeft(),
                                                          claveEstadoCivil: _estadoCivil5.text.toString().substring(0, 2).trimRight(),
                                                          ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                          estadoCivil: estado5.trimLeft(),
                                                          claveParentesco: _parentesco5.text.toString().substring(0, 2).trimRight(),
                                                          ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                          parentesco:
                                                          parentesco5
                                                              .trimLeft(),
                                                        );
                                                        await dbHelper
                                                            .upDateEstructuraFamiliar5(
                                                            DModel5)
                                                            .then(
                                                                (estructuraFamilar) {
                                                              alertDialog(context,
                                                                  "Se registro correctamente");
                                                              Navigator.of(context).push(
                                                                  MaterialPageRoute<
                                                                      Null>(
                                                                      builder:
                                                                          (BuildContext
                                                                      context) {
                                                                        return new ActualizarEstudio(
                                                                            widget.folio);
                                                                      }));
                                                            }).catchError((error) {
                                                          print(error);
                                                          alertDialog(context,
                                                              "Error: No se guardaron los datos");
                                                        });
                                                      } else {
                                                        alertDialog(context,
                                                            "El a??o en la fecha no corresponde");
                                                      }
                                                    } else {
                                                      alertDialog(context,
                                                          "El mes seleccionado en la fecha no es correcto");
                                                    }
                                                  } else {
                                                    alertDialog(context,
                                                        "Los dias seleccionados en la fecha no son correcotos");
                                                  }
                                                } else {
                                                  alertDialog(context,
                                                      "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                }
                                              } else {
                                                alertDialog(context,
                                                    "La fecha se encuentra basia");
                                              }
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre7.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              if (!_fechaNacimiento5
                                                  .text.isEmpty) {
                                                if (_fechaNacimiento5
                                                    .text.length ==
                                                    10) {
                                                  if (int.parse(
                                                      _fechaNacimiento5
                                                          .text
                                                          .substring(
                                                          0, 2)) >=
                                                      1 &&
                                                      int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              0, 2)) <=
                                                          31) {
                                                    if (int.parse(
                                                        _fechaNacimiento5
                                                            .text
                                                            .substring(
                                                            3,
                                                            5)) >=
                                                        1 &&
                                                        int.parse(
                                                            _fechaNacimiento5
                                                                .text
                                                                .substring(
                                                                3,
                                                                5)) <=
                                                            12) {
                                                      if (int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              6, 10)) <=
                                                          2022) {
                                                        if (!_fechaNacimiento6
                                                            .text.isEmpty) {
                                                          if (_fechaNacimiento6
                                                              .text
                                                              .length ==
                                                              10) {
                                                            if (int.parse(_fechaNacimiento6
                                                                .text
                                                                .substring(
                                                                0,
                                                                2)) >=
                                                                1 &&
                                                                int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    0,
                                                                    2)) <=
                                                                    31) {
                                                              if (int.parse(_fechaNacimiento6
                                                                  .text
                                                                  .substring(
                                                                  3,
                                                                  5)) >=
                                                                  1 &&
                                                                  int.parse(_fechaNacimiento6
                                                                      .text
                                                                      .substring(
                                                                      3,
                                                                      5)) <=
                                                                      12) {
                                                                if (int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    6,
                                                                    10)) <=
                                                                    2022) {
                                                                  String sexo1 =
                                                                  _sexo1
                                                                      .name
                                                                      .toString();
                                                                  if (sexo1 ==
                                                                      'hombre') {
                                                                    sexo1 =
                                                                    '1 1 Hombre';
                                                                  } else if (sexo1 ==
                                                                      'mujer') {
                                                                    sexo1 =
                                                                    '2 2 Mujer';
                                                                  } else if (sexo1 ==
                                                                      'otro') {
                                                                    sexo1 =
                                                                    '3 3 Otro';
                                                                  }
                                                                  await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                                                  var EstadoCivil =
                                                                  _estadoCivil1.text.toString(); // 'artlang'
                                                                  final estado = EstadoCivil.replaceAll("1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");
                                                                  var Parentesco =
                                                                  _parentesco1.text.toString(); // 'artlang'
                                                                  final parentesco = Parentesco.replaceAll("1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  var EntidadN =
                                                                  _entidadNacimiento1.text.toString(); // 'artlang'
                                                                  final entidadNacimiento =
                                                                  EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  EstructuraFamilarModel DModel =
                                                                  EstructuraFamilarModel(
                                                                    folio: int.parse(widget.folio),
                                                                    nombre: _nombre1.text.toString(),
                                                                    primerApellido: _primerApellido1.text.toString(),
                                                                    segundoApellido: _segundoApellido1.text.toString(),
                                                                    claveSexo: sexo1.substring(0, 1),
                                                                    ordenSexo: sexo1.substring(0, 1),
                                                                    sexo: _sexo1.name.toString(),
                                                                    fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                                    claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                                    entidadNacimiento: entidadNacimiento.trimLeft(),
                                                                    claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                                    ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                    estadoCivil: estado.trimLeft(),
                                                                    claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                                    ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                    parentesco: parentesco.trimLeft(),
                                                                  );
                                                                  await dbHelper
                                                                      .upDateEstructuraFamiliar1(DModel)
                                                                      .then((estructuraFamilar) {})
                                                                      .catchError((error) {
                                                                    print(error);
                                                                    alertDialog(
                                                                        context, "Error: No se guardaron los datos");
                                                                  });

                                                                  String sexo2 = _sexo2.name.toString();
                                                                  if (sexo2 == 'hombre') {
                                                                    sexo2 = '1 1 Hombre';
                                                                  } else if (sexo2 == 'mujer') {
                                                                    sexo2 = '2 2 Mujer';
                                                                  } else if (sexo2 == 'otro') {
                                                                    sexo2 = '3 3 Otro';
                                                                  }

                                                                  await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                                                  var EstadoCivil2 =
                                                                  _estadoCivil2.text.toString(); // 'artlang'
                                                                  final estado2 = EstadoCivil2.replaceAll("1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");
                                                                  var Parentesco2 =
                                                                  _parentesco2.text.toString(); // 'artlang'
                                                                  final parentesco2 = Parentesco2.replaceAll("1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  var EntidadN2 =
                                                                  _entidadNacimiento2.text.toString(); // 'artlang'
                                                                  final entidadNacimiento2 =
                                                                  EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  EstructuraFamilarModel DModel2 =
                                                                  EstructuraFamilarModel(
                                                                    folio: int.parse(widget.folio),
                                                                    nombre: _nombre2.text.toString(),
                                                                    primerApellido: _primerApellido2.text.toString(),
                                                                    segundoApellido: _segundoApellido2.text.toString(),
                                                                    claveSexo: sexo2.substring(0, 1),
                                                                    ordenSexo: sexo2.substring(0, 1),
                                                                    sexo: _sexo2.name.toString(),
                                                                    fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                                    claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                                    entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                                    claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                                    ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                    estadoCivil: estado2.trimLeft(),
                                                                    claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                                    ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                    parentesco: parentesco2.trimLeft(),
                                                                  );
                                                                  await dbHelper
                                                                      .upDateEstructuraFamiliar2(DModel2)
                                                                      .then((estructuraFamilar) {
                                                                    alertDialog(
                                                                        context, "Se registro correctamente");
                                                                  }).catchError((error) {
                                                                    print(error);
                                                                    alertDialog(context,
                                                                        "Error: No se guardaron los datos");
                                                                  });

                                                                  String sexo3 = _sexo3.name.toString();
                                                                  if (sexo3 == 'hombre') {
                                                                    sexo3 = '1 1 Hombre';
                                                                  } else if (sexo3 == 'mujer') {
                                                                    sexo3 = '2 2 Mujer';
                                                                  } else if (sexo3 == 'otro') {
                                                                    sexo3 = '3 3 Otro';
                                                                  }

                                                                  await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                                                  var EstadoCivil3 = _estadoCivil3.text
                                                                      .toString(); // 'artlang'
                                                                  final estado3 =
                                                                  EstadoCivil3.replaceAll("1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");
                                                                  var Parentesco3 = _parentesco3.text
                                                                      .toString(); // 'artlang'
                                                                  final parentesco3 =
                                                                  Parentesco3.replaceAll("1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  var EntidadN3 = _entidadNacimiento3.text
                                                                      .toString(); // 'artlang'
                                                                  final entidadNacimiento3 =
                                                                  EntidadN3.replaceAll("1", "")
                                                                      .replaceAll("2", "").replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  EstructuraFamilarModel DModel3 =
                                                                  EstructuraFamilarModel(
                                                                    folio: int.parse(widget.folio),
                                                                    nombre: _nombre3.text.toString(),
                                                                    primerApellido:
                                                                    _primerApellido3.text.toString(),
                                                                    segundoApellido:
                                                                    _segundoApellido3.text.toString(),
                                                                    claveSexo: sexo3.substring(0, 1),
                                                                    ordenSexo: sexo3.substring(0, 1),
                                                                    sexo: _sexo3.name.toString(),
                                                                    fechaNacimiento:
                                                                    _fechaNacimiento3.text.toString(),
                                                                    claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                                    entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                                    claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                                    ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                    estadoCivil: estado3.trimLeft(),
                                                                    claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                                    ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                    parentesco: parentesco3.trimLeft(),
                                                                  );
                                                                  await dbHelper
                                                                      .upDateEstructuraFamiliar3(
                                                                      DModel3)
                                                                      .then((estructuraFamilar) {
                                                                    alertDialog(context,
                                                                        "Se registro correctamente");
                                                                  }).catchError((error) {
                                                                    print(error);
                                                                    alertDialog(context,
                                                                        "Error: No se guardaron los datos");
                                                                  });

                                                                  String sexo4 =
                                                                  _sexo4.name.toString();
                                                                  if (sexo4 == 'hombre') {
                                                                    sexo4 = '1 1 Hombre';
                                                                  } else if (sexo4 == 'mujer') {
                                                                    sexo4 = '2 2 Mujer';
                                                                  } else if (sexo4 == 'otro') {
                                                                    sexo4 = '3 3 Otro';
                                                                  }

                                                                  await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                                                  var EstadoCivil4 = _estadoCivil4
                                                                      .text
                                                                      .toString(); // 'artlang'
                                                                  final estado4 =
                                                                  EstadoCivil4.replaceAll(
                                                                      "1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");
                                                                  var Parentesco4 = _parentesco4
                                                                      .text
                                                                      .toString(); // 'artlang'
                                                                  final parentesco4 =
                                                                  Parentesco4.replaceAll(
                                                                      "1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  var EntidadN4 =
                                                                  _entidadNacimiento4.text
                                                                      .toString(); // 'artlang'
                                                                  final entidadNacimiento4 =
                                                                  EntidadN4.replaceAll("1", "")
                                                                      .replaceAll("2", "").replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  EstructuraFamilarModel DModel4 =
                                                                  EstructuraFamilarModel(
                                                                    folio: int.parse(widget.folio),
                                                                    nombre:
                                                                    _nombre4.text.toString(),
                                                                    primerApellido: _primerApellido4
                                                                        .text
                                                                        .toString(),
                                                                    segundoApellido:
                                                                    _segundoApellido4.text
                                                                        .toString(),
                                                                    claveSexo:
                                                                    sexo4.substring(0, 1),
                                                                    ordenSexo:
                                                                    sexo4.substring(0, 1),
                                                                    sexo: _sexo4.name.toString(),
                                                                    fechaNacimiento:
                                                                    _fechaNacimiento4.text
                                                                        .toString(),
                                                                    claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                                    entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                                    claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                                    ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                    estadoCivil: estado4.trimLeft(),
                                                                    claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                                    ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                    parentesco:
                                                                    parentesco4.trimLeft(),
                                                                  );
                                                                  await dbHelper
                                                                      .upDateEstructuraFamiliar4(
                                                                      DModel4)
                                                                      .then(
                                                                          (estructuraFamilar) {
                                                                        alertDialog(context,
                                                                            "Se registro correctamente");
                                                                      }).catchError((error) {
                                                                    print(error);
                                                                    alertDialog(context,
                                                                        "Error: No se guardaron los datos");
                                                                  });

                                                                  String sexo5 = _sexo5
                                                                      .name
                                                                      .toString();
                                                                  if (sexo5 == 'hombre') {
                                                                    sexo5 = '1 1 Hombre';
                                                                  } else if (sexo5 ==
                                                                      'mujer') {
                                                                    sexo5 = '2 2 Mujer';
                                                                  } else if (sexo5 ==
                                                                      'otro') {
                                                                    sexo5 = '3 3 Otro';
                                                                  }

                                                                  await metodos(_entidadNacimiento5.text,_estadoCivil5.text,_parentesco5.text);


                                                                  var EstadoCivil5 =
                                                                  _estadoCivil5.text
                                                                      .toString(); // 'artlang'
                                                                  final estado5 = EstadoCivil5
                                                                      .replaceAll(
                                                                      "1", "")
                                                                      .replaceAll("2", "")
                                                                      .replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll(
                                                                      "0", "");
                                                                  var Parentesco5 =
                                                                  _parentesco5.text
                                                                      .toString(); // 'artlang'
                                                                  final parentesco5 =
                                                                  Parentesco5
                                                                      .replaceAll(
                                                                      "1", "")
                                                                      .replaceAll(
                                                                      "2", "")
                                                                      .replaceAll(
                                                                      "3", "")
                                                                      .replaceAll(
                                                                      "4", "")
                                                                      .replaceAll(
                                                                      "5", "")
                                                                      .replaceAll(
                                                                      "6", "")
                                                                      .replaceAll(
                                                                      "7", "")
                                                                      .replaceAll(
                                                                      "8", "")
                                                                      .replaceAll(
                                                                      "9", "")
                                                                      .replaceAll(
                                                                      "0", "");

                                                                  var EntidadN5 =
                                                                  _entidadNacimiento5
                                                                      .text
                                                                      .toString(); // 'artlang'
                                                                  final entidadNacimiento5 =
                                                                  EntidadN5
                                                                      .replaceAll(
                                                                      "1", "")
                                                                      .replaceAll(
                                                                      "2", "").replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  EstructuraFamilarModel
                                                                  DModel5 =
                                                                  EstructuraFamilarModel(
                                                                    folio: int.parse(
                                                                        widget.folio),
                                                                    nombre: _nombre5.text
                                                                        .toString(),
                                                                    primerApellido:
                                                                    _primerApellido5
                                                                        .text
                                                                        .toString(),
                                                                    segundoApellido:
                                                                    _segundoApellido5
                                                                        .text
                                                                        .toString(),
                                                                    claveSexo: sexo5
                                                                        .substring(0, 1),
                                                                    ordenSexo: sexo5
                                                                        .substring(0, 1),
                                                                    sexo: _sexo5.name
                                                                        .toString(),
                                                                    fechaNacimiento:
                                                                    _fechaNacimiento5
                                                                        .text
                                                                        .toString(),
                                                                    claveEntidad: _entidadNacimiento5.text.toString().substring(0, 2).trimRight(),
                                                                    entidadNacimiento: entidadNacimiento5.trimLeft(),
                                                                    claveEstadoCivil: _estadoCivil5.text.toString().substring(0, 2).trimRight(),
                                                                    ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                    estadoCivil: estado5.trimLeft(),
                                                                    claveParentesco: _parentesco5.text.toString().substring(0, 2).trimRight(),
                                                                    ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                    parentesco:
                                                                    parentesco5
                                                                        .trimLeft(),
                                                                  );
                                                                  await dbHelper
                                                                      .upDateEstructuraFamiliar5(
                                                                      DModel5)
                                                                      .then(
                                                                          (estructuraFamilar) {
                                                                        alertDialog(
                                                                            context,
                                                                            "Se registro correctamente");
                                                                      }).catchError(
                                                                          (error) {
                                                                        print(
                                                                            error);
                                                                        alertDialog(
                                                                            context,
                                                                            "Error: No se guardaron los datos");
                                                                      });

                                                                  String sexo6 =
                                                                  _sexo6
                                                                      .name
                                                                      .toString();
                                                                  if (sexo6 ==
                                                                      'hombre') {
                                                                    sexo6 =
                                                                    '1 1 Hombre';
                                                                  } else if (sexo6 ==
                                                                      'mujer') {
                                                                    sexo6 =
                                                                    '2 2 Mujer';
                                                                  } else if (sexo6 ==
                                                                      'otro') {
                                                                    sexo6 =
                                                                    '3 3 Otro';
                                                                  }

                                                                  await metodos(_entidadNacimiento6.text,_estadoCivil6.text,_parentesco6.text);


                                                                  var EstadoCivil6 =
                                                                  _estadoCivil6
                                                                      .text
                                                                      .toString(); // 'artlang'
                                                                  final estado6 = EstadoCivil6
                                                                      .replaceAll(
                                                                      "1",
                                                                      "")
                                                                      .replaceAll(
                                                                      "2", "")
                                                                      .replaceAll(
                                                                      "3", "")
                                                                      .replaceAll(
                                                                      "4", "")
                                                                      .replaceAll(
                                                                      "5", "")
                                                                      .replaceAll(
                                                                      "6", "")
                                                                      .replaceAll(
                                                                      "7", "")
                                                                      .replaceAll(
                                                                      "8",
                                                                      "")
                                                                      .replaceAll(
                                                                      "9",
                                                                      "")
                                                                      .replaceAll(
                                                                      "0",
                                                                      "");
                                                                  var Parentesco6 =
                                                                  _parentesco6
                                                                      .text
                                                                      .toString(); // 'artlang'
                                                                  final parentesco6 = Parentesco6
                                                                      .replaceAll(
                                                                      "1",
                                                                      "")
                                                                      .replaceAll(
                                                                      "2", "")
                                                                      .replaceAll(
                                                                      "3", "")
                                                                      .replaceAll(
                                                                      "4", "")
                                                                      .replaceAll(
                                                                      "5", "")
                                                                      .replaceAll(
                                                                      "6", "")
                                                                      .replaceAll(
                                                                      "7", "")
                                                                      .replaceAll(
                                                                      "8",
                                                                      "")
                                                                      .replaceAll(
                                                                      "9",
                                                                      "")
                                                                      .replaceAll(
                                                                      "0",
                                                                      "");

                                                                  var EntidadN6 =
                                                                  _entidadNacimiento6
                                                                      .text
                                                                      .toString(); // 'artlang'
                                                                  final entidadNacimiento6 = EntidadN6
                                                                      .replaceAll(
                                                                      "1",
                                                                      "")
                                                                      .replaceAll(
                                                                      "2",
                                                                      "").replaceAll("3", "")
                                                                      .replaceAll("4", "")
                                                                      .replaceAll("5", "")
                                                                      .replaceAll("6", "")
                                                                      .replaceAll("7", "")
                                                                      .replaceAll("8", "")
                                                                      .replaceAll("9", "")
                                                                      .replaceAll("0", "");

                                                                  EstructuraFamilarModel
                                                                  DModel6 =
                                                                  EstructuraFamilarModel(
                                                                    folio: int.parse(
                                                                        widget
                                                                            .folio),
                                                                    nombre: _nombre6
                                                                        .text
                                                                        .toString(),
                                                                    primerApellido:
                                                                    _primerApellido6
                                                                        .text
                                                                        .toString(),
                                                                    segundoApellido:
                                                                    _segundoApellido6
                                                                        .text
                                                                        .toString(),
                                                                    claveSexo: sexo6
                                                                        .substring(
                                                                        0,
                                                                        1),
                                                                    ordenSexo: sexo6
                                                                        .substring(
                                                                        0,
                                                                        1),
                                                                    sexo: _sexo6
                                                                        .name
                                                                        .toString(),
                                                                    fechaNacimiento:
                                                                    _fechaNacimiento6
                                                                        .text
                                                                        .toString(),
                                                                    claveEntidad: _entidadNacimiento6.text.toString().substring(0, 2).trimRight(),
                                                                    entidadNacimiento: entidadNacimiento6.trimLeft(),
                                                                    claveEstadoCivil: _estadoCivil6.text.toString().substring(0, 2).trimRight(),
                                                                    ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                    estadoCivil: estado6.trimLeft(),
                                                                    claveParentesco: _parentesco6.text.toString().substring(0, 2).trimRight(),
                                                                    ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                    parentesco:
                                                                    parentesco6
                                                                        .trimLeft(),
                                                                  );
                                                                  await dbHelper
                                                                      .upDateEstructuraFamiliar6(
                                                                      DModel6)
                                                                      .then(
                                                                          (estructuraFamilar) {
                                                                        alertDialog(
                                                                            context,
                                                                            "Se registro correctamente");
                                                                        Navigator.of(
                                                                            context)
                                                                            .push(MaterialPageRoute<Null>(builder:
                                                                            (BuildContext
                                                                        context) {
                                                                          return new ActualizarEstudio(
                                                                              widget
                                                                                  .folio);
                                                                        }));
                                                                      }).catchError(
                                                                          (error) {
                                                                        print(
                                                                            error);
                                                                        alertDialog(
                                                                            context,
                                                                            "Error: No se guardaron los datos");
                                                                      });
                                                                } else {
                                                                  alertDialog(
                                                                      context,
                                                                      "El a??o en la fecha no corresponde");
                                                                }
                                                              } else {
                                                                alertDialog(
                                                                    context,
                                                                    "El mes seleccionado en la fecha no es correcto");
                                                              }
                                                            } else {
                                                              alertDialog(
                                                                  context,
                                                                  "Los dias seleccionados en la fecha no son correcotos");
                                                            }
                                                          } else {
                                                            alertDialog(context,
                                                                "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                          }
                                                        } else {
                                                          alertDialog(context,
                                                              "La fecha se encuentra basia");
                                                        }
                                                      } else {
                                                        alertDialog(context,
                                                            "El a??o en la fecha no corresponde");
                                                      }
                                                    } else {
                                                      alertDialog(context,
                                                          "El mes seleccionado en la fecha no es correcto");
                                                    }
                                                  } else {
                                                    alertDialog(context,
                                                        "Los dias seleccionados en la fecha no son correcotos");
                                                  }
                                                } else {
                                                  alertDialog(context,
                                                      "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                }
                                              } else {
                                                alertDialog(context,
                                                    "La fecha se encuentra basia");
                                              }
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre8.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              if (!_fechaNacimiento5
                                                  .text.isEmpty) {
                                                if (_fechaNacimiento5
                                                    .text.length ==
                                                    10) {
                                                  if (int.parse(
                                                      _fechaNacimiento5
                                                          .text
                                                          .substring(
                                                          0, 2)) >=
                                                      1 &&
                                                      int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              0, 2)) <=
                                                          31) {
                                                    if (int.parse(
                                                        _fechaNacimiento5
                                                            .text
                                                            .substring(
                                                            3,
                                                            5)) >=
                                                        1 &&
                                                        int.parse(
                                                            _fechaNacimiento5
                                                                .text
                                                                .substring(
                                                                3,
                                                                5)) <=
                                                            12) {
                                                      if (int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              6, 10)) <=
                                                          2022) {
                                                        if (!_fechaNacimiento6
                                                            .text.isEmpty) {
                                                          if (_fechaNacimiento6
                                                              .text
                                                              .length ==
                                                              10) {
                                                            if (int.parse(_fechaNacimiento6
                                                                .text
                                                                .substring(
                                                                0,
                                                                2)) >=
                                                                1 &&
                                                                int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    0,
                                                                    2)) <=
                                                                    31) {
                                                              if (int.parse(_fechaNacimiento6
                                                                  .text
                                                                  .substring(
                                                                  3,
                                                                  5)) >=
                                                                  1 &&
                                                                  int.parse(_fechaNacimiento6
                                                                      .text
                                                                      .substring(
                                                                      3,
                                                                      5)) <=
                                                                      12) {
                                                                if (int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    6,
                                                                    10)) <=
                                                                    2022) {
                                                                  if (!_fechaNacimiento7
                                                                      .text
                                                                      .isEmpty) {
                                                                    if (_fechaNacimiento7
                                                                        .text
                                                                        .length ==
                                                                        10) {
                                                                      if (int.parse(_fechaNacimiento7.text.substring(0, 2)) >=
                                                                          1 &&
                                                                          int.parse(_fechaNacimiento7.text.substring(0, 2)) <=
                                                                              31) {
                                                                        if (int.parse(_fechaNacimiento7.text.substring(3, 5)) >=
                                                                            1 &&
                                                                            int.parse(_fechaNacimiento7.text.substring(3, 5)) <=
                                                                                12) {
                                                                          if (int.parse(_fechaNacimiento7.text.substring(6, 10)) <=
                                                                              2022) {
                                                                            String
                                                                            sexo1 =
                                                                            _sexo1.name.toString();
                                                                            if (sexo1 ==
                                                                                'hombre') {
                                                                              sexo1 = '1 1 Hombre';
                                                                            } else if (sexo1 ==
                                                                                'mujer') {
                                                                              sexo1 = '2 2 Mujer';
                                                                            } else if (sexo1 ==
                                                                                'otro') {
                                                                              sexo1 = '3 3 Otro';
                                                                            }
                                                                            await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                                                            var EstadoCivil =
                                                                            _estadoCivil1.text.toString(); // 'artlang'
                                                                            final estado = EstadoCivil.replaceAll("1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");
                                                                            var Parentesco =
                                                                            _parentesco1.text.toString(); // 'artlang'
                                                                            final parentesco = Parentesco.replaceAll("1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            var EntidadN =
                                                                            _entidadNacimiento1.text.toString(); // 'artlang'
                                                                            final entidadNacimiento =
                                                                            EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel DModel =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(widget.folio),
                                                                              nombre: _nombre1.text.toString(),
                                                                              primerApellido: _primerApellido1.text.toString(),
                                                                              segundoApellido: _segundoApellido1.text.toString(),
                                                                              claveSexo: sexo1.substring(0, 1),
                                                                              ordenSexo: sexo1.substring(0, 1),
                                                                              sexo: _sexo1.name.toString(),
                                                                              fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                                              claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado.trimLeft(),
                                                                              claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco: parentesco.trimLeft(),
                                                                            );
                                                                            await dbHelper
                                                                                .upDateEstructuraFamiliar1(DModel)
                                                                                .then((estructuraFamilar) {})
                                                                                .catchError((error) {
                                                                              print(error);
                                                                              alertDialog(
                                                                                  context, "Error: No se guardaron los datos");
                                                                            });

                                                                            String sexo2 = _sexo2.name.toString();
                                                                            if (sexo2 == 'hombre') {
                                                                              sexo2 = '1 1 Hombre';
                                                                            } else if (sexo2 == 'mujer') {
                                                                              sexo2 = '2 2 Mujer';
                                                                            } else if (sexo2 == 'otro') {
                                                                              sexo2 = '3 3 Otro';
                                                                            }

                                                                            await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                                                            var EstadoCivil2 =
                                                                            _estadoCivil2.text.toString(); // 'artlang'
                                                                            final estado2 = EstadoCivil2.replaceAll("1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");
                                                                            var Parentesco2 =
                                                                            _parentesco2.text.toString(); // 'artlang'
                                                                            final parentesco2 = Parentesco2.replaceAll("1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            var EntidadN2 =
                                                                            _entidadNacimiento2.text.toString(); // 'artlang'
                                                                            final entidadNacimiento2 =
                                                                            EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel DModel2 =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(widget.folio),
                                                                              nombre: _nombre2.text.toString(),
                                                                              primerApellido: _primerApellido2.text.toString(),
                                                                              segundoApellido: _segundoApellido2.text.toString(),
                                                                              claveSexo: sexo2.substring(0, 1),
                                                                              ordenSexo: sexo2.substring(0, 1),
                                                                              sexo: _sexo2.name.toString(),
                                                                              fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                                              claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado2.trimLeft(),
                                                                              claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco: parentesco2.trimLeft(),
                                                                            );
                                                                            await dbHelper
                                                                                .upDateEstructuraFamiliar2(DModel2)
                                                                                .then((estructuraFamilar) {
                                                                              alertDialog(
                                                                                  context, "Se registro correctamente");
                                                                            }).catchError((error) {
                                                                              print(error);
                                                                              alertDialog(context,
                                                                                  "Error: No se guardaron los datos");
                                                                            });

                                                                            String sexo3 = _sexo3.name.toString();
                                                                            if (sexo3 == 'hombre') {
                                                                              sexo3 = '1 1 Hombre';
                                                                            } else if (sexo3 == 'mujer') {
                                                                              sexo3 = '2 2 Mujer';
                                                                            } else if (sexo3 == 'otro') {
                                                                              sexo3 = '3 3 Otro';
                                                                            }

                                                                            await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                                                            var EstadoCivil3 = _estadoCivil3.text
                                                                                .toString(); // 'artlang'
                                                                            final estado3 =
                                                                            EstadoCivil3.replaceAll("1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");
                                                                            var Parentesco3 = _parentesco3.text
                                                                                .toString(); // 'artlang'
                                                                            final parentesco3 =
                                                                            Parentesco3.replaceAll("1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            var EntidadN3 = _entidadNacimiento3.text
                                                                                .toString(); // 'artlang'
                                                                            final entidadNacimiento3 =
                                                                            EntidadN3.replaceAll("1", "")
                                                                                .replaceAll("2", "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel DModel3 =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(widget.folio),
                                                                              nombre: _nombre3.text.toString(),
                                                                              primerApellido:
                                                                              _primerApellido3.text.toString(),
                                                                              segundoApellido:
                                                                              _segundoApellido3.text.toString(),
                                                                              claveSexo: sexo3.substring(0, 1),
                                                                              ordenSexo: sexo3.substring(0, 1),
                                                                              sexo: _sexo3.name.toString(),
                                                                              fechaNacimiento:
                                                                              _fechaNacimiento3.text.toString(),
                                                                              claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado3.trimLeft(),
                                                                              claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco: parentesco3.trimLeft(),
                                                                            );
                                                                            await dbHelper
                                                                                .upDateEstructuraFamiliar3(
                                                                                DModel3)
                                                                                .then((estructuraFamilar) {
                                                                              alertDialog(context,
                                                                                  "Se registro correctamente");
                                                                            }).catchError((error) {
                                                                              print(error);
                                                                              alertDialog(context,
                                                                                  "Error: No se guardaron los datos");
                                                                            });

                                                                            String sexo4 =
                                                                            _sexo4.name.toString();
                                                                            if (sexo4 == 'hombre') {
                                                                              sexo4 = '1 1 Hombre';
                                                                            } else if (sexo4 == 'mujer') {
                                                                              sexo4 = '2 2 Mujer';
                                                                            } else if (sexo4 == 'otro') {
                                                                              sexo4 = '3 3 Otro';
                                                                            }

                                                                            await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                                                            var EstadoCivil4 = _estadoCivil4
                                                                                .text
                                                                                .toString(); // 'artlang'
                                                                            final estado4 =
                                                                            EstadoCivil4.replaceAll(
                                                                                "1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");
                                                                            var Parentesco4 = _parentesco4
                                                                                .text
                                                                                .toString(); // 'artlang'
                                                                            final parentesco4 =
                                                                            Parentesco4.replaceAll(
                                                                                "1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            var EntidadN4 =
                                                                            _entidadNacimiento4.text
                                                                                .toString(); // 'artlang'
                                                                            final entidadNacimiento4 =
                                                                            EntidadN4.replaceAll("1", "")
                                                                                .replaceAll("2", "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel DModel4 =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(widget.folio),
                                                                              nombre:
                                                                              _nombre4.text.toString(),
                                                                              primerApellido: _primerApellido4
                                                                                  .text
                                                                                  .toString(),
                                                                              segundoApellido:
                                                                              _segundoApellido4.text
                                                                                  .toString(),
                                                                              claveSexo:
                                                                              sexo4.substring(0, 1),
                                                                              ordenSexo:
                                                                              sexo4.substring(0, 1),
                                                                              sexo: _sexo4.name.toString(),
                                                                              fechaNacimiento:
                                                                              _fechaNacimiento4.text
                                                                                  .toString(),
                                                                              claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado4.trimLeft(),
                                                                              claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco:
                                                                              parentesco4.trimLeft(),
                                                                            );
                                                                            await dbHelper
                                                                                .upDateEstructuraFamiliar4(
                                                                                DModel4)
                                                                                .then(
                                                                                    (estructuraFamilar) {
                                                                                  alertDialog(context,
                                                                                      "Se registro correctamente");
                                                                                }).catchError((error) {
                                                                              print(error);
                                                                              alertDialog(context,
                                                                                  "Error: No se guardaron los datos");
                                                                            });

                                                                            String sexo5 = _sexo5
                                                                                .name
                                                                                .toString();
                                                                            if (sexo5 == 'hombre') {
                                                                              sexo5 = '1 1 Hombre';
                                                                            } else if (sexo5 ==
                                                                                'mujer') {
                                                                              sexo5 = '2 2 Mujer';
                                                                            } else if (sexo5 ==
                                                                                'otro') {
                                                                              sexo5 = '3 3 Otro';
                                                                            }

                                                                            await metodos(_entidadNacimiento5.text,_estadoCivil5.text,_parentesco5.text);


                                                                            var EstadoCivil5 =
                                                                            _estadoCivil5.text
                                                                                .toString(); // 'artlang'
                                                                            final estado5 = EstadoCivil5
                                                                                .replaceAll(
                                                                                "1", "")
                                                                                .replaceAll("2", "")
                                                                                .replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll(
                                                                                "0", "");
                                                                            var Parentesco5 =
                                                                            _parentesco5.text
                                                                                .toString(); // 'artlang'
                                                                            final parentesco5 =
                                                                            Parentesco5
                                                                                .replaceAll(
                                                                                "1", "")
                                                                                .replaceAll(
                                                                                "2", "")
                                                                                .replaceAll(
                                                                                "3", "")
                                                                                .replaceAll(
                                                                                "4", "")
                                                                                .replaceAll(
                                                                                "5", "")
                                                                                .replaceAll(
                                                                                "6", "")
                                                                                .replaceAll(
                                                                                "7", "")
                                                                                .replaceAll(
                                                                                "8", "")
                                                                                .replaceAll(
                                                                                "9", "")
                                                                                .replaceAll(
                                                                                "0", "");

                                                                            var EntidadN5 =
                                                                            _entidadNacimiento5
                                                                                .text
                                                                                .toString(); // 'artlang'
                                                                            final entidadNacimiento5 =
                                                                            EntidadN5
                                                                                .replaceAll(
                                                                                "1", "")
                                                                                .replaceAll(
                                                                                "2", "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel
                                                                            DModel5 =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(
                                                                                  widget.folio),
                                                                              nombre: _nombre5.text
                                                                                  .toString(),
                                                                              primerApellido:
                                                                              _primerApellido5
                                                                                  .text
                                                                                  .toString(),
                                                                              segundoApellido:
                                                                              _segundoApellido5
                                                                                  .text
                                                                                  .toString(),
                                                                              claveSexo: sexo5
                                                                                  .substring(0, 1),
                                                                              ordenSexo: sexo5
                                                                                  .substring(0, 1),
                                                                              sexo: _sexo5.name
                                                                                  .toString(),
                                                                              fechaNacimiento:
                                                                              _fechaNacimiento5
                                                                                  .text
                                                                                  .toString(),
                                                                              claveEntidad: _entidadNacimiento5.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento5.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil5.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado5.trimLeft(),
                                                                              claveParentesco: _parentesco5.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco:
                                                                              parentesco5
                                                                                  .trimLeft(),
                                                                            );
                                                                            await dbHelper
                                                                                .upDateEstructuraFamiliar5(
                                                                                DModel5)
                                                                                .then(
                                                                                    (estructuraFamilar) {
                                                                                  alertDialog(
                                                                                      context,
                                                                                      "Se registro correctamente");
                                                                                }).catchError(
                                                                                    (error) {
                                                                                  print(
                                                                                      error);
                                                                                  alertDialog(
                                                                                      context,
                                                                                      "Error: No se guardaron los datos");
                                                                                });

                                                                            String sexo6 =
                                                                            _sexo6
                                                                                .name
                                                                                .toString();
                                                                            if (sexo6 ==
                                                                                'hombre') {
                                                                              sexo6 =
                                                                              '1 1 Hombre';
                                                                            } else if (sexo6 ==
                                                                                'mujer') {
                                                                              sexo6 =
                                                                              '2 2 Mujer';
                                                                            } else if (sexo6 ==
                                                                                'otro') {
                                                                              sexo6 =
                                                                              '3 3 Otro';
                                                                            }

                                                                            await metodos(_entidadNacimiento6.text,_estadoCivil6.text,_parentesco6.text);


                                                                            var EstadoCivil6 =
                                                                            _estadoCivil6
                                                                                .text
                                                                                .toString(); // 'artlang'
                                                                            final estado6 = EstadoCivil6
                                                                                .replaceAll(
                                                                                "1",
                                                                                "")
                                                                                .replaceAll(
                                                                                "2", "")
                                                                                .replaceAll(
                                                                                "3", "")
                                                                                .replaceAll(
                                                                                "4", "")
                                                                                .replaceAll(
                                                                                "5", "")
                                                                                .replaceAll(
                                                                                "6", "")
                                                                                .replaceAll(
                                                                                "7", "")
                                                                                .replaceAll(
                                                                                "8",
                                                                                "")
                                                                                .replaceAll(
                                                                                "9",
                                                                                "")
                                                                                .replaceAll(
                                                                                "0",
                                                                                "");
                                                                            var Parentesco6 =
                                                                            _parentesco6
                                                                                .text
                                                                                .toString(); // 'artlang'
                                                                            final parentesco6 = Parentesco6
                                                                                .replaceAll(
                                                                                "1",
                                                                                "")
                                                                                .replaceAll(
                                                                                "2", "")
                                                                                .replaceAll(
                                                                                "3", "")
                                                                                .replaceAll(
                                                                                "4", "")
                                                                                .replaceAll(
                                                                                "5", "")
                                                                                .replaceAll(
                                                                                "6", "")
                                                                                .replaceAll(
                                                                                "7", "")
                                                                                .replaceAll(
                                                                                "8",
                                                                                "")
                                                                                .replaceAll(
                                                                                "9",
                                                                                "")
                                                                                .replaceAll(
                                                                                "0",
                                                                                "");

                                                                            var EntidadN6 =
                                                                            _entidadNacimiento6
                                                                                .text
                                                                                .toString(); // 'artlang'
                                                                            final entidadNacimiento6 = EntidadN6
                                                                                .replaceAll(
                                                                                "1",
                                                                                "")
                                                                                .replaceAll(
                                                                                "2",
                                                                                "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel
                                                                            DModel6 =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(
                                                                                  widget
                                                                                      .folio),
                                                                              nombre: _nombre6
                                                                                  .text
                                                                                  .toString(),
                                                                              primerApellido:
                                                                              _primerApellido6
                                                                                  .text
                                                                                  .toString(),
                                                                              segundoApellido:
                                                                              _segundoApellido6
                                                                                  .text
                                                                                  .toString(),
                                                                              claveSexo: sexo6
                                                                                  .substring(
                                                                                  0,
                                                                                  1),
                                                                              ordenSexo: sexo6
                                                                                  .substring(
                                                                                  0,
                                                                                  1),
                                                                              sexo: _sexo6
                                                                                  .name
                                                                                  .toString(),
                                                                              fechaNacimiento:
                                                                              _fechaNacimiento6
                                                                                  .text
                                                                                  .toString(),
                                                                              claveEntidad: _entidadNacimiento6.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento6.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil6.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado6.trimLeft(),
                                                                              claveParentesco: _parentesco6.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco:
                                                                              parentesco6
                                                                                  .trimLeft(),
                                                                            );
                                                                            await dbHelper.upDateEstructuraFamiliar6(DModel6).then((estructuraFamilar) {
                                                                              alertDialog(context, "Se registro correctamente");
                                                                            }).catchError((error) {
                                                                              print(error);
                                                                              alertDialog(context, "Error: No se guardaron los datos");
                                                                            });

                                                                            String
                                                                            sexo7 =
                                                                            _sexo7.name.toString();

                                                                            if (sexo7 ==
                                                                                'hombre') {
                                                                              sexo7 = '1 1 Hombre';
                                                                            } else if (sexo7 ==
                                                                                'mujer') {
                                                                              sexo7 = '2 2 Mujer';
                                                                            } else if (sexo7 ==
                                                                                'otro') {
                                                                              sexo7 = '3 3 Otro';
                                                                            }

                                                                            await metodos(_entidadNacimiento7.text,_estadoCivil7.text,_parentesco7.text);


                                                                            var EstadoCivil7 =
                                                                            _estadoCivil7.text.toString(); // 'artlang'
                                                                            final estado7 =
                                                                            EstadoCivil7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                            var Parentesco7 =
                                                                            _parentesco7.text.toString(); // 'artlang'
                                                                            final parentesco7 =
                                                                            Parentesco7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                            var EntidadN7 =
                                                                            _entidadNacimiento7.text.toString(); // 'artlang'
                                                                            final entidadNacimiento7 =
                                                                            EntidadN7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                .replaceAll("4", "")
                                                                                .replaceAll("5", "")
                                                                                .replaceAll("6", "")
                                                                                .replaceAll("7", "")
                                                                                .replaceAll("8", "")
                                                                                .replaceAll("9", "")
                                                                                .replaceAll("0", "");

                                                                            EstructuraFamilarModel
                                                                            DModel7 =
                                                                            EstructuraFamilarModel(
                                                                              folio: int.parse(widget.folio),
                                                                              nombre: _nombre7.text.toString(),
                                                                              primerApellido: _primerApellido7.text.toString(),
                                                                              segundoApellido: _segundoApellido7.text.toString(),
                                                                              claveSexo: sexo7.substring(0, 1),
                                                                              ordenSexo: sexo7.substring(0, 1),
                                                                              sexo: _sexo7.name.toString(),
                                                                              fechaNacimiento: _fechaNacimiento7.text.toString(),
                                                                              claveEntidad: _entidadNacimiento7.text.toString().substring(0, 2).trimRight(),
                                                                              entidadNacimiento: entidadNacimiento7.trimLeft(),
                                                                              claveEstadoCivil: _estadoCivil7.text.toString().substring(0, 2).trimRight(),
                                                                              ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                              estadoCivil: estado7.trimLeft(),
                                                                              claveParentesco: _parentesco7.text.toString().substring(0, 2).trimRight(),
                                                                              ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                              parentesco: parentesco7.trimLeft(),
                                                                            );
                                                                            await dbHelper.upDateEstructuraFamiliar7(DModel7).then((estructuraFamilar) {
                                                                              alertDialog(context, "Se registro correctamente");
                                                                              Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                                                                return new ActualizarEstudio(widget.folio);
                                                                              }));
                                                                            }).catchError((error) {
                                                                              print(error);
                                                                              alertDialog(context, "Error: No se guardaron los datos");
                                                                            });
                                                                          } else {
                                                                            alertDialog(context,
                                                                                "El a??o en la fecha no corresponde");
                                                                          }
                                                                        } else {
                                                                          alertDialog(
                                                                              context,
                                                                              "El mes seleccionado en la fecha no es correcto");
                                                                        }
                                                                      } else {
                                                                        alertDialog(
                                                                            context,
                                                                            "Los dias seleccionados en la fecha no son correcotos");
                                                                      }
                                                                    } else {
                                                                      alertDialog(
                                                                          context,
                                                                          "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                    }
                                                                  } else {
                                                                    alertDialog(
                                                                        context,
                                                                        "La fecha se encuentra basia");
                                                                  }
                                                                } else {
                                                                  alertDialog(
                                                                      context,
                                                                      "El a??o en la fecha no corresponde");
                                                                }
                                                              } else {
                                                                alertDialog(
                                                                    context,
                                                                    "El mes seleccionado en la fecha no es correcto");
                                                              }
                                                            } else {
                                                              alertDialog(
                                                                  context,
                                                                  "Los dias seleccionados en la fecha no son correcotos");
                                                            }
                                                          } else {
                                                            alertDialog(context,
                                                                "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                          }
                                                        } else {
                                                          alertDialog(context,
                                                              "La fecha se encuentra basia");
                                                        }
                                                      } else {
                                                        alertDialog(context,
                                                            "El a??o en la fecha no corresponde");
                                                      }
                                                    } else {
                                                      alertDialog(context,
                                                          "El mes seleccionado en la fecha no es correcto");
                                                    }
                                                  } else {
                                                    alertDialog(context,
                                                        "Los dias seleccionados en la fecha no son correcotos");
                                                  }
                                                } else {
                                                  alertDialog(context,
                                                      "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                }
                                              } else {
                                                alertDialog(context,
                                                    "La fecha se encuentra basia");
                                              }
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre9.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              if (!_fechaNacimiento5
                                                  .text.isEmpty) {
                                                if (_fechaNacimiento5
                                                    .text.length ==
                                                    10) {
                                                  if (int.parse(
                                                      _fechaNacimiento5
                                                          .text
                                                          .substring(
                                                          0, 2)) >=
                                                      1 &&
                                                      int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              0, 2)) <=
                                                          31) {
                                                    if (int.parse(
                                                        _fechaNacimiento5
                                                            .text
                                                            .substring(
                                                            3,
                                                            5)) >=
                                                        1 &&
                                                        int.parse(
                                                            _fechaNacimiento5
                                                                .text
                                                                .substring(
                                                                3,
                                                                5)) <=
                                                            12) {
                                                      if (int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              6, 10)) <=
                                                          2022) {
                                                        if (!_fechaNacimiento6
                                                            .text.isEmpty) {
                                                          if (_fechaNacimiento6
                                                              .text
                                                              .length ==
                                                              10) {
                                                            if (int.parse(_fechaNacimiento6
                                                                .text
                                                                .substring(
                                                                0,
                                                                2)) >=
                                                                1 &&
                                                                int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    0,
                                                                    2)) <=
                                                                    31) {
                                                              if (int.parse(_fechaNacimiento6
                                                                  .text
                                                                  .substring(
                                                                  3,
                                                                  5)) >=
                                                                  1 &&
                                                                  int.parse(_fechaNacimiento6
                                                                      .text
                                                                      .substring(
                                                                      3,
                                                                      5)) <=
                                                                      12) {
                                                                if (int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    6,
                                                                    10)) <=
                                                                    2022) {
                                                                  if (!_fechaNacimiento7
                                                                      .text
                                                                      .isEmpty) {
                                                                    if (_fechaNacimiento7
                                                                        .text
                                                                        .length ==
                                                                        10) {
                                                                      if (int.parse(_fechaNacimiento7.text.substring(0, 2)) >=
                                                                          1 &&
                                                                          int.parse(_fechaNacimiento7.text.substring(0, 2)) <=
                                                                              31) {
                                                                        if (int.parse(_fechaNacimiento7.text.substring(3, 5)) >=
                                                                            1 &&
                                                                            int.parse(_fechaNacimiento7.text.substring(3, 5)) <=
                                                                                12) {
                                                                          if (int.parse(_fechaNacimiento7.text.substring(6, 10)) <=
                                                                              2022) {
                                                                            if (!_fechaNacimiento8.text.isEmpty) {
                                                                              if (_fechaNacimiento8.text.length == 10) {
                                                                                if (int.parse(_fechaNacimiento8.text.substring(0, 2)) >= 1 && int.parse(_fechaNacimiento8.text.substring(0, 2)) <= 31) {
                                                                                  if (int.parse(_fechaNacimiento8.text.substring(3, 5)) >= 1 && int.parse(_fechaNacimiento8.text.substring(3, 5)) <= 12) {
                                                                                    if (int.parse(_fechaNacimiento8.text.substring(6, 10)) <= 2022) {
                                                                                      String sexo1 = _sexo1.name.toString();
                                                                                      if (sexo1 == 'hombre') {
                                                                                        sexo1 = '1 1 Hombre';
                                                                                      } else if (sexo1 == 'mujer') {
                                                                                        sexo1 = '2 2 Mujer';
                                                                                      } else if (sexo1 == 'otro') {
                                                                                        sexo1 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                                                                      var EstadoCivil =
                                                                                      _estadoCivil1.text.toString(); // 'artlang'
                                                                                      final estado = EstadoCivil.replaceAll("1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");
                                                                                      var Parentesco =
                                                                                      _parentesco1.text.toString(); // 'artlang'
                                                                                      final parentesco = Parentesco.replaceAll("1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      var EntidadN =
                                                                                      _entidadNacimiento1.text.toString(); // 'artlang'
                                                                                      final entidadNacimiento =
                                                                                      EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel DModel =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(widget.folio),
                                                                                        nombre: _nombre1.text.toString(),
                                                                                        primerApellido: _primerApellido1.text.toString(),
                                                                                        segundoApellido: _segundoApellido1.text.toString(),
                                                                                        claveSexo: sexo1.substring(0, 1),
                                                                                        ordenSexo: sexo1.substring(0, 1),
                                                                                        sexo: _sexo1.name.toString(),
                                                                                        fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                                                        claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado.trimLeft(),
                                                                                        claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco: parentesco.trimLeft(),
                                                                                      );
                                                                                      await dbHelper
                                                                                          .upDateEstructuraFamiliar1(DModel)
                                                                                          .then((estructuraFamilar) {})
                                                                                          .catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(
                                                                                            context, "Error: No se guardaron los datos");
                                                                                      });

                                                                                      String sexo2 = _sexo2.name.toString();
                                                                                      if (sexo2 == 'hombre') {
                                                                                        sexo2 = '1 1 Hombre';
                                                                                      } else if (sexo2 == 'mujer') {
                                                                                        sexo2 = '2 2 Mujer';
                                                                                      } else if (sexo2 == 'otro') {
                                                                                        sexo2 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                                                                      var EstadoCivil2 =
                                                                                      _estadoCivil2.text.toString(); // 'artlang'
                                                                                      final estado2 = EstadoCivil2.replaceAll("1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");
                                                                                      var Parentesco2 =
                                                                                      _parentesco2.text.toString(); // 'artlang'
                                                                                      final parentesco2 = Parentesco2.replaceAll("1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      var EntidadN2 =
                                                                                      _entidadNacimiento2.text.toString(); // 'artlang'
                                                                                      final entidadNacimiento2 =
                                                                                      EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel DModel2 =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(widget.folio),
                                                                                        nombre: _nombre2.text.toString(),
                                                                                        primerApellido: _primerApellido2.text.toString(),
                                                                                        segundoApellido: _segundoApellido2.text.toString(),
                                                                                        claveSexo: sexo2.substring(0, 1),
                                                                                        ordenSexo: sexo2.substring(0, 1),
                                                                                        sexo: _sexo2.name.toString(),
                                                                                        fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                                                        claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado2.trimLeft(),
                                                                                        claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco: parentesco2.trimLeft(),
                                                                                      );
                                                                                      await dbHelper
                                                                                          .upDateEstructuraFamiliar2(DModel2)
                                                                                          .then((estructuraFamilar) {
                                                                                        alertDialog(
                                                                                            context, "Se registro correctamente");
                                                                                      }).catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(context,
                                                                                            "Error: No se guardaron los datos");
                                                                                      });

                                                                                      String sexo3 = _sexo3.name.toString();
                                                                                      if (sexo3 == 'hombre') {
                                                                                        sexo3 = '1 1 Hombre';
                                                                                      } else if (sexo3 == 'mujer') {
                                                                                        sexo3 = '2 2 Mujer';
                                                                                      } else if (sexo3 == 'otro') {
                                                                                        sexo3 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                                                                      var EstadoCivil3 = _estadoCivil3.text
                                                                                          .toString(); // 'artlang'
                                                                                      final estado3 =
                                                                                      EstadoCivil3.replaceAll("1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");
                                                                                      var Parentesco3 = _parentesco3.text
                                                                                          .toString(); // 'artlang'
                                                                                      final parentesco3 =
                                                                                      Parentesco3.replaceAll("1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      var EntidadN3 = _entidadNacimiento3.text
                                                                                          .toString(); // 'artlang'
                                                                                      final entidadNacimiento3 =
                                                                                      EntidadN3.replaceAll("1", "")
                                                                                          .replaceAll("2", "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel DModel3 =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(widget.folio),
                                                                                        nombre: _nombre3.text.toString(),
                                                                                        primerApellido:
                                                                                        _primerApellido3.text.toString(),
                                                                                        segundoApellido:
                                                                                        _segundoApellido3.text.toString(),
                                                                                        claveSexo: sexo3.substring(0, 1),
                                                                                        ordenSexo: sexo3.substring(0, 1),
                                                                                        sexo: _sexo3.name.toString(),
                                                                                        fechaNacimiento:
                                                                                        _fechaNacimiento3.text.toString(),
                                                                                        claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado3.trimLeft(),
                                                                                        claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco: parentesco3.trimLeft(),
                                                                                      );
                                                                                      await dbHelper
                                                                                          .upDateEstructuraFamiliar3(
                                                                                          DModel3)
                                                                                          .then((estructuraFamilar) {
                                                                                        alertDialog(context,
                                                                                            "Se registro correctamente");
                                                                                      }).catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(context,
                                                                                            "Error: No se guardaron los datos");
                                                                                      });

                                                                                      String sexo4 =
                                                                                      _sexo4.name.toString();
                                                                                      if (sexo4 == 'hombre') {
                                                                                        sexo4 = '1 1 Hombre';
                                                                                      } else if (sexo4 == 'mujer') {
                                                                                        sexo4 = '2 2 Mujer';
                                                                                      } else if (sexo4 == 'otro') {
                                                                                        sexo4 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                                                                      var EstadoCivil4 = _estadoCivil4
                                                                                          .text
                                                                                          .toString(); // 'artlang'
                                                                                      final estado4 =
                                                                                      EstadoCivil4.replaceAll(
                                                                                          "1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");
                                                                                      var Parentesco4 = _parentesco4
                                                                                          .text
                                                                                          .toString(); // 'artlang'
                                                                                      final parentesco4 =
                                                                                      Parentesco4.replaceAll(
                                                                                          "1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      var EntidadN4 =
                                                                                      _entidadNacimiento4.text
                                                                                          .toString(); // 'artlang'
                                                                                      final entidadNacimiento4 =
                                                                                      EntidadN4.replaceAll("1", "")
                                                                                          .replaceAll("2", "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel DModel4 =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(widget.folio),
                                                                                        nombre:
                                                                                        _nombre4.text.toString(),
                                                                                        primerApellido: _primerApellido4
                                                                                            .text
                                                                                            .toString(),
                                                                                        segundoApellido:
                                                                                        _segundoApellido4.text
                                                                                            .toString(),
                                                                                        claveSexo:
                                                                                        sexo4.substring(0, 1),
                                                                                        ordenSexo:
                                                                                        sexo4.substring(0, 1),
                                                                                        sexo: _sexo4.name.toString(),
                                                                                        fechaNacimiento:
                                                                                        _fechaNacimiento4.text
                                                                                            .toString(),
                                                                                        claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado4.trimLeft(),
                                                                                        claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco:
                                                                                        parentesco4.trimLeft(),
                                                                                      );
                                                                                      await dbHelper
                                                                                          .upDateEstructuraFamiliar4(
                                                                                          DModel4)
                                                                                          .then(
                                                                                              (estructuraFamilar) {
                                                                                            alertDialog(context,
                                                                                                "Se registro correctamente");
                                                                                          }).catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(context,
                                                                                            "Error: No se guardaron los datos");
                                                                                      });

                                                                                      String sexo5 = _sexo5
                                                                                          .name
                                                                                          .toString();
                                                                                      if (sexo5 == 'hombre') {
                                                                                        sexo5 = '1 1 Hombre';
                                                                                      } else if (sexo5 ==
                                                                                          'mujer') {
                                                                                        sexo5 = '2 2 Mujer';
                                                                                      } else if (sexo5 ==
                                                                                          'otro') {
                                                                                        sexo5 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento5.text,_estadoCivil5.text,_parentesco5.text);


                                                                                      var EstadoCivil5 =
                                                                                      _estadoCivil5.text
                                                                                          .toString(); // 'artlang'
                                                                                      final estado5 = EstadoCivil5
                                                                                          .replaceAll(
                                                                                          "1", "")
                                                                                          .replaceAll("2", "")
                                                                                          .replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll(
                                                                                          "0", "");
                                                                                      var Parentesco5 =
                                                                                      _parentesco5.text
                                                                                          .toString(); // 'artlang'
                                                                                      final parentesco5 =
                                                                                      Parentesco5
                                                                                          .replaceAll(
                                                                                          "1", "")
                                                                                          .replaceAll(
                                                                                          "2", "")
                                                                                          .replaceAll(
                                                                                          "3", "")
                                                                                          .replaceAll(
                                                                                          "4", "")
                                                                                          .replaceAll(
                                                                                          "5", "")
                                                                                          .replaceAll(
                                                                                          "6", "")
                                                                                          .replaceAll(
                                                                                          "7", "")
                                                                                          .replaceAll(
                                                                                          "8", "")
                                                                                          .replaceAll(
                                                                                          "9", "")
                                                                                          .replaceAll(
                                                                                          "0", "");

                                                                                      var EntidadN5 =
                                                                                      _entidadNacimiento5
                                                                                          .text
                                                                                          .toString(); // 'artlang'
                                                                                      final entidadNacimiento5 =
                                                                                      EntidadN5
                                                                                          .replaceAll(
                                                                                          "1", "")
                                                                                          .replaceAll(
                                                                                          "2", "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel
                                                                                      DModel5 =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(
                                                                                            widget.folio),
                                                                                        nombre: _nombre5.text
                                                                                            .toString(),
                                                                                        primerApellido:
                                                                                        _primerApellido5
                                                                                            .text
                                                                                            .toString(),
                                                                                        segundoApellido:
                                                                                        _segundoApellido5
                                                                                            .text
                                                                                            .toString(),
                                                                                        claveSexo: sexo5
                                                                                            .substring(0, 1),
                                                                                        ordenSexo: sexo5
                                                                                            .substring(0, 1),
                                                                                        sexo: _sexo5.name
                                                                                            .toString(),
                                                                                        fechaNacimiento:
                                                                                        _fechaNacimiento5
                                                                                            .text
                                                                                            .toString(),
                                                                                        claveEntidad: _entidadNacimiento5.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento5.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil5.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado5.trimLeft(),
                                                                                        claveParentesco: _parentesco5.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco:
                                                                                        parentesco5
                                                                                            .trimLeft(),
                                                                                      );
                                                                                      await dbHelper
                                                                                          .upDateEstructuraFamiliar5(
                                                                                          DModel5)
                                                                                          .then(
                                                                                              (estructuraFamilar) {
                                                                                            alertDialog(
                                                                                                context,
                                                                                                "Se registro correctamente");
                                                                                          }).catchError(
                                                                                              (error) {
                                                                                            print(
                                                                                                error);
                                                                                            alertDialog(
                                                                                                context,
                                                                                                "Error: No se guardaron los datos");
                                                                                          });

                                                                                      String sexo6 =
                                                                                      _sexo6
                                                                                          .name
                                                                                          .toString();
                                                                                      if (sexo6 ==
                                                                                          'hombre') {
                                                                                        sexo6 =
                                                                                        '1 1 Hombre';
                                                                                      } else if (sexo6 ==
                                                                                          'mujer') {
                                                                                        sexo6 =
                                                                                        '2 2 Mujer';
                                                                                      } else if (sexo6 ==
                                                                                          'otro') {
                                                                                        sexo6 =
                                                                                        '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento6.text,_estadoCivil6.text,_parentesco6.text);


                                                                                      var EstadoCivil6 =
                                                                                      _estadoCivil6
                                                                                          .text
                                                                                          .toString(); // 'artlang'
                                                                                      final estado6 = EstadoCivil6
                                                                                          .replaceAll(
                                                                                          "1",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "2", "")
                                                                                          .replaceAll(
                                                                                          "3", "")
                                                                                          .replaceAll(
                                                                                          "4", "")
                                                                                          .replaceAll(
                                                                                          "5", "")
                                                                                          .replaceAll(
                                                                                          "6", "")
                                                                                          .replaceAll(
                                                                                          "7", "")
                                                                                          .replaceAll(
                                                                                          "8",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "9",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "0",
                                                                                          "");
                                                                                      var Parentesco6 =
                                                                                      _parentesco6
                                                                                          .text
                                                                                          .toString(); // 'artlang'
                                                                                      final parentesco6 = Parentesco6
                                                                                          .replaceAll(
                                                                                          "1",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "2", "")
                                                                                          .replaceAll(
                                                                                          "3", "")
                                                                                          .replaceAll(
                                                                                          "4", "")
                                                                                          .replaceAll(
                                                                                          "5", "")
                                                                                          .replaceAll(
                                                                                          "6", "")
                                                                                          .replaceAll(
                                                                                          "7", "")
                                                                                          .replaceAll(
                                                                                          "8",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "9",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "0",
                                                                                          "");

                                                                                      var EntidadN6 =
                                                                                      _entidadNacimiento6
                                                                                          .text
                                                                                          .toString(); // 'artlang'
                                                                                      final entidadNacimiento6 = EntidadN6
                                                                                          .replaceAll(
                                                                                          "1",
                                                                                          "")
                                                                                          .replaceAll(
                                                                                          "2",
                                                                                          "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel
                                                                                      DModel6 =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(
                                                                                            widget
                                                                                                .folio),
                                                                                        nombre: _nombre6
                                                                                            .text
                                                                                            .toString(),
                                                                                        primerApellido:
                                                                                        _primerApellido6
                                                                                            .text
                                                                                            .toString(),
                                                                                        segundoApellido:
                                                                                        _segundoApellido6
                                                                                            .text
                                                                                            .toString(),
                                                                                        claveSexo: sexo6
                                                                                            .substring(
                                                                                            0,
                                                                                            1),
                                                                                        ordenSexo: sexo6
                                                                                            .substring(
                                                                                            0,
                                                                                            1),
                                                                                        sexo: _sexo6
                                                                                            .name
                                                                                            .toString(),
                                                                                        fechaNacimiento:
                                                                                        _fechaNacimiento6
                                                                                            .text
                                                                                            .toString(),
                                                                                        claveEntidad: _entidadNacimiento6.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento6.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil6.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado6.trimLeft(),
                                                                                        claveParentesco: _parentesco6.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco:
                                                                                        parentesco6
                                                                                            .trimLeft(),
                                                                                      );
                                                                                      await dbHelper.upDateEstructuraFamiliar6(DModel6).then((estructuraFamilar) {
                                                                                        alertDialog(context, "Se registro correctamente");
                                                                                      }).catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(context, "Error: No se guardaron los datos");
                                                                                      });

                                                                                      String
                                                                                      sexo7 =
                                                                                      _sexo7.name.toString();

                                                                                      if (sexo7 ==
                                                                                          'hombre') {
                                                                                        sexo7 = '1 1 Hombre';
                                                                                      } else if (sexo7 ==
                                                                                          'mujer') {
                                                                                        sexo7 = '2 2 Mujer';
                                                                                      } else if (sexo7 ==
                                                                                          'otro') {
                                                                                        sexo7 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento7.text,_estadoCivil7.text,_parentesco7.text);


                                                                                      var EstadoCivil7 =
                                                                                      _estadoCivil7.text.toString(); // 'artlang'
                                                                                      final estado7 =
                                                                                      EstadoCivil7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                      var Parentesco7 =
                                                                                      _parentesco7.text.toString(); // 'artlang'
                                                                                      final parentesco7 =
                                                                                      Parentesco7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                      var EntidadN7 =
                                                                                      _entidadNacimiento7.text.toString(); // 'artlang'
                                                                                      final entidadNacimiento7 =
                                                                                      EntidadN7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                          .replaceAll("4", "")
                                                                                          .replaceAll("5", "")
                                                                                          .replaceAll("6", "")
                                                                                          .replaceAll("7", "")
                                                                                          .replaceAll("8", "")
                                                                                          .replaceAll("9", "")
                                                                                          .replaceAll("0", "");

                                                                                      EstructuraFamilarModel
                                                                                      DModel7 =
                                                                                      EstructuraFamilarModel(
                                                                                        folio: int.parse(widget.folio),
                                                                                        nombre: _nombre7.text.toString(),
                                                                                        primerApellido: _primerApellido7.text.toString(),
                                                                                        segundoApellido: _segundoApellido7.text.toString(),
                                                                                        claveSexo: sexo7.substring(0, 1),
                                                                                        ordenSexo: sexo7.substring(0, 1),
                                                                                        sexo: _sexo7.name.toString(),
                                                                                        fechaNacimiento: _fechaNacimiento7.text.toString(),
                                                                                        claveEntidad: _entidadNacimiento7.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento7.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil7.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado7.trimLeft(),
                                                                                        claveParentesco: _parentesco7.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco: parentesco7.trimLeft(),
                                                                                      );
                                                                                      await dbHelper.upDateEstructuraFamiliar7(DModel7).then((estructuraFamilar) {
                                                                                        alertDialog(context, "Se registro correctamente");
                                                                                      }).catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(context, "Error: No se guardaron los datos");
                                                                                      });

                                                                                      String sexo8 = _sexo8.name.toString();
                                                                                      if (sexo8 == 'hombre') {
                                                                                        sexo8 = '1 1 Hombre';
                                                                                      } else if (sexo8 == 'mujer') {
                                                                                        sexo8 = '2 2 Mujer';
                                                                                      } else if (sexo8 == 'otro') {
                                                                                        sexo8 = '3 3 Otro';
                                                                                      }

                                                                                      await metodos(_entidadNacimiento8.text,_estadoCivil8.text,_parentesco8.text);


                                                                                      var EstadoCivil8 = _estadoCivil8.text.toString(); // 'artlang'
                                                                                      final estado8 = EstadoCivil8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                      var Parentesco8 = _parentesco8.text.toString(); // 'artlang'
                                                                                      final parentesco8 = Parentesco8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                      var EntidadN8 = _entidadNacimiento8.text.toString(); // 'artlang'
                                                                                      final entidadNacimiento8 = EntidadN8.replaceAll("1", "").replaceAll("2", "");

                                                                                      EstructuraFamilarModel DModel8 = EstructuraFamilarModel(
                                                                                        folio: int.parse(widget.folio),
                                                                                        nombre: _nombre8.text.toString(),
                                                                                        primerApellido: _primerApellido8.text.toString(),
                                                                                        segundoApellido: _segundoApellido8.text.toString(),
                                                                                        claveSexo: sexo8.substring(0, 1),
                                                                                        ordenSexo: sexo8.substring(0, 1),
                                                                                        sexo: _sexo8.name.toString(),
                                                                                        fechaNacimiento: _fechaNacimiento8.text.toString(),
                                                                                        claveEntidad: _entidadNacimiento8.text.toString().substring(0, 2).trimRight(),
                                                                                        entidadNacimiento: entidadNacimiento8.trimLeft(),
                                                                                        claveEstadoCivil: _estadoCivil8.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                        estadoCivil: estado8.trimLeft(),
                                                                                        claveParentesco: _parentesco8.text.toString().substring(0, 2).trimRight(),
                                                                                        ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                        parentesco: parentesco8.trimLeft(),
                                                                                      );
                                                                                      await dbHelper.upDateEstructuraFamiliar8(DModel8).then((estructuraFamilar) {
                                                                                        alertDialog(context, "Se registro correctamente");
                                                                                        Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                                                                          return new ActualizarEstudio(widget.folio);
                                                                                        }));
                                                                                      }).catchError((error) {
                                                                                        print(error);
                                                                                        alertDialog(context, "Error: No se guardaron los datos");
                                                                                      });
                                                                                    } else {
                                                                                      alertDialog(context, "El a??o en la fecha no corresponde");
                                                                                    }
                                                                                  } else {
                                                                                    alertDialog(context, "El mes seleccionado en la fecha no es correcto");
                                                                                  }
                                                                                } else {
                                                                                  alertDialog(context, "Los dias seleccionados en la fecha no son correcotos");
                                                                                }
                                                                              } else {
                                                                                alertDialog(context, "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                              }
                                                                            } else {
                                                                              alertDialog(context, "La fecha se encuentra basia");
                                                                            }
                                                                          } else {
                                                                            alertDialog(context,
                                                                                "El a??o en la fecha no corresponde");
                                                                          }
                                                                        } else {
                                                                          alertDialog(
                                                                              context,
                                                                              "El mes seleccionado en la fecha no es correcto");
                                                                        }
                                                                      } else {
                                                                        alertDialog(
                                                                            context,
                                                                            "Los dias seleccionados en la fecha no son correcotos");
                                                                      }
                                                                    } else {
                                                                      alertDialog(
                                                                          context,
                                                                          "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                    }
                                                                  } else {
                                                                    alertDialog(
                                                                        context,
                                                                        "La fecha se encuentra basia");
                                                                  }
                                                                } else {
                                                                  alertDialog(
                                                                      context,
                                                                      "El a??o en la fecha no corresponde");
                                                                }
                                                              } else {
                                                                alertDialog(
                                                                    context,
                                                                    "El mes seleccionado en la fecha no es correcto");
                                                              }
                                                            } else {
                                                              alertDialog(
                                                                  context,
                                                                  "Los dias seleccionados en la fecha no son correcotos");
                                                            }
                                                          } else {
                                                            alertDialog(context,
                                                                "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                          }
                                                        } else {
                                                          alertDialog(context,
                                                              "La fecha se encuentra basia");
                                                        }
                                                      } else {
                                                        alertDialog(context,
                                                            "El a??o en la fecha no corresponde");
                                                      }
                                                    } else {
                                                      alertDialog(context,
                                                          "El mes seleccionado en la fecha no es correcto");
                                                    }
                                                  } else {
                                                    alertDialog(context,
                                                        "Los dias seleccionados en la fecha no son correcotos");
                                                  }
                                                } else {
                                                  alertDialog(context,
                                                      "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                }
                                              } else {
                                                alertDialog(context,
                                                    "La fecha se encuentra basia");
                                              }
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else if (_nombre10.text.toString().isEmpty) {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              if (!_fechaNacimiento5
                                                  .text.isEmpty) {
                                                if (_fechaNacimiento5
                                                    .text.length ==
                                                    10) {
                                                  if (int.parse(
                                                      _fechaNacimiento5
                                                          .text
                                                          .substring(
                                                          0, 2)) >=
                                                      1 &&
                                                      int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              0, 2)) <=
                                                          31) {
                                                    if (int.parse(
                                                        _fechaNacimiento5
                                                            .text
                                                            .substring(
                                                            3,
                                                            5)) >=
                                                        1 &&
                                                        int.parse(
                                                            _fechaNacimiento5
                                                                .text
                                                                .substring(
                                                                3,
                                                                5)) <=
                                                            12) {
                                                      if (int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              6, 10)) <=
                                                          2022) {
                                                        if (!_fechaNacimiento6
                                                            .text.isEmpty) {
                                                          if (_fechaNacimiento6
                                                              .text
                                                              .length ==
                                                              10) {
                                                            if (int.parse(_fechaNacimiento6
                                                                .text
                                                                .substring(
                                                                0,
                                                                2)) >=
                                                                1 &&
                                                                int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    0,
                                                                    2)) <=
                                                                    31) {
                                                              if (int.parse(_fechaNacimiento6
                                                                  .text
                                                                  .substring(
                                                                  3,
                                                                  5)) >=
                                                                  1 &&
                                                                  int.parse(_fechaNacimiento6
                                                                      .text
                                                                      .substring(
                                                                      3,
                                                                      5)) <=
                                                                      12) {
                                                                if (int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    6,
                                                                    10)) <=
                                                                    2022) {
                                                                  if (!_fechaNacimiento7
                                                                      .text
                                                                      .isEmpty) {
                                                                    if (_fechaNacimiento7
                                                                        .text
                                                                        .length ==
                                                                        10) {
                                                                      if (int.parse(_fechaNacimiento7.text.substring(0, 2)) >=
                                                                          1 &&
                                                                          int.parse(_fechaNacimiento7.text.substring(0, 2)) <=
                                                                              31) {
                                                                        if (int.parse(_fechaNacimiento7.text.substring(3, 5)) >=
                                                                            1 &&
                                                                            int.parse(_fechaNacimiento7.text.substring(3, 5)) <=
                                                                                12) {
                                                                          if (int.parse(_fechaNacimiento7.text.substring(6, 10)) <=
                                                                              2022) {
                                                                            if (!_fechaNacimiento8.text.isEmpty) {
                                                                              if (_fechaNacimiento8.text.length == 10) {
                                                                                if (int.parse(_fechaNacimiento8.text.substring(0, 2)) >= 1 && int.parse(_fechaNacimiento8.text.substring(0, 2)) <= 31) {
                                                                                  if (int.parse(_fechaNacimiento8.text.substring(3, 5)) >= 1 && int.parse(_fechaNacimiento8.text.substring(3, 5)) <= 12) {
                                                                                    if (int.parse(_fechaNacimiento8.text.substring(6, 10)) <= 2022) {
                                                                                      if (!_fechaNacimiento9.text.isEmpty) {
                                                                                        if (_fechaNacimiento9.text.length == 10) {
                                                                                          if (int.parse(_fechaNacimiento9.text.substring(0, 2)) >= 1 && int.parse(_fechaNacimiento9.text.substring(0, 2)) <= 31) {
                                                                                            if (int.parse(_fechaNacimiento9.text.substring(3, 5)) >= 1 && int.parse(_fechaNacimiento9.text.substring(3, 5)) <= 12) {
                                                                                              if (int.parse(_fechaNacimiento9.text.substring(6, 10)) <= 2022) {
                                                                                                String sexo1 = _sexo1.name.toString();
                                                                                                if (sexo1 == 'hombre') {
                                                                                                  sexo1 = '1 1 Hombre';
                                                                                                } else if (sexo1 == 'mujer') {
                                                                                                  sexo1 = '2 2 Mujer';
                                                                                                } else if (sexo1 == 'otro') {
                                                                                                  sexo1 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                                                                                var EstadoCivil =
                                                                                                _estadoCivil1.text.toString(); // 'artlang'
                                                                                                final estado = EstadoCivil.replaceAll("1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");
                                                                                                var Parentesco =
                                                                                                _parentesco1.text.toString(); // 'artlang'
                                                                                                final parentesco = Parentesco.replaceAll("1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                var EntidadN =
                                                                                                _entidadNacimiento1.text.toString(); // 'artlang'
                                                                                                final entidadNacimiento =
                                                                                                EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel DModel =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre: _nombre1.text.toString(),
                                                                                                  primerApellido: _primerApellido1.text.toString(),
                                                                                                  segundoApellido: _segundoApellido1.text.toString(),
                                                                                                  claveSexo: sexo1.substring(0, 1),
                                                                                                  ordenSexo: sexo1.substring(0, 1),
                                                                                                  sexo: _sexo1.name.toString(),
                                                                                                  fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                                                                  claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado.trimLeft(),
                                                                                                  claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco: parentesco.trimLeft(),
                                                                                                );
                                                                                                await dbHelper
                                                                                                    .upDateEstructuraFamiliar1(DModel)
                                                                                                    .then((estructuraFamilar) {})
                                                                                                    .catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(
                                                                                                      context, "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String sexo2 = _sexo2.name.toString();
                                                                                                if (sexo2 == 'hombre') {
                                                                                                  sexo2 = '1 1 Hombre';
                                                                                                } else if (sexo2 == 'mujer') {
                                                                                                  sexo2 = '2 2 Mujer';
                                                                                                } else if (sexo2 == 'otro') {
                                                                                                  sexo2 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                                                                                var EstadoCivil2 =
                                                                                                _estadoCivil2.text.toString(); // 'artlang'
                                                                                                final estado2 = EstadoCivil2.replaceAll("1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");
                                                                                                var Parentesco2 =
                                                                                                _parentesco2.text.toString(); // 'artlang'
                                                                                                final parentesco2 = Parentesco2.replaceAll("1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                var EntidadN2 =
                                                                                                _entidadNacimiento2.text.toString(); // 'artlang'
                                                                                                final entidadNacimiento2 =
                                                                                                EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel DModel2 =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre: _nombre2.text.toString(),
                                                                                                  primerApellido: _primerApellido2.text.toString(),
                                                                                                  segundoApellido: _segundoApellido2.text.toString(),
                                                                                                  claveSexo: sexo2.substring(0, 1),
                                                                                                  ordenSexo: sexo2.substring(0, 1),
                                                                                                  sexo: _sexo2.name.toString(),
                                                                                                  fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                                                                  claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado2.trimLeft(),
                                                                                                  claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco: parentesco2.trimLeft(),
                                                                                                );
                                                                                                await dbHelper
                                                                                                    .upDateEstructuraFamiliar2(DModel2)
                                                                                                    .then((estructuraFamilar) {
                                                                                                  alertDialog(
                                                                                                      context, "Se registro correctamente");
                                                                                                }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context,
                                                                                                      "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String sexo3 = _sexo3.name.toString();
                                                                                                if (sexo3 == 'hombre') {
                                                                                                  sexo3 = '1 1 Hombre';
                                                                                                } else if (sexo3 == 'mujer') {
                                                                                                  sexo3 = '2 2 Mujer';
                                                                                                } else if (sexo3 == 'otro') {
                                                                                                  sexo3 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                                                                                var EstadoCivil3 = _estadoCivil3.text
                                                                                                    .toString(); // 'artlang'
                                                                                                final estado3 =
                                                                                                EstadoCivil3.replaceAll("1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");
                                                                                                var Parentesco3 = _parentesco3.text
                                                                                                    .toString(); // 'artlang'
                                                                                                final parentesco3 =
                                                                                                Parentesco3.replaceAll("1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                var EntidadN3 = _entidadNacimiento3.text
                                                                                                    .toString(); // 'artlang'
                                                                                                final entidadNacimiento3 =
                                                                                                EntidadN3.replaceAll("1", "")
                                                                                                    .replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel DModel3 =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre: _nombre3.text.toString(),
                                                                                                  primerApellido:
                                                                                                  _primerApellido3.text.toString(),
                                                                                                  segundoApellido:
                                                                                                  _segundoApellido3.text.toString(),
                                                                                                  claveSexo: sexo3.substring(0, 1),
                                                                                                  ordenSexo: sexo3.substring(0, 1),
                                                                                                  sexo: _sexo3.name.toString(),
                                                                                                  fechaNacimiento:
                                                                                                  _fechaNacimiento3.text.toString(),
                                                                                                  claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado3.trimLeft(),
                                                                                                  claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco: parentesco3.trimLeft(),
                                                                                                );
                                                                                                await dbHelper
                                                                                                    .upDateEstructuraFamiliar3(
                                                                                                    DModel3)
                                                                                                    .then((estructuraFamilar) {
                                                                                                  alertDialog(context,
                                                                                                      "Se registro correctamente");
                                                                                                }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context,
                                                                                                      "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String sexo4 =
                                                                                                _sexo4.name.toString();
                                                                                                if (sexo4 == 'hombre') {
                                                                                                  sexo4 = '1 1 Hombre';
                                                                                                } else if (sexo4 == 'mujer') {
                                                                                                  sexo4 = '2 2 Mujer';
                                                                                                } else if (sexo4 == 'otro') {
                                                                                                  sexo4 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                                                                                var EstadoCivil4 = _estadoCivil4
                                                                                                    .text
                                                                                                    .toString(); // 'artlang'
                                                                                                final estado4 =
                                                                                                EstadoCivil4.replaceAll(
                                                                                                    "1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");
                                                                                                var Parentesco4 = _parentesco4
                                                                                                    .text
                                                                                                    .toString(); // 'artlang'
                                                                                                final parentesco4 =
                                                                                                Parentesco4.replaceAll(
                                                                                                    "1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                var EntidadN4 =
                                                                                                _entidadNacimiento4.text
                                                                                                    .toString(); // 'artlang'
                                                                                                final entidadNacimiento4 =
                                                                                                EntidadN4.replaceAll("1", "")
                                                                                                    .replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel DModel4 =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre:
                                                                                                  _nombre4.text.toString(),
                                                                                                  primerApellido: _primerApellido4
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  segundoApellido:
                                                                                                  _segundoApellido4.text
                                                                                                      .toString(),
                                                                                                  claveSexo:
                                                                                                  sexo4.substring(0, 1),
                                                                                                  ordenSexo:
                                                                                                  sexo4.substring(0, 1),
                                                                                                  sexo: _sexo4.name.toString(),
                                                                                                  fechaNacimiento:
                                                                                                  _fechaNacimiento4.text
                                                                                                      .toString(),
                                                                                                  claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado4.trimLeft(),
                                                                                                  claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco:
                                                                                                  parentesco4.trimLeft(),
                                                                                                );
                                                                                                await dbHelper
                                                                                                    .upDateEstructuraFamiliar4(
                                                                                                    DModel4)
                                                                                                    .then(
                                                                                                        (estructuraFamilar) {
                                                                                                      alertDialog(context,
                                                                                                          "Se registro correctamente");
                                                                                                    }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context,
                                                                                                      "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String sexo5 = _sexo5
                                                                                                    .name
                                                                                                    .toString();
                                                                                                if (sexo5 == 'hombre') {
                                                                                                  sexo5 = '1 1 Hombre';
                                                                                                } else if (sexo5 ==
                                                                                                    'mujer') {
                                                                                                  sexo5 = '2 2 Mujer';
                                                                                                } else if (sexo5 ==
                                                                                                    'otro') {
                                                                                                  sexo5 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento5.text,_estadoCivil5.text,_parentesco5.text);


                                                                                                var EstadoCivil5 =
                                                                                                _estadoCivil5.text
                                                                                                    .toString(); // 'artlang'
                                                                                                final estado5 = EstadoCivil5
                                                                                                    .replaceAll(
                                                                                                    "1", "")
                                                                                                    .replaceAll("2", "")
                                                                                                    .replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll(
                                                                                                    "0", "");
                                                                                                var Parentesco5 =
                                                                                                _parentesco5.text
                                                                                                    .toString(); // 'artlang'
                                                                                                final parentesco5 =
                                                                                                Parentesco5
                                                                                                    .replaceAll(
                                                                                                    "1", "")
                                                                                                    .replaceAll(
                                                                                                    "2", "")
                                                                                                    .replaceAll(
                                                                                                    "3", "")
                                                                                                    .replaceAll(
                                                                                                    "4", "")
                                                                                                    .replaceAll(
                                                                                                    "5", "")
                                                                                                    .replaceAll(
                                                                                                    "6", "")
                                                                                                    .replaceAll(
                                                                                                    "7", "")
                                                                                                    .replaceAll(
                                                                                                    "8", "")
                                                                                                    .replaceAll(
                                                                                                    "9", "")
                                                                                                    .replaceAll(
                                                                                                    "0", "");

                                                                                                var EntidadN5 =
                                                                                                _entidadNacimiento5
                                                                                                    .text
                                                                                                    .toString(); // 'artlang'
                                                                                                final entidadNacimiento5 =
                                                                                                EntidadN5
                                                                                                    .replaceAll(
                                                                                                    "1", "")
                                                                                                    .replaceAll(
                                                                                                    "2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel
                                                                                                DModel5 =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(
                                                                                                      widget.folio),
                                                                                                  nombre: _nombre5.text
                                                                                                      .toString(),
                                                                                                  primerApellido:
                                                                                                  _primerApellido5
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  segundoApellido:
                                                                                                  _segundoApellido5
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  claveSexo: sexo5
                                                                                                      .substring(0, 1),
                                                                                                  ordenSexo: sexo5
                                                                                                      .substring(0, 1),
                                                                                                  sexo: _sexo5.name
                                                                                                      .toString(),
                                                                                                  fechaNacimiento:
                                                                                                  _fechaNacimiento5
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  claveEntidad: _entidadNacimiento5.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento5.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil5.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado5.trimLeft(),
                                                                                                  claveParentesco: _parentesco5.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco:
                                                                                                  parentesco5
                                                                                                      .trimLeft(),
                                                                                                );
                                                                                                await dbHelper
                                                                                                    .upDateEstructuraFamiliar5(
                                                                                                    DModel5)
                                                                                                    .then(
                                                                                                        (estructuraFamilar) {
                                                                                                      alertDialog(
                                                                                                          context,
                                                                                                          "Se registro correctamente");
                                                                                                    }).catchError(
                                                                                                        (error) {
                                                                                                      print(
                                                                                                          error);
                                                                                                      alertDialog(
                                                                                                          context,
                                                                                                          "Error: No se guardaron los datos");
                                                                                                    });

                                                                                                String sexo6 =
                                                                                                _sexo6
                                                                                                    .name
                                                                                                    .toString();
                                                                                                if (sexo6 ==
                                                                                                    'hombre') {
                                                                                                  sexo6 =
                                                                                                  '1 1 Hombre';
                                                                                                } else if (sexo6 ==
                                                                                                    'mujer') {
                                                                                                  sexo6 =
                                                                                                  '2 2 Mujer';
                                                                                                } else if (sexo6 ==
                                                                                                    'otro') {
                                                                                                  sexo6 =
                                                                                                  '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento6.text,_estadoCivil6.text,_parentesco6.text);


                                                                                                var EstadoCivil6 =
                                                                                                _estadoCivil6
                                                                                                    .text
                                                                                                    .toString(); // 'artlang'
                                                                                                final estado6 = EstadoCivil6
                                                                                                    .replaceAll(
                                                                                                    "1",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "2", "")
                                                                                                    .replaceAll(
                                                                                                    "3", "")
                                                                                                    .replaceAll(
                                                                                                    "4", "")
                                                                                                    .replaceAll(
                                                                                                    "5", "")
                                                                                                    .replaceAll(
                                                                                                    "6", "")
                                                                                                    .replaceAll(
                                                                                                    "7", "")
                                                                                                    .replaceAll(
                                                                                                    "8",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "9",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "0",
                                                                                                    "");
                                                                                                var Parentesco6 =
                                                                                                _parentesco6
                                                                                                    .text
                                                                                                    .toString(); // 'artlang'
                                                                                                final parentesco6 = Parentesco6
                                                                                                    .replaceAll(
                                                                                                    "1",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "2", "")
                                                                                                    .replaceAll(
                                                                                                    "3", "")
                                                                                                    .replaceAll(
                                                                                                    "4", "")
                                                                                                    .replaceAll(
                                                                                                    "5", "")
                                                                                                    .replaceAll(
                                                                                                    "6", "")
                                                                                                    .replaceAll(
                                                                                                    "7", "")
                                                                                                    .replaceAll(
                                                                                                    "8",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "9",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "0",
                                                                                                    "");

                                                                                                var EntidadN6 =
                                                                                                _entidadNacimiento6
                                                                                                    .text
                                                                                                    .toString(); // 'artlang'
                                                                                                final entidadNacimiento6 = EntidadN6
                                                                                                    .replaceAll(
                                                                                                    "1",
                                                                                                    "")
                                                                                                    .replaceAll(
                                                                                                    "2",
                                                                                                    "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel
                                                                                                DModel6 =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(
                                                                                                      widget
                                                                                                          .folio),
                                                                                                  nombre: _nombre6
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  primerApellido:
                                                                                                  _primerApellido6
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  segundoApellido:
                                                                                                  _segundoApellido6
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  claveSexo: sexo6
                                                                                                      .substring(
                                                                                                      0,
                                                                                                      1),
                                                                                                  ordenSexo: sexo6
                                                                                                      .substring(
                                                                                                      0,
                                                                                                      1),
                                                                                                  sexo: _sexo6
                                                                                                      .name
                                                                                                      .toString(),
                                                                                                  fechaNacimiento:
                                                                                                  _fechaNacimiento6
                                                                                                      .text
                                                                                                      .toString(),
                                                                                                  claveEntidad: _entidadNacimiento6.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento6.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil6.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado6.trimLeft(),
                                                                                                  claveParentesco: _parentesco6.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco:
                                                                                                  parentesco6
                                                                                                      .trimLeft(),
                                                                                                );
                                                                                                await dbHelper.upDateEstructuraFamiliar6(DModel6).then((estructuraFamilar) {
                                                                                                  alertDialog(context, "Se registro correctamente");
                                                                                                }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context, "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String
                                                                                                sexo7 =
                                                                                                _sexo7.name.toString();

                                                                                                if (sexo7 ==
                                                                                                    'hombre') {
                                                                                                  sexo7 = '1 1 Hombre';
                                                                                                } else if (sexo7 ==
                                                                                                    'mujer') {
                                                                                                  sexo7 = '2 2 Mujer';
                                                                                                } else if (sexo7 ==
                                                                                                    'otro') {
                                                                                                  sexo7 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento7.text,_estadoCivil7.text,_parentesco7.text);


                                                                                                var EstadoCivil7 =
                                                                                                _estadoCivil7.text.toString(); // 'artlang'
                                                                                                final estado7 =
                                                                                                EstadoCivil7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                var Parentesco7 =
                                                                                                _parentesco7.text.toString(); // 'artlang'
                                                                                                final parentesco7 =
                                                                                                Parentesco7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                var EntidadN7 =
                                                                                                _entidadNacimiento7.text.toString(); // 'artlang'
                                                                                                final entidadNacimiento7 =
                                                                                                EntidadN7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel
                                                                                                DModel7 =
                                                                                                EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre: _nombre7.text.toString(),
                                                                                                  primerApellido: _primerApellido7.text.toString(),
                                                                                                  segundoApellido: _segundoApellido7.text.toString(),
                                                                                                  claveSexo: sexo7.substring(0, 1),
                                                                                                  ordenSexo: sexo7.substring(0, 1),
                                                                                                  sexo: _sexo7.name.toString(),
                                                                                                  fechaNacimiento: _fechaNacimiento7.text.toString(),
                                                                                                  claveEntidad: _entidadNacimiento7.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento7.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil7.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado7.trimLeft(),
                                                                                                  claveParentesco: _parentesco7.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco: parentesco7.trimLeft(),
                                                                                                );
                                                                                                await dbHelper.upDateEstructuraFamiliar7(DModel7).then((estructuraFamilar) {
                                                                                                  alertDialog(context, "Se registro correctamente");
                                                                                                }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context, "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String sexo8 = _sexo8.name.toString();
                                                                                                if (sexo8 == 'hombre') {
                                                                                                  sexo8 = '1 1 Hombre';
                                                                                                } else if (sexo8 == 'mujer') {
                                                                                                  sexo8 = '2 2 Mujer';
                                                                                                } else if (sexo8 == 'otro') {
                                                                                                  sexo8 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento8.text,_estadoCivil8.text,_parentesco8.text);


                                                                                                var EstadoCivil8 = _estadoCivil8.text.toString(); // 'artlang'
                                                                                                final estado8 = EstadoCivil8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                var Parentesco8 = _parentesco8.text.toString(); // 'artlang'
                                                                                                final parentesco8 = Parentesco8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                var EntidadN8 = _entidadNacimiento8.text.toString(); // 'artlang'
                                                                                                final entidadNacimiento8 = EntidadN8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel DModel8 = EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre: _nombre8.text.toString(),
                                                                                                  primerApellido: _primerApellido8.text.toString(),
                                                                                                  segundoApellido: _segundoApellido8.text.toString(),
                                                                                                  claveSexo: sexo8.substring(0, 1),
                                                                                                  ordenSexo: sexo8.substring(0, 1),
                                                                                                  sexo: _sexo8.name.toString(),
                                                                                                  fechaNacimiento: _fechaNacimiento8.text.toString(),
                                                                                                  claveEntidad: _entidadNacimiento8.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento8.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil8.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado8.trimLeft(),
                                                                                                  claveParentesco: _parentesco8.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco: parentesco8.trimLeft(),
                                                                                                );
                                                                                                await dbHelper.upDateEstructuraFamiliar8(DModel8).then((estructuraFamilar) {
                                                                                                  alertDialog(context, "Se registro correctamente");
                                                                                                }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context, "Error: No se guardaron los datos");
                                                                                                });

                                                                                                String sexo9 = _sexo9.name.toString();
                                                                                                if (sexo9 == 'hombre') {
                                                                                                  sexo9 = '1 1 Hombre';
                                                                                                } else if (sexo9 == 'mujer') {
                                                                                                  sexo9 = '2 2 Mujer';
                                                                                                } else if (sexo9 == 'otro') {
                                                                                                  sexo9 = '3 3 Otro';
                                                                                                }

                                                                                                await metodos(_entidadNacimiento9.text,_estadoCivil9.text,_parentesco9.text);


                                                                                                var EstadoCivil9 = _estadoCivil9.text.toString(); // 'artlang'
                                                                                                final estado9 = EstadoCivil9.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                var Parentesco9 = _parentesco9.text.toString(); // 'artlang'
                                                                                                final parentesco9 = Parentesco9.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                var EntidadN9 = _entidadNacimiento9.text.toString(); // 'artlang'
                                                                                                final entidadNacimiento9 = EntidadN9.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                    .replaceAll("4", "")
                                                                                                    .replaceAll("5", "")
                                                                                                    .replaceAll("6", "")
                                                                                                    .replaceAll("7", "")
                                                                                                    .replaceAll("8", "")
                                                                                                    .replaceAll("9", "")
                                                                                                    .replaceAll("0", "");

                                                                                                EstructuraFamilarModel DModel9 = EstructuraFamilarModel(
                                                                                                  folio: int.parse(widget.folio),
                                                                                                  nombre: _nombre9.text.toString(),
                                                                                                  primerApellido: _primerApellido9.text.toString(),
                                                                                                  segundoApellido: _segundoApellido9.text.toString(),
                                                                                                  claveSexo: sexo9.substring(0, 1),
                                                                                                  ordenSexo: sexo9.substring(0, 1),
                                                                                                  sexo: _sexo9.name.toString(),
                                                                                                  fechaNacimiento: _fechaNacimiento9.text.toString(),
                                                                                                  claveEntidad: _entidadNacimiento9.text.toString().substring(0, 2).trimRight(),
                                                                                                  entidadNacimiento: entidadNacimiento9.trimLeft(),
                                                                                                  claveEstadoCivil: _estadoCivil9.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                  estadoCivil: estado9.trimLeft(),
                                                                                                  claveParentesco: _parentesco9.text.toString().substring(0, 2).trimRight(),
                                                                                                  ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                  parentesco: parentesco9.trimLeft(),
                                                                                                );
                                                                                                await dbHelper.upDateEstructuraFamiliar9(DModel9).then((estructuraFamilar) {
                                                                                                  alertDialog(context, "Se registro correctamente");
                                                                                                  Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                                                                                    return new ActualizarEstudio(widget.folio);
                                                                                                  }));
                                                                                                }).catchError((error) {
                                                                                                  print(error);
                                                                                                  alertDialog(context, "Error: No se guardaron los datos");
                                                                                                });
                                                                                              } else {
                                                                                                alertDialog(context, "El a??o en la fecha no corresponde");
                                                                                              }
                                                                                            } else {
                                                                                              alertDialog(context, "El mes seleccionado en la fecha no es correcto");
                                                                                            }
                                                                                          } else {
                                                                                            alertDialog(context, "Los dias seleccionados en la fecha no son correcotos");
                                                                                          }
                                                                                        } else {
                                                                                          alertDialog(context, "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                                        }
                                                                                      } else {
                                                                                        alertDialog(context, "La fecha se encuentra basia");
                                                                                      }
                                                                                    } else {
                                                                                      alertDialog(context, "El a??o en la fecha no corresponde");
                                                                                    }
                                                                                  } else {
                                                                                    alertDialog(context, "El mes seleccionado en la fecha no es correcto");
                                                                                  }
                                                                                } else {
                                                                                  alertDialog(context, "Los dias seleccionados en la fecha no son correcotos");
                                                                                }
                                                                              } else {
                                                                                alertDialog(context, "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                              }
                                                                            } else {
                                                                              alertDialog(context, "La fecha se encuentra basia");
                                                                            }
                                                                          } else {
                                                                            alertDialog(context,
                                                                                "El a??o en la fecha no corresponde");
                                                                          }
                                                                        } else {
                                                                          alertDialog(
                                                                              context,
                                                                              "El mes seleccionado en la fecha no es correcto");
                                                                        }
                                                                      } else {
                                                                        alertDialog(
                                                                            context,
                                                                            "Los dias seleccionados en la fecha no son correcotos");
                                                                      }
                                                                    } else {
                                                                      alertDialog(
                                                                          context,
                                                                          "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                    }
                                                                  } else {
                                                                    alertDialog(
                                                                        context,
                                                                        "La fecha se encuentra basia");
                                                                  }
                                                                } else {
                                                                  alertDialog(
                                                                      context,
                                                                      "El a??o en la fecha no corresponde");
                                                                }
                                                              } else {
                                                                alertDialog(
                                                                    context,
                                                                    "El mes seleccionado en la fecha no es correcto");
                                                              }
                                                            } else {
                                                              alertDialog(
                                                                  context,
                                                                  "Los dias seleccionados en la fecha no son correcotos");
                                                            }
                                                          } else {
                                                            alertDialog(context,
                                                                "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                          }
                                                        } else {
                                                          alertDialog(context,
                                                              "La fecha se encuentra basia");
                                                        }
                                                      } else {
                                                        alertDialog(context,
                                                            "El a??o en la fecha no corresponde");
                                                      }
                                                    } else {
                                                      alertDialog(context,
                                                          "El mes seleccionado en la fecha no es correcto");
                                                    }
                                                  } else {
                                                    alertDialog(context,
                                                        "Los dias seleccionados en la fecha no son correcotos");
                                                  }
                                                } else {
                                                  alertDialog(context,
                                                      "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                }
                                              } else {
                                                alertDialog(context,
                                                    "La fecha se encuentra basia");
                                              }
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    } else {
      if (!_fechaNacimiento1.text.isEmpty) {
        if (_fechaNacimiento1.text.length == 10) {
          if (int.parse(_fechaNacimiento1.text.substring(0, 2)) >= 1 &&
              int.parse(_fechaNacimiento1.text.substring(0, 2)) <= 31) {
            if (int.parse(_fechaNacimiento1.text.substring(3, 5)) >= 1 &&
                int.parse(_fechaNacimiento1.text.substring(3, 5)) <= 12) {
              if (int.parse(_fechaNacimiento1.text.substring(6, 10)) <= 2022) {
                if (!_fechaNacimiento2.text.isEmpty) {
                  if (_fechaNacimiento2.text.length == 10) {
                    if (int.parse(_fechaNacimiento2.text.substring(0, 2)) >=
                        1 &&
                        int.parse(_fechaNacimiento2.text.substring(0, 2)) <=
                            31) {
                      if (int.parse(_fechaNacimiento2.text.substring(3, 5)) >=
                          1 &&
                          int.parse(_fechaNacimiento2.text.substring(3, 5)) <=
                              12) {
                        if (int.parse(
                            _fechaNacimiento2.text.substring(6, 10)) <=
                            2022) {
                          if (!_fechaNacimiento3.text.isEmpty) {
                            if (_fechaNacimiento3.text.length == 10) {
                              if (int.parse(_fechaNacimiento3.text
                                  .substring(0, 2)) >=
                                  1 &&
                                  int.parse(_fechaNacimiento3.text
                                      .substring(0, 2)) <=
                                      31) {
                                if (int.parse(_fechaNacimiento3.text
                                    .substring(3, 5)) >=
                                    1 &&
                                    int.parse(_fechaNacimiento3.text
                                        .substring(3, 5)) <=
                                        12) {
                                  if (int.parse(_fechaNacimiento3.text
                                      .substring(6, 10)) <=
                                      2022) {
                                    if (!_fechaNacimiento4.text.isEmpty) {
                                      if (_fechaNacimiento4.text.length == 10) {
                                        if (int.parse(_fechaNacimiento4.text
                                            .substring(0, 2)) >=
                                            1 &&
                                            int.parse(_fechaNacimiento4.text
                                                .substring(0, 2)) <=
                                                31) {
                                          if (int.parse(_fechaNacimiento4.text
                                              .substring(3, 5)) >=
                                              1 &&
                                              int.parse(_fechaNacimiento4.text
                                                  .substring(3, 5)) <=
                                                  12) {
                                            if (int.parse(_fechaNacimiento4.text
                                                .substring(6, 10)) <=
                                                2022) {
                                              if (!_fechaNacimiento5
                                                  .text.isEmpty) {
                                                if (_fechaNacimiento5
                                                    .text.length ==
                                                    10) {
                                                  if (int.parse(
                                                      _fechaNacimiento5
                                                          .text
                                                          .substring(
                                                          0, 2)) >=
                                                      1 &&
                                                      int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              0, 2)) <=
                                                          31) {
                                                    if (int.parse(
                                                        _fechaNacimiento5
                                                            .text
                                                            .substring(
                                                            3,
                                                            5)) >=
                                                        1 &&
                                                        int.parse(
                                                            _fechaNacimiento5
                                                                .text
                                                                .substring(
                                                                3,
                                                                5)) <=
                                                            12) {
                                                      if (int.parse(
                                                          _fechaNacimiento5
                                                              .text
                                                              .substring(
                                                              6, 10)) <=
                                                          2022) {
                                                        if (!_fechaNacimiento6
                                                            .text.isEmpty) {
                                                          if (_fechaNacimiento6
                                                              .text
                                                              .length ==
                                                              10) {
                                                            if (int.parse(_fechaNacimiento6
                                                                .text
                                                                .substring(
                                                                0,
                                                                2)) >=
                                                                1 &&
                                                                int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    0,
                                                                    2)) <=
                                                                    31) {
                                                              if (int.parse(_fechaNacimiento6
                                                                  .text
                                                                  .substring(
                                                                  3,
                                                                  5)) >=
                                                                  1 &&
                                                                  int.parse(_fechaNacimiento6
                                                                      .text
                                                                      .substring(
                                                                      3,
                                                                      5)) <=
                                                                      12) {
                                                                if (int.parse(_fechaNacimiento6
                                                                    .text
                                                                    .substring(
                                                                    6,
                                                                    10)) <=
                                                                    2022) {
                                                                  if (!_fechaNacimiento7
                                                                      .text
                                                                      .isEmpty) {
                                                                    if (_fechaNacimiento7
                                                                        .text
                                                                        .length ==
                                                                        10) {
                                                                      if (int.parse(_fechaNacimiento7.text.substring(0, 2)) >=
                                                                          1 &&
                                                                          int.parse(_fechaNacimiento7.text.substring(0, 2)) <=
                                                                              31) {
                                                                        if (int.parse(_fechaNacimiento7.text.substring(3, 5)) >=
                                                                            1 &&
                                                                            int.parse(_fechaNacimiento7.text.substring(3, 5)) <=
                                                                                12) {
                                                                          if (int.parse(_fechaNacimiento7.text.substring(6, 10)) <=
                                                                              2022) {
                                                                            if (!_fechaNacimiento8.text.isEmpty) {
                                                                              if (_fechaNacimiento8.text.length == 10) {
                                                                                if (int.parse(_fechaNacimiento8.text.substring(0, 2)) >= 1 && int.parse(_fechaNacimiento8.text.substring(0, 2)) <= 31) {
                                                                                  if (int.parse(_fechaNacimiento8.text.substring(3, 5)) >= 1 && int.parse(_fechaNacimiento8.text.substring(3, 5)) <= 12) {
                                                                                    if (int.parse(_fechaNacimiento8.text.substring(6, 10)) <= 2022) {
                                                                                      if (!_fechaNacimiento9.text.isEmpty) {
                                                                                        if (_fechaNacimiento9.text.length == 10) {
                                                                                          if (int.parse(_fechaNacimiento9.text.substring(0, 2)) >= 1 && int.parse(_fechaNacimiento9.text.substring(0, 2)) <= 31) {
                                                                                            if (int.parse(_fechaNacimiento9.text.substring(3, 5)) >= 1 && int.parse(_fechaNacimiento9.text.substring(3, 5)) <= 12) {
                                                                                              if (int.parse(_fechaNacimiento9.text.substring(6, 10)) <= 2022) {
                                                                                                if (!_fechaNacimiento10.text.isEmpty) {
                                                                                                  if (_fechaNacimiento10.text.length == 10) {
                                                                                                    if (int.parse(_fechaNacimiento10.text.substring(0, 2)) >= 1 && int.parse(_fechaNacimiento10.text.substring(0, 2)) <= 31) {
                                                                                                      if (int.parse(_fechaNacimiento10.text.substring(3, 5)) >= 1 && int.parse(_fechaNacimiento10.text.substring(3, 5)) <= 12) {
                                                                                                        if (int.parse(_fechaNacimiento10.text.substring(6, 10)) <= 2022) {
                                                                                                          String sexo1 = _sexo1.name.toString();
                                                                                                          if (sexo1 == 'hombre') {
                                                                                                            sexo1 = '1 1 Hombre';
                                                                                                          } else if (sexo1 == 'mujer') {
                                                                                                            sexo1 = '2 2 Mujer';
                                                                                                          } else if (sexo1 == 'otro') {
                                                                                                            sexo1 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento1.text,_estadoCivil1.text,_parentesco1.text);


                                                                                                          var EstadoCivil =
                                                                                                          _estadoCivil1.text.toString(); // 'artlang'
                                                                                                          final estado = EstadoCivil.replaceAll("1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");
                                                                                                          var Parentesco =
                                                                                                          _parentesco1.text.toString(); // 'artlang'
                                                                                                          final parentesco = Parentesco.replaceAll("1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          var EntidadN =
                                                                                                          _entidadNacimiento1.text.toString(); // 'artlang'
                                                                                                          final entidadNacimiento =
                                                                                                          EntidadN.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre1.text.toString(),
                                                                                                            primerApellido: _primerApellido1.text.toString(),
                                                                                                            segundoApellido: _segundoApellido1.text.toString(),
                                                                                                            claveSexo: sexo1.substring(0, 1),
                                                                                                            ordenSexo: sexo1.substring(0, 1),
                                                                                                            sexo: _sexo1.name.toString(),
                                                                                                            fechaNacimiento: _fechaNacimiento1.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento1.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil1.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado.trimLeft(),
                                                                                                            claveParentesco: _parentesco1.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper
                                                                                                              .upDateEstructuraFamiliar1(DModel)
                                                                                                              .then((estructuraFamilar) {})
                                                                                                              .catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(
                                                                                                                context, "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo2 = _sexo2.name.toString();
                                                                                                          if (sexo2 == 'hombre') {
                                                                                                            sexo2 = '1 1 Hombre';
                                                                                                          } else if (sexo2 == 'mujer') {
                                                                                                            sexo2 = '2 2 Mujer';
                                                                                                          } else if (sexo2 == 'otro') {
                                                                                                            sexo2 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento2.text,_estadoCivil2.text,_parentesco2.text);


                                                                                                          var EstadoCivil2 =
                                                                                                          _estadoCivil2.text.toString(); // 'artlang'
                                                                                                          final estado2 = EstadoCivil2.replaceAll("1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");
                                                                                                          var Parentesco2 =
                                                                                                          _parentesco2.text.toString(); // 'artlang'
                                                                                                          final parentesco2 = Parentesco2.replaceAll("1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          var EntidadN2 =
                                                                                                          _entidadNacimiento2.text.toString(); // 'artlang'
                                                                                                          final entidadNacimiento2 =
                                                                                                          EntidadN2.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel2 =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre2.text.toString(),
                                                                                                            primerApellido: _primerApellido2.text.toString(),
                                                                                                            segundoApellido: _segundoApellido2.text.toString(),
                                                                                                            claveSexo: sexo2.substring(0, 1),
                                                                                                            ordenSexo: sexo2.substring(0, 1),
                                                                                                            sexo: _sexo2.name.toString(),
                                                                                                            fechaNacimiento: _fechaNacimiento2.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento2.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento2.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil2.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado2.trimLeft(),
                                                                                                            claveParentesco: _parentesco2.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco2.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper
                                                                                                              .upDateEstructuraFamiliar2(DModel2)
                                                                                                              .then((estructuraFamilar) {
                                                                                                            alertDialog(
                                                                                                                context, "Se registro correctamente");
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context,
                                                                                                                "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo3 = _sexo3.name.toString();
                                                                                                          if (sexo3 == 'hombre') {
                                                                                                            sexo3 = '1 1 Hombre';
                                                                                                          } else if (sexo3 == 'mujer') {
                                                                                                            sexo3 = '2 2 Mujer';
                                                                                                          } else if (sexo3 == 'otro') {
                                                                                                            sexo3 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento3.text,_estadoCivil3.text,_parentesco3.text);


                                                                                                          var EstadoCivil3 = _estadoCivil3.text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final estado3 =
                                                                                                          EstadoCivil3.replaceAll("1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");
                                                                                                          var Parentesco3 = _parentesco3.text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final parentesco3 =
                                                                                                          Parentesco3.replaceAll("1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          var EntidadN3 = _entidadNacimiento3.text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final entidadNacimiento3 =
                                                                                                          EntidadN3.replaceAll("1", "")
                                                                                                              .replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel3 =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre3.text.toString(),
                                                                                                            primerApellido:
                                                                                                            _primerApellido3.text.toString(),
                                                                                                            segundoApellido:
                                                                                                            _segundoApellido3.text.toString(),
                                                                                                            claveSexo: sexo3.substring(0, 1),
                                                                                                            ordenSexo: sexo3.substring(0, 1),
                                                                                                            sexo: _sexo3.name.toString(),
                                                                                                            fechaNacimiento:
                                                                                                            _fechaNacimiento3.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento3.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento3.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil3.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado3.trimLeft(),
                                                                                                            claveParentesco: _parentesco3.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco3.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper
                                                                                                              .upDateEstructuraFamiliar3(
                                                                                                              DModel3)
                                                                                                              .then((estructuraFamilar) {
                                                                                                            alertDialog(context,
                                                                                                                "Se registro correctamente");
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context,
                                                                                                                "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo4 =
                                                                                                          _sexo4.name.toString();
                                                                                                          if (sexo4 == 'hombre') {
                                                                                                            sexo4 = '1 1 Hombre';
                                                                                                          } else if (sexo4 == 'mujer') {
                                                                                                            sexo4 = '2 2 Mujer';
                                                                                                          } else if (sexo4 == 'otro') {
                                                                                                            sexo4 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento4.text,_estadoCivil4.text,_parentesco4.text);

                                                                                                          var EstadoCivil4 = _estadoCivil4
                                                                                                              .text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final estado4 =
                                                                                                          EstadoCivil4.replaceAll(
                                                                                                              "1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");
                                                                                                          var Parentesco4 = _parentesco4
                                                                                                              .text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final parentesco4 =
                                                                                                          Parentesco4.replaceAll(
                                                                                                              "1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          var EntidadN4 =
                                                                                                          _entidadNacimiento4.text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final entidadNacimiento4 =
                                                                                                          EntidadN4.replaceAll("1", "")
                                                                                                              .replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel4 =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre:
                                                                                                            _nombre4.text.toString(),
                                                                                                            primerApellido: _primerApellido4
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            segundoApellido:
                                                                                                            _segundoApellido4.text
                                                                                                                .toString(),
                                                                                                            claveSexo:
                                                                                                            sexo4.substring(0, 1),
                                                                                                            ordenSexo:
                                                                                                            sexo4.substring(0, 1),
                                                                                                            sexo: _sexo4.name.toString(),
                                                                                                            fechaNacimiento:
                                                                                                            _fechaNacimiento4.text
                                                                                                                .toString(),
                                                                                                            claveEntidad: _entidadNacimiento4.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento4.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil4.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado4.trimLeft(),
                                                                                                            claveParentesco: _parentesco4.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco:
                                                                                                            parentesco4.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper
                                                                                                              .upDateEstructuraFamiliar4(
                                                                                                              DModel4)
                                                                                                              .then(
                                                                                                                  (estructuraFamilar) {
                                                                                                                alertDialog(context,
                                                                                                                    "Se registro correctamente");
                                                                                                              }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context,
                                                                                                                "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo5 = _sexo5
                                                                                                              .name
                                                                                                              .toString();
                                                                                                          if (sexo5 == 'hombre') {
                                                                                                            sexo5 = '1 1 Hombre';
                                                                                                          } else if (sexo5 ==
                                                                                                              'mujer') {
                                                                                                            sexo5 = '2 2 Mujer';
                                                                                                          } else if (sexo5 ==
                                                                                                              'otro') {
                                                                                                            sexo5 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento5.text,_estadoCivil5.text,_parentesco5.text);


                                                                                                          var EstadoCivil5 =
                                                                                                          _estadoCivil5.text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final estado5 = EstadoCivil5
                                                                                                              .replaceAll(
                                                                                                              "1", "")
                                                                                                              .replaceAll("2", "")
                                                                                                              .replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll(
                                                                                                              "0", "");
                                                                                                          var Parentesco5 =
                                                                                                          _parentesco5.text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final parentesco5 =
                                                                                                          Parentesco5
                                                                                                              .replaceAll(
                                                                                                              "1", "")
                                                                                                              .replaceAll(
                                                                                                              "2", "")
                                                                                                              .replaceAll(
                                                                                                              "3", "")
                                                                                                              .replaceAll(
                                                                                                              "4", "")
                                                                                                              .replaceAll(
                                                                                                              "5", "")
                                                                                                              .replaceAll(
                                                                                                              "6", "")
                                                                                                              .replaceAll(
                                                                                                              "7", "")
                                                                                                              .replaceAll(
                                                                                                              "8", "")
                                                                                                              .replaceAll(
                                                                                                              "9", "")
                                                                                                              .replaceAll(
                                                                                                              "0", "");

                                                                                                          var EntidadN5 =
                                                                                                          _entidadNacimiento5
                                                                                                              .text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final entidadNacimiento5 =
                                                                                                          EntidadN5
                                                                                                              .replaceAll(
                                                                                                              "1", "")
                                                                                                              .replaceAll(
                                                                                                              "2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel
                                                                                                          DModel5 =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(
                                                                                                                widget.folio),
                                                                                                            nombre: _nombre5.text
                                                                                                                .toString(),
                                                                                                            primerApellido:
                                                                                                            _primerApellido5
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            segundoApellido:
                                                                                                            _segundoApellido5
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            claveSexo: sexo5
                                                                                                                .substring(0, 1),
                                                                                                            ordenSexo: sexo5
                                                                                                                .substring(0, 1),
                                                                                                            sexo: _sexo5.name
                                                                                                                .toString(),
                                                                                                            fechaNacimiento:
                                                                                                            _fechaNacimiento5
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            claveEntidad: _entidadNacimiento5.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento5.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil5.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado5.trimLeft(),
                                                                                                            claveParentesco: _parentesco5.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco:
                                                                                                            parentesco5
                                                                                                                .trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper
                                                                                                              .upDateEstructuraFamiliar5(
                                                                                                              DModel5)
                                                                                                              .then(
                                                                                                                  (estructuraFamilar) {
                                                                                                                alertDialog(
                                                                                                                    context,
                                                                                                                    "Se registro correctamente");
                                                                                                              }).catchError(
                                                                                                                  (error) {
                                                                                                                print(
                                                                                                                    error);
                                                                                                                alertDialog(
                                                                                                                    context,
                                                                                                                    "Error: No se guardaron los datos");
                                                                                                              });

                                                                                                          String sexo6 =
                                                                                                          _sexo6
                                                                                                              .name
                                                                                                              .toString();
                                                                                                          if (sexo6 ==
                                                                                                              'hombre') {
                                                                                                            sexo6 =
                                                                                                            '1 1 Hombre';
                                                                                                          } else if (sexo6 ==
                                                                                                              'mujer') {
                                                                                                            sexo6 =
                                                                                                            '2 2 Mujer';
                                                                                                          } else if (sexo6 ==
                                                                                                              'otro') {
                                                                                                            sexo6 =
                                                                                                            '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento6.text,_estadoCivil6.text,_parentesco6.text);


                                                                                                          var EstadoCivil6 =
                                                                                                          _estadoCivil6
                                                                                                              .text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final estado6 = EstadoCivil6
                                                                                                              .replaceAll(
                                                                                                              "1",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "2", "")
                                                                                                              .replaceAll(
                                                                                                              "3", "")
                                                                                                              .replaceAll(
                                                                                                              "4", "")
                                                                                                              .replaceAll(
                                                                                                              "5", "")
                                                                                                              .replaceAll(
                                                                                                              "6", "")
                                                                                                              .replaceAll(
                                                                                                              "7", "")
                                                                                                              .replaceAll(
                                                                                                              "8",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "9",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "0",
                                                                                                              "");
                                                                                                          var Parentesco6 =
                                                                                                          _parentesco6
                                                                                                              .text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final parentesco6 = Parentesco6
                                                                                                              .replaceAll(
                                                                                                              "1",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "2", "")
                                                                                                              .replaceAll(
                                                                                                              "3", "")
                                                                                                              .replaceAll(
                                                                                                              "4", "")
                                                                                                              .replaceAll(
                                                                                                              "5", "")
                                                                                                              .replaceAll(
                                                                                                              "6", "")
                                                                                                              .replaceAll(
                                                                                                              "7", "")
                                                                                                              .replaceAll(
                                                                                                              "8",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "9",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "0",
                                                                                                              "");

                                                                                                          var EntidadN6 =
                                                                                                          _entidadNacimiento6
                                                                                                              .text
                                                                                                              .toString(); // 'artlang'
                                                                                                          final entidadNacimiento6 = EntidadN6
                                                                                                              .replaceAll(
                                                                                                              "1",
                                                                                                              "")
                                                                                                              .replaceAll(
                                                                                                              "2",
                                                                                                              "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel
                                                                                                          DModel6 =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(
                                                                                                                widget
                                                                                                                    .folio),
                                                                                                            nombre: _nombre6
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            primerApellido:
                                                                                                            _primerApellido6
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            segundoApellido:
                                                                                                            _segundoApellido6
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            claveSexo: sexo6
                                                                                                                .substring(
                                                                                                                0,
                                                                                                                1),
                                                                                                            ordenSexo: sexo6
                                                                                                                .substring(
                                                                                                                0,
                                                                                                                1),
                                                                                                            sexo: _sexo6
                                                                                                                .name
                                                                                                                .toString(),
                                                                                                            fechaNacimiento:
                                                                                                            _fechaNacimiento6
                                                                                                                .text
                                                                                                                .toString(),
                                                                                                            claveEntidad: _entidadNacimiento6.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento6.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil6.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado6.trimLeft(),
                                                                                                            claveParentesco: _parentesco6.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco:
                                                                                                            parentesco6
                                                                                                                .trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper.upDateEstructuraFamiliar6(DModel6).then((estructuraFamilar) {
                                                                                                            alertDialog(context, "Se registro correctamente");
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context, "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String
                                                                                                          sexo7 =
                                                                                                          _sexo7.name.toString();

                                                                                                          if (sexo7 ==
                                                                                                              'hombre') {
                                                                                                            sexo7 = '1 1 Hombre';
                                                                                                          } else if (sexo7 ==
                                                                                                              'mujer') {
                                                                                                            sexo7 = '2 2 Mujer';
                                                                                                          } else if (sexo7 ==
                                                                                                              'otro') {
                                                                                                            sexo7 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento7.text,_estadoCivil7.text,_parentesco7.text);


                                                                                                          var EstadoCivil7 =
                                                                                                          _estadoCivil7.text.toString(); // 'artlang'
                                                                                                          final estado7 =
                                                                                                          EstadoCivil7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                          var Parentesco7 =
                                                                                                          _parentesco7.text.toString(); // 'artlang'
                                                                                                          final parentesco7 =
                                                                                                          Parentesco7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                          var EntidadN7 =
                                                                                                          _entidadNacimiento7.text.toString(); // 'artlang'
                                                                                                          final entidadNacimiento7 =
                                                                                                          EntidadN7.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel
                                                                                                          DModel7 =
                                                                                                          EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre7.text.toString(),
                                                                                                            primerApellido: _primerApellido7.text.toString(),
                                                                                                            segundoApellido: _segundoApellido7.text.toString(),
                                                                                                            claveSexo: sexo7.substring(0, 1),
                                                                                                            ordenSexo: sexo7.substring(0, 1),
                                                                                                            sexo: _sexo7.name.toString(),
                                                                                                            fechaNacimiento: _fechaNacimiento7.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento7.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento7.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil7.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado7.trimLeft(),
                                                                                                            claveParentesco: _parentesco7.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco7.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper.upDateEstructuraFamiliar7(DModel7).then((estructuraFamilar) {
                                                                                                            alertDialog(context, "Se registro correctamente");
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context, "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo8 = _sexo8.name.toString();
                                                                                                          if (sexo8 == 'hombre') {
                                                                                                            sexo8 = '1 1 Hombre';
                                                                                                          } else if (sexo8 == 'mujer') {
                                                                                                            sexo8 = '2 2 Mujer';
                                                                                                          } else if (sexo8 == 'otro') {
                                                                                                            sexo8 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento8.text,_estadoCivil8.text,_parentesco8.text);


                                                                                                          var EstadoCivil8 = _estadoCivil8.text.toString(); // 'artlang'
                                                                                                          final estado8 = EstadoCivil8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                          var Parentesco8 = _parentesco8.text.toString(); // 'artlang'
                                                                                                          final parentesco8 = Parentesco8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                          var EntidadN8 = _entidadNacimiento8.text.toString(); // 'artlang'
                                                                                                          final entidadNacimiento8 = EntidadN8.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel8 = EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre8.text.toString(),
                                                                                                            primerApellido: _primerApellido8.text.toString(),
                                                                                                            segundoApellido: _segundoApellido8.text.toString(),
                                                                                                            claveSexo: sexo8.substring(0, 1),
                                                                                                            ordenSexo: sexo8.substring(0, 1),
                                                                                                            sexo: _sexo8.name.toString(),
                                                                                                            fechaNacimiento: _fechaNacimiento8.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento8.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento8.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil8.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado8.trimLeft(),
                                                                                                            claveParentesco: _parentesco8.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco8.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper.upDateEstructuraFamiliar8(DModel8).then((estructuraFamilar) {
                                                                                                            alertDialog(context, "Se registro correctamente");
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context, "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo9 = _sexo9.name.toString();
                                                                                                          if (sexo9 == 'hombre') {
                                                                                                            sexo9 = '1 1 Hombre';
                                                                                                          } else if (sexo9 == 'mujer') {
                                                                                                            sexo9 = '2 2 Mujer';
                                                                                                          } else if (sexo9 == 'otro') {
                                                                                                            sexo9 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento9.text,_estadoCivil9.text,_parentesco9.text);


                                                                                                          var EstadoCivil9 = _estadoCivil9.text.toString(); // 'artlang'
                                                                                                          final estado9 = EstadoCivil9.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                          var Parentesco9 = _parentesco9.text.toString(); // 'artlang'
                                                                                                          final parentesco9 = Parentesco9.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                          var EntidadN9 = _entidadNacimiento9.text.toString(); // 'artlang'
                                                                                                          final entidadNacimiento9 = EntidadN9.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel9 = EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre9.text.toString(),
                                                                                                            primerApellido: _primerApellido9.text.toString(),
                                                                                                            segundoApellido: _segundoApellido9.text.toString(),
                                                                                                            claveSexo: sexo9.substring(0, 1),
                                                                                                            ordenSexo: sexo9.substring(0, 1),
                                                                                                            sexo: _sexo9.name.toString(),
                                                                                                            fechaNacimiento: _fechaNacimiento9.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento9.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento9.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil9.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado9.trimLeft(),
                                                                                                            claveParentesco: _parentesco9.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco9.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper.upDateEstructuraFamiliar9(DModel9).then((estructuraFamilar) {
                                                                                                            alertDialog(context, "Se registro correctamente");
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context, "Error: No se guardaron los datos");
                                                                                                          });

                                                                                                          String sexo10 = _sexo10.name.toString();
                                                                                                          if (sexo10 == 'hombre') {
                                                                                                            sexo10 = '1 1 Hombre';
                                                                                                          } else if (sexo10 == 'mujer') {
                                                                                                            sexo10 = '2 2 Mujer';
                                                                                                          } else if (sexo10 == 'otro') {
                                                                                                            sexo10 = '3 3 Otro';
                                                                                                          }

                                                                                                          await metodos(_entidadNacimiento10.text,_estadoCivil10.text,_parentesco10.text);


                                                                                                          var EstadoCivil10 = _estadoCivil10.text.toString(); // 'artlang'
                                                                                                          final estado10 = EstadoCivil10.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");
                                                                                                          var Parentesco10 = _parentesco10.text.toString(); // 'artlang'
                                                                                                          final parentesco10 = Parentesco10.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "").replaceAll("4", "").replaceAll("5", "").replaceAll("6", "").replaceAll("7", "").replaceAll("8", "").replaceAll("9", "").replaceAll("0", "");

                                                                                                          var EntidadN10 = _entidadNacimiento10.text.toString(); // 'artlang'
                                                                                                          final entidadNacimiento10 = EntidadN10.replaceAll("1", "").replaceAll("2", "").replaceAll("3", "")
                                                                                                              .replaceAll("4", "")
                                                                                                              .replaceAll("5", "")
                                                                                                              .replaceAll("6", "")
                                                                                                              .replaceAll("7", "")
                                                                                                              .replaceAll("8", "")
                                                                                                              .replaceAll("9", "")
                                                                                                              .replaceAll("0", "");

                                                                                                          EstructuraFamilarModel DModel10 = EstructuraFamilarModel(
                                                                                                            folio: int.parse(widget.folio),
                                                                                                            nombre: _nombre10.text.toString(),
                                                                                                            primerApellido: _primerApellido10.text.toString(),
                                                                                                            segundoApellido: _segundoApellido10.text.toString(),
                                                                                                            claveSexo: sexo10.substring(0, 1),
                                                                                                            ordenSexo: sexo10.substring(0, 1),
                                                                                                            sexo: _sexo10.name.toString(),
                                                                                                            fechaNacimiento: _fechaNacimiento10.text.toString(),
                                                                                                            claveEntidad: _entidadNacimiento10.text.toString().substring(0, 2).trimRight(),
                                                                                                            entidadNacimiento: entidadNacimiento10.trimLeft(),
                                                                                                            claveEstadoCivil: _estadoCivil10.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenEstadoCivil: _EstadosCiviles2.map((e) => e.Orden).first,
                                                                                                            estadoCivil: estado10.trimLeft(),
                                                                                                            claveParentesco: _parentesco10.text.toString().substring(0, 2).trimRight(),
                                                                                                            ordenParentesco: _Parentesco2.map((e) => e.Orden).first,
                                                                                                            parentesco: parentesco10.trimLeft(),
                                                                                                          );
                                                                                                          await dbHelper.upDateEstructuraFamiliar10(DModel10).then((estructuraFamilar) {
                                                                                                            alertDialog(context, "Se registro correctamente");
                                                                                                            Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                                                                                              return new ActualizarEstudio(widget.folio);
                                                                                                            }));
                                                                                                          }).catchError((error) {
                                                                                                            print(error);
                                                                                                            alertDialog(context, "Error: No se guardaron los datos");
                                                                                                          });
                                                                                                        } else {
                                                                                                          alertDialog(context, "El a??o en la fecha no corresponde");
                                                                                                        }
                                                                                                      } else {
                                                                                                        alertDialog(context, "El mes seleccionado en la fecha no es correcto");
                                                                                                      }
                                                                                                    } else {
                                                                                                      alertDialog(context, "Los dias seleccionados en la fecha no son correcotos");
                                                                                                    }
                                                                                                  } else {
                                                                                                    alertDialog(context, "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                                                  }
                                                                                                } else {
                                                                                                  alertDialog(context, "La fecha se encuentra basia");
                                                                                                }
                                                                                              } else {
                                                                                                alertDialog(context, "El a??o en la fecha no corresponde");
                                                                                              }
                                                                                            } else {
                                                                                              alertDialog(context, "El mes seleccionado en la fecha no es correcto");
                                                                                            }
                                                                                          } else {
                                                                                            alertDialog(context, "Los dias seleccionados en la fecha no son correcotos");
                                                                                          }
                                                                                        } else {
                                                                                          alertDialog(context, "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                                        }
                                                                                      } else {
                                                                                        alertDialog(context, "La fecha se encuentra basia");
                                                                                      }
                                                                                    } else {
                                                                                      alertDialog(context, "El a??o en la fecha no corresponde");
                                                                                    }
                                                                                  } else {
                                                                                    alertDialog(context, "El mes seleccionado en la fecha no es correcto");
                                                                                  }
                                                                                } else {
                                                                                  alertDialog(context, "Los dias seleccionados en la fecha no son correcotos");
                                                                                }
                                                                              } else {
                                                                                alertDialog(context, "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                              }
                                                                            } else {
                                                                              alertDialog(context, "La fecha se encuentra basia");
                                                                            }
                                                                          } else {
                                                                            alertDialog(context,
                                                                                "El a??o en la fecha no corresponde");
                                                                          }
                                                                        } else {
                                                                          alertDialog(
                                                                              context,
                                                                              "El mes seleccionado en la fecha no es correcto");
                                                                        }
                                                                      } else {
                                                                        alertDialog(
                                                                            context,
                                                                            "Los dias seleccionados en la fecha no son correcotos");
                                                                      }
                                                                    } else {
                                                                      alertDialog(
                                                                          context,
                                                                          "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                                    }
                                                                  } else {
                                                                    alertDialog(
                                                                        context,
                                                                        "La fecha se encuentra basia");
                                                                  }
                                                                } else {
                                                                  alertDialog(
                                                                      context,
                                                                      "El a??o en la fecha no corresponde");
                                                                }
                                                              } else {
                                                                alertDialog(
                                                                    context,
                                                                    "El mes seleccionado en la fecha no es correcto");
                                                              }
                                                            } else {
                                                              alertDialog(
                                                                  context,
                                                                  "Los dias seleccionados en la fecha no son correcotos");
                                                            }
                                                          } else {
                                                            alertDialog(context,
                                                                "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                          }
                                                        } else {
                                                          alertDialog(context,
                                                              "La fecha se encuentra basia");
                                                        }
                                                      } else {
                                                        alertDialog(context,
                                                            "El a??o en la fecha no corresponde");
                                                      }
                                                    } else {
                                                      alertDialog(context,
                                                          "El mes seleccionado en la fecha no es correcto");
                                                    }
                                                  } else {
                                                    alertDialog(context,
                                                        "Los dias seleccionados en la fecha no son correcotos");
                                                  }
                                                } else {
                                                  alertDialog(context,
                                                      "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                                }
                                              } else {
                                                alertDialog(context,
                                                    "La fecha se encuentra basia");
                                              }
                                            } else {
                                              alertDialog(context,
                                                  "El a??o en la fecha no corresponde");
                                            }
                                          } else {
                                            alertDialog(context,
                                                "El mes seleccionado en la fecha no es correcto");
                                          }
                                        } else {
                                          alertDialog(context,
                                              "Los dias seleccionados en la fecha no son correcotos");
                                        }
                                      } else {
                                        alertDialog(context,
                                            "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                                      }
                                    } else {
                                      alertDialog(context,
                                          "La fecha se encuentra basia");
                                    }
                                  } else {
                                    alertDialog(context,
                                        "El a??o en la fecha no corresponde");
                                  }
                                } else {
                                  alertDialog(context,
                                      "El mes seleccionado en la fecha no es correcto");
                                }
                              } else {
                                alertDialog(context,
                                    "Los dias seleccionados en la fecha no son correcotos");
                              }
                            } else {
                              alertDialog(context,
                                  "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                            }
                          } else {
                            alertDialog(context, "La fecha se encuentra basia");
                          }
                        } else {
                          alertDialog(
                              context, "El a??o en la fecha no corresponde");
                        }
                      } else {
                        alertDialog(context,
                            "El mes seleccionado en la fecha no es correcto");
                      }
                    } else {
                      alertDialog(context,
                          "Los dias seleccionados en la fecha no son correcotos");
                    }
                  } else {
                    alertDialog(context,
                        "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
                  }
                } else {
                  alertDialog(context, "La fecha se encuentra basia");
                }
              } else {
                alertDialog(context, "El a??o en la fecha no corresponde");
              }
            } else {
              alertDialog(
                  context, "El mes seleccionado en la fecha no es correcto");
            }
          } else {
            alertDialog(context,
                "Los dias seleccionados en la fecha no son correcotos");
          }
        } else {
          alertDialog(context,
              "Los digitos de la fecha no son correctos intente dd-mm-aaaa");
        }
      } else {
        alertDialog(context, "La fecha se encuentra basia");
      }
    }
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
                              DataColumn(
                                  label: Text(
                                    'No.',
                                  )),
                              DataColumn(label: Text('Nombres')),
                              DataColumn(label: Text('Apellido Paterno')),
                              DataColumn(label: Text('Apeliido Materno')),
                              DataColumn(label: Text('Sexo')),
                              DataColumn(label: Text('Fecha de Nacimiento')),
                              DataColumn(label: Text('Entidad de Nacimiento')),
                              DataColumn(label: Text('Estado Civil')),
                              DataColumn(label: Text('Parentesco')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getTextDataTable(
                                    controller: _nombre1, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido1,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido1,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento1,
                                  inputType: TextInputType.number,
                                  hintName: 'DD-MM-AAAA',
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil1,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(Container(
                                  margin: EdgeInsets.only(top: 5),
                                  width: 220,
                                  child: TextFormField(
                                    controller: _parentesco1,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.blue),
                                      ),
                                      hintText: 'Parentesco',
                                      labelText: 'Parentesco',
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                    ),
                                  ),
                                )),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(getTextDataTable(
                                    controller: _nombre2, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido2,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido2,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento2,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil2,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco2,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(getTextDataTable(
                                    controller: _nombre3, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido3,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido3,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento3,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil3,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco3,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(getTextDataTable(
                                    controller: _nombre4, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido4,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido4,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento4,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil4,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco4,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(getTextDataTable(
                                    controller: _nombre5, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido5,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido5,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento5,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil5,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco5,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(getTextDataTable(
                                    controller: _nombre6, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido6,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido6,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento6,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil6,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco6,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(getTextDataTable(
                                    controller: _nombre7, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido7,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido7,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento7,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil7,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco7,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('8')),
                                DataCell(getTextDataTable(
                                    controller: _nombre8, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido8,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido8,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento8,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil8,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco8,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('9')),
                                DataCell(getTextDataTable(
                                    controller: _nombre9, hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido9,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido9,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento9,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil9,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco9,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('10')),
                                DataCell(getTextDataTable(
                                    controller: _nombre10,
                                    hintName: 'Nombres')),
                                DataCell(getTextDataTable(
                                    controller: _primerApellido10,
                                    hintName: 'Apellido Paterno')),
                                DataCell(getTextDataTable(
                                    controller: _segundoApellido10,
                                    hintName: 'Apellido Materno')),
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
                                DataCell(getTextDate(
                                  controller: _fechaNacimiento10,
                                  hintName: 'DD-MM-AAAA',
                                  inputType: TextInputType.number,
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Entidad De Nacimiento',
                                        labelText: 'Entidad De Nacimiento',
                                        fillColor: Colors.grey[200],
                                        filled: true,
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
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Estado Civil',
                                        labelText: 'Estado Civil',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _EstadosCiviles.map(
                                              (estadosCiviles) =>
                                              SearchFieldListItem(
                                                  estadosCiviles.EstadoCivil,
                                                  item:
                                                  estadosCiviles)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _estadoCivil10,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    width: 220,
                                    child: SearchField(
                                      suggestionState: Suggestion.expand,
                                      searchInputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.blue),
                                        ),
                                        hintText: 'Parentesco',
                                        labelText: 'Parentesco',
                                        fillColor: Colors.grey[200],
                                        filled: true,
                                      ),
                                      suggestions: _Parentesco.map(
                                              (parentesco) =>
                                              SearchFieldListItem(
                                                  parentesco.Parentesco,
                                                  item: parentesco)).toList(),
                                      textInputAction: TextInputAction.next,
                                      hasOverlay: true,
                                      controller: _parentesco10,
                                      maxSuggestionsInViewPort: 5,
                                      itemHeight: 45,
                                      onSuggestionTap: (x) {},
                                    ),
                                  ),
                                ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
