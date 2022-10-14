import 'dart:io';
import 'dart:math';
import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genBotonFotografia.dart';
import 'package:esn/Comm/genSearchField.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/AdiccionesModel.dart';
import 'package:esn/Model/ClasificacionModel.dart';
import 'package:esn/Model/CondicionesSaludModel.dart';
import 'package:esn/Model/DiscapacidadesModel.dart';
import 'package:esn/Model/EstructuraFamiliarModel.dart';
import 'package:esn/Model/PuebloIndigenaModel.dart';
import 'package:esn/Model/Salud_PertenenciaIndigenaTablaModel.dart';
import 'package:esn/ScreensActualizar/ActualizarEstudio.dart';
import 'package:esn/services/Utility.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchfield/searchfield.dart';
import 'package:image_picker/image_picker.dart';

class Salud_PertenenciaIndigenaActualizar extends StatefulWidget {
  String folio;

  Salud_PertenenciaIndigenaActualizar(this.folio);
  @override
  State<Salud_PertenenciaIndigenaActualizar> createState() => _Salud_PertenenciaIndigenaActualizarState();

}
class _Salud_PertenenciaIndigenaActualizarState extends State<Salud_PertenenciaIndigenaActualizar> {
  final _nombre1 = TextEditingController();
  final _discapacidades1 = TextEditingController();
  final _adicciones1 = TextEditingController();
  final _condicionSalud1 = TextEditingController();
  final _peso1 = TextEditingController();
  final _talla1 = TextEditingController();
  final _puebloIndigena1 = TextEditingController();
  final _clasificacion1 = TextEditingController();
  final _ponderacion1 = TextEditingController();

  File _image1_1;
  File _image1_2;
  File _image1_3;
  File _image1_4;
  File _image1_5;

  final _nombre2 = TextEditingController();
  final _discapacidades2 = TextEditingController();
  final _adicciones2 = TextEditingController();
  final _condicionSalud2 = TextEditingController();
  final _peso2 = TextEditingController();
  final _talla2 = TextEditingController();
  final _puebloIndigena2 = TextEditingController();
  final _clasificacion2 = TextEditingController();
  final _ponderacion2 = TextEditingController();

  File _image2_1;
  File _image2_2;
  File _image2_3;
  File _image2_4;
  File _image2_5;

  final _nombre3 = TextEditingController();
  final _discapacidades3 = TextEditingController();
  final _adicciones3 = TextEditingController();
  final _condicionSalud3 = TextEditingController();
  final _peso3 = TextEditingController();
  final _talla3 = TextEditingController();
  final _puebloIndigena3 = TextEditingController();
  final _clasificacion3 = TextEditingController();
  final _ponderacion3 = TextEditingController();

  File _image3_1;
  File _image3_2;
  File _image3_3;
  File _image3_4;
  File _image3_5;

  final _nombre4 = TextEditingController();
  final _discapacidades4 = TextEditingController();
  final _adicciones4 = TextEditingController();
  final _condicionSalud4 = TextEditingController();
  final _peso4 = TextEditingController();
  final _talla4 = TextEditingController();
  final _puebloIndigena4 = TextEditingController();
  final _clasificacion4 = TextEditingController();
  final _ponderacion4 = TextEditingController();

  File _image4_1;
  File _image4_2;
  File _image4_3;
  File _image4_4;
  File _image4_5;

  final _nombre5 = TextEditingController();
  final _discapacidades5 = TextEditingController();
  final _adicciones5 = TextEditingController();
  final _condicionSalud5 = TextEditingController();
  final _peso5 = TextEditingController();
  final _talla5 = TextEditingController();
  final _puebloIndigena5 = TextEditingController();
  final _clasificacion5 = TextEditingController();
  final _ponderacion5 = TextEditingController();

  File _image5_1;
  File _image5_2;
  File _image5_3;
  File _image5_4;
  File _image5_5;

  final _nombre6 = TextEditingController();
  final _discapacidades6 = TextEditingController();
  final _adicciones6 = TextEditingController();
  final _condicionSalud6 = TextEditingController();
  final _peso6 = TextEditingController();
  final _talla6 = TextEditingController();
  final _puebloIndigena6 = TextEditingController();
  final _clasificacion6 = TextEditingController();
  final _ponderacion6 = TextEditingController();

  File _image6_1;
  File _image6_2;
  File _image6_3;
  File _image6_4;
  File _image6_5;

  final _nombre7 = TextEditingController();
  final _discapacidades7 = TextEditingController();
  final _adicciones7 = TextEditingController();
  final _condicionSalud7 = TextEditingController();
  final _peso7 = TextEditingController();
  final _talla7 = TextEditingController();
  final _puebloIndigena7 = TextEditingController();
  final _clasificacion7 = TextEditingController();
  final _ponderacion7 = TextEditingController();

  File _image7_1;
  File _image7_2;
  File _image7_3;
  File _image7_4;
  File _image7_5;

  final _nombre8 = TextEditingController();
  final _discapacidades8 = TextEditingController();
  final _adicciones8 = TextEditingController();
  final _condicionSalud8 = TextEditingController();
  final _peso8 = TextEditingController();
  final _talla8 = TextEditingController();
  final _puebloIndigena8 = TextEditingController();
  final _clasificacion8 = TextEditingController();
  final _ponderacion8 = TextEditingController();

  File _image8_1;
  File _image8_2;
  File _image8_3;
  File _image8_4;
  File _image8_5;

  final _nombre9 = TextEditingController();
  final _discapacidades9 = TextEditingController();
  final _adicciones9 = TextEditingController();
  final _condicionSalud9 = TextEditingController();
  final _peso9 = TextEditingController();
  final _talla9 = TextEditingController();
  final _puebloIndigena9 = TextEditingController();
  final _clasificacion9 = TextEditingController();
  final _ponderacion9 = TextEditingController();

  File _image9_1;
  File _image9_2;
  File _image9_3;
  File _image9_4;
  File _image9_5;

  final _nombre10 = TextEditingController();
  final _discapacidades10 = TextEditingController();
  final _adicciones10 = TextEditingController();
  final _condicionSalud10 = TextEditingController();
  final _peso10 = TextEditingController();
  final _talla10 = TextEditingController();
  final _puebloIndigena10 = TextEditingController();
  final _clasificacion10 = TextEditingController();
  final _ponderacion10 = TextEditingController();

  File _image10_1;
  File _image10_2;
  File _image10_3;
  File _image10_4;
  File _image10_5;

  final picker = ImagePicker();

  String imc;
  static double imC1;
  static double imC2;
  static double imC3;
  static double imC4;
  static double imC5;
  static double imC6;
  static double imC7;
  static double imC8;
  static double imC9;
  static double imC10;

  var dbHelper;

  List<EstructuraFamilarModel> _EstructuraFamiliar1 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar2 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar3 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar4 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar5 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar6 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar7 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar8 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar9 = List<EstructuraFamilarModel>();
  List<EstructuraFamilarModel> _EstructuraFamiliar10 = List<EstructuraFamilarModel>();


  List<CapacidadesDiferentes> _Discapacidades = List<CapacidadesDiferentes>();
  List<CondicioneSaludModel> _Condiciones = List<CondicioneSaludModel>();
  List<AdiccionesModel> _Adicciones = List<AdiccionesModel>();
  List<PuebloIndigenaModel> _PueblosIndigenas = List<PuebloIndigenaModel>();
  List<ClasificacionModel> _Clasificaciones = List<ClasificacionModel>();

  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia1 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia2 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia3 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia4 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia5 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia6 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia7 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia8 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia9 = List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia10 = List<Salud_PertenenciaIndigenenaTablaModel>();
  @override
  void initState(){
    getAllCategoriesAdicciones();
    getAllCategoriesCondicionesSalud();
    getAllCategoriesDiscapacidades();
    getAllCategoriesPuebloIndigena();
    getAllCategoriesPuebloClasificacion();
    IMC1();
    IMC2();
    IMC3();
    IMC4();
    IMC5();
    IMC6();
    IMC7();
    IMC8();
    IMC9();
    IMC10();
    cargarnombres();
    dbHelper = DbHelper();
  }

  cargarnombres() {
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

  getAllSaludPertenencia1() async {
    _SaludPertenencia1 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia1.add(categoryModel);
      });
    });

    _discapacidades1.text = _SaludPertenencia1.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia1.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia1.map((e) => e.CapacidadDiferente).first;
    _adicciones1.text = _SaludPertenencia1.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia1.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia1.map((e) => e.Adiccion).first;

    _condicionSalud1.text =  _SaludPertenencia1.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia1.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia1.map((e) => e.CondicionesSalud).first;

    _peso1.text = _SaludPertenencia1.map((e) => e.peso.toString()).first;
    _talla1.text = _SaludPertenencia1.map((e) => e.talla.toString()).first;
    _puebloIndigena1.text = _SaludPertenencia1.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia1.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia1.map((e) => e.EtniaIndigena).first;

    _clasificacion1.text = _SaludPertenencia1.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia1.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia1.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion1.text = _SaludPertenencia1.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia2() async {
    _SaludPertenencia2 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia2(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia2.add(categoryModel);
      });
    });

    _discapacidades2.text = _SaludPertenencia2.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia2.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia2.map((e) => e.CapacidadDiferente).first;
    _adicciones2.text = _SaludPertenencia2.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia2.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia2.map((e) => e.Adiccion).first;

    _condicionSalud2.text =_SaludPertenencia2.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia2.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia2.map((e) => e.CondicionesSalud).first;

    _peso2.text = _SaludPertenencia2.map((e) => e.peso.toString()).first;
    _talla2.text = _SaludPertenencia2.map((e) => e.talla.toString()).first;
    _puebloIndigena2.text = _SaludPertenencia2.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia2.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia2.map((e) => e.EtniaIndigena).first;

    _clasificacion2.text = _SaludPertenencia2.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia2.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia2.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion2.text = _SaludPertenencia2.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia3() async {
    _SaludPertenencia3 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia3(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia3.add(categoryModel);
      });
    });

    _discapacidades3.text = _SaludPertenencia3.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia3.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia3.map((e) => e.CapacidadDiferente).first;
    _adicciones3.text = _SaludPertenencia3.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia3.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia3.map((e) => e.Adiccion).first;

    _condicionSalud3.text =_SaludPertenencia3.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia3.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia3.map((e) => e.CondicionesSalud).first;

    _peso3.text = _SaludPertenencia3.map((e) => e.peso.toString()).first;
    _talla3.text = _SaludPertenencia3.map((e) => e.talla.toString()).first;
    _puebloIndigena3.text = _SaludPertenencia3.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia3.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia3.map((e) => e.EtniaIndigena).first;

    _clasificacion3.text = _SaludPertenencia3.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia3.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia3.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion3.text = _SaludPertenencia3.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia4() async {
    _SaludPertenencia4 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia4(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia4.add(categoryModel);
      });
    });

    _discapacidades4.text = _SaludPertenencia4.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia4.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia4.map((e) => e.CapacidadDiferente).first;
    _adicciones4.text = _SaludPertenencia4.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia4.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia4.map((e) => e.Adiccion).first;

    _condicionSalud4.text =_SaludPertenencia4.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia4.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia4.map((e) => e.CondicionesSalud).first;

    _peso4.text = _SaludPertenencia4.map((e) => e.peso.toString()).first;
    _talla4.text = _SaludPertenencia4.map((e) => e.talla.toString()).first;
    _puebloIndigena4.text = _SaludPertenencia4.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia4.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia4.map((e) => e.EtniaIndigena).first;

    _clasificacion4.text = _SaludPertenencia4.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia4.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia4.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion4.text = _SaludPertenencia4.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia5() async {
    _SaludPertenencia5 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia5(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia5.add(categoryModel);
      });
    });

    _discapacidades5.text = _SaludPertenencia5.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia5.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia5.map((e) => e.CapacidadDiferente).first;
    _adicciones5.text = _SaludPertenencia5.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia5.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia5.map((e) => e.Adiccion).first;

    _condicionSalud5.text =_SaludPertenencia5.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia5.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia5.map((e) => e.CondicionesSalud).first;

    _peso5.text = _SaludPertenencia5.map((e) => e.peso.toString()).first;
    _talla5.text = _SaludPertenencia5.map((e) => e.talla.toString()).first;
    _puebloIndigena5.text = _SaludPertenencia5.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia5.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia5.map((e) => e.EtniaIndigena).first;

    _clasificacion5.text = _SaludPertenencia5.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia5.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia5.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion5.text = _SaludPertenencia5.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia6() async {
    _SaludPertenencia6 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia6(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia6.add(categoryModel);
      });
    });

    _discapacidades6.text = _SaludPertenencia6.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia6.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia6.map((e) => e.CapacidadDiferente).first;
    _adicciones6.text = _SaludPertenencia6.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia6.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia6.map((e) => e.Adiccion).first;

    _condicionSalud6.text =_SaludPertenencia6.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia6.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia6.map((e) => e.CondicionesSalud).first;

    _peso6.text = _SaludPertenencia6.map((e) => e.peso.toString()).first;
    _talla6.text = _SaludPertenencia6.map((e) => e.talla.toString()).first;
    _puebloIndigena6.text = _SaludPertenencia6.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia6.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia6.map((e) => e.EtniaIndigena).first;

    _clasificacion6.text = _SaludPertenencia6.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia6.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia6.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion6.text = _SaludPertenencia6.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia7() async {
    _SaludPertenencia7 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia7(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia7.add(categoryModel);
      });
    });

    _discapacidades7.text = _SaludPertenencia7.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia7.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia7.map((e) => e.CapacidadDiferente).first;
    _adicciones7.text = _SaludPertenencia7.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia7.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia7.map((e) => e.Adiccion).first;

    _condicionSalud7.text =_SaludPertenencia7.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia7.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia7.map((e) => e.CondicionesSalud).first;

    _peso7.text = _SaludPertenencia7.map((e) => e.peso.toString()).first;
    _talla7.text = _SaludPertenencia7.map((e) => e.talla.toString()).first;
    _puebloIndigena7.text = _SaludPertenencia7.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia7.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia7.map((e) => e.EtniaIndigena).first;

    _clasificacion7.text = _SaludPertenencia7.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia7.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia7.map((e) => e.ClasCondicionesSalud.toString()).first;


    _ponderacion7.text = _SaludPertenencia7.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia8() async {
    _SaludPertenencia8 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia8(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia8.add(categoryModel);
      });
    });

    _discapacidades8.text = _SaludPertenencia8.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia8.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia8.map((e) => e.CapacidadDiferente).first;
    _adicciones8.text = _SaludPertenencia8.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia8.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia8.map((e) => e.Adiccion).first;

    _condicionSalud8.text =_SaludPertenencia8.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia8.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia8.map((e) => e.CondicionesSalud).first;

    _peso8.text = _SaludPertenencia8.map((e) => e.peso.toString()).first;
    _talla8.text = _SaludPertenencia8.map((e) => e.talla.toString()).first;
    _puebloIndigena8.text = _SaludPertenencia8.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia8.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia8.map((e) => e.EtniaIndigena).first;

    _clasificacion8.text = _SaludPertenencia8.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia8.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia8.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion8.text = _SaludPertenencia8.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia9() async {
    _SaludPertenencia9 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia9(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia9.add(categoryModel);
      });
    });

    _discapacidades9.text = _SaludPertenencia9.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia9.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia9.map((e) => e.CapacidadDiferente).first;
    _adicciones9.text = _SaludPertenencia9.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia9.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia9.map((e) => e.Adiccion).first;

    _condicionSalud9.text =_SaludPertenencia9.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia9.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia9.map((e) => e.CondicionesSalud).first;

    _peso9.text = _SaludPertenencia9.map((e) => e.peso.toString()).first;
    _talla9.text = _SaludPertenencia9.map((e) => e.talla.toString()).first;
    _puebloIndigena9.text = _SaludPertenencia9.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia9.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia9.map((e) => e.EtniaIndigena).first;

    _clasificacion9.text = _SaludPertenencia9.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia9.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia9.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion9.text = _SaludPertenencia9.map((e) => e.ponderacion.toString()).first;
  }

  getAllSaludPertenencia10() async {
    _SaludPertenencia10 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories = await CategoryService().readSaludPertenencia10(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente = category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente = category['OrdenCapacidadDiferente'];
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        categoryModel.ClaveAdiccion = category['ClaveAdiccion'];
        categoryModel.OrdenAdiccion = category['OrdenAdiccion'];
        categoryModel.Adiccion = category['Adiccion'];
        categoryModel.peso = category['peso'];
        categoryModel.talla = category['talla'];
        categoryModel.imc = category['imc'];
        categoryModel.ClaveCondicionesSalud = category['ClaveCondicionesSalud'];
        categoryModel.OrdenCondicionesSalud = category['OrdenCondicionesSalud'];
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        categoryModel.ponderacion = int.parse(category['ponderacion']);
        categoryModel.fileFoto1 = category['fileFoto1'];
        categoryModel.fileFoto2 = category['fileFoto2'];
        categoryModel.fileFoto3 = category['fileFoto3'];
        categoryModel.fileFoto4 = category['fileFoto4'];
        categoryModel.fileFoto5 = category['fileFoto5'];
        categoryModel.ClaveEtniaIndigena = category['ClaveEtniaIndigena'];
        categoryModel.OrdenEtniaIndigena = category['OrdenEtniaIndigena'];
        categoryModel.EtniaIndigena = category['EtniaIndigena'];

        _SaludPertenencia10.add(categoryModel);
      });
    });

    _discapacidades10.text = _SaludPertenencia10.map((e) => e.ClaveCapacidadDiferente).first + " " +
        _SaludPertenencia10.map((e) => e.OrdenCapacidadDiferente).first + " " + _SaludPertenencia10.map((e) => e.CapacidadDiferente).first;
    _adicciones10.text = _SaludPertenencia10.map((e) => e.ClaveAdiccion).first + " " +
        _SaludPertenencia10.map((e) => e.OrdenAdiccion).first + " " + _SaludPertenencia10.map((e) => e.Adiccion).first;

    _condicionSalud10.text =_SaludPertenencia10.map((e) => e.ClaveCondicionesSalud).first + " " + _SaludPertenencia10.map((e) => e.OrdenCondicionesSalud).first
        + " " +  _SaludPertenencia10.map((e) => e.CondicionesSalud).first;

    _peso10.text = _SaludPertenencia10.map((e) => e.peso.toString()).first;
    _talla10.text = _SaludPertenencia10.map((e) => e.talla.toString()).first;
    _puebloIndigena10.text = _SaludPertenencia10.map((e) => e.ClaveEtniaIndigena).first + " " +
        _SaludPertenencia10.map((e) => e.OrdenEtniaIndigena).first + " " + _SaludPertenencia10.map((e) => e.EtniaIndigena).first;

    _clasificacion10.text = _SaludPertenencia10.map((e) => e.ClaveClasCondicionesSalud.toString()).first + " " +  _SaludPertenencia10.map((e) => e.ClaveClasCondicionesSalud.toString()).first
        + " " + _SaludPertenencia10.map((e) => e.ClasCondicionesSalud.toString()).first;

    _ponderacion10.text = _SaludPertenencia10.map((e) => e.ponderacion.toString()).first;
  }

  cargarDatos(){
    getAllSaludPertenencia1();
    getAllSaludPertenencia2();
    getAllSaludPertenencia3();
    getAllSaludPertenencia4();
    getAllSaludPertenencia5();
    getAllSaludPertenencia6();
    getAllSaludPertenencia7();
    getAllSaludPertenencia8();
    getAllSaludPertenencia9();
    getAllSaludPertenencia10();
  }

  getAllEstructura1() async {
    _EstructuraFamiliar1 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura1(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar1.add(categoryModel);
      });
    });
    _nombre1.text = _EstructuraFamiliar1
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura2() async {
    _EstructuraFamiliar2 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura2(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar2.add(categoryModel);
      });
    });
    _nombre2.text = _EstructuraFamiliar2
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura3() async {
    _EstructuraFamiliar3 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura3(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar3.add(categoryModel);
      });
    });
    _nombre3.text = _EstructuraFamiliar3
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura4() async {
    _EstructuraFamiliar4 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura4(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar4.add(categoryModel);
      });
    });
    _nombre4.text = _EstructuraFamiliar4
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura5() async {
    _EstructuraFamiliar5 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura5(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar5.add(categoryModel);
      });
    });
    _nombre5.text = _EstructuraFamiliar5
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura6() async {
    _EstructuraFamiliar6 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura6(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar6.add(categoryModel);
      });
    });
    _nombre6.text = _EstructuraFamiliar6
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura7() async {
    _EstructuraFamiliar7 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura7(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar7.add(categoryModel);
      });
    });
    _nombre7.text = _EstructuraFamiliar7
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura8() async {
    _EstructuraFamiliar8 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura8(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar8.add(categoryModel);
      });
    });
    _nombre8.text = _EstructuraFamiliar8
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura9() async {
    _EstructuraFamiliar9 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura9(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar9.add(categoryModel);
      });
    });
    _nombre9.text = _EstructuraFamiliar9
        .map((e) => e.nombre)
        .first;
  }

  getAllEstructura10() async {
    _EstructuraFamiliar10 = List<EstructuraFamilarModel>();
    var categories = await CategoryService().readEstructura10(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstructuraFamilarModel();
        categoryModel.nombre = category['nombre'];
        _EstructuraFamiliar10.add(categoryModel);
      });
    });
    _nombre10.text = _EstructuraFamiliar10
        .map((e) => e.nombre)
        .first;
  }



  Future getImage1_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image1_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage1_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image1_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage1_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image1_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage1_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image1_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage1_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image1_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image2_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage2_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image2_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage2_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image2_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage2_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image2_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage2_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image2_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }

  Future getImage3_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image3_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage3_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image3_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage3_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image3_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage3_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image3_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage3_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image3_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }

  Future getImage4_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image4_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage4_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image4_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage4_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image4_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage4_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image4_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage4_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image4_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image5_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage5_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image5_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage5_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image5_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage5_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image5_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage5_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image5_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image6_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage6_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image6_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage6_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image6_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage6_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image6_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage6_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image6_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image7_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage7_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image7_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage7_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image7_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage7_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image7_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage7_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image7_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image8_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage8_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image8_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage8_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image8_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage8_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image8_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage8_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image8_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image9_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage9_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image9_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage9_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image9_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage9_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image9_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage9_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image9_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10_1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image10_1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage10_2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image10_2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage10_3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image10_3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }
  Future getImage10_4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image10_4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }
  Future getImage10_5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image10_5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');

      }
    });
  }

  IMC1() {
    String peso = _peso1.text;
    String talla = _talla1.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC1 = double.parse(i);
    return _imc;
  }


  IMC2() {
    String peso = _peso2.text;
    String talla = _talla2.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC2 = double.parse(i);
    return _imc;
  }

  IMC3() {
    String peso = _peso3.text;
    String talla = _talla3.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC3 = double.parse(i);
    return _imc;
  }

  IMC4() {
    String peso = _peso4.text;
    String talla = _talla4.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC4 = double.parse(i);
    return _imc;
  }

  IMC5() {
    String peso = _peso5.text;
    String talla = _talla5.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC5 = double.parse(i);
    return _imc;
  }

  IMC6() {
    String peso = _peso6.text;
    String talla = _talla6.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC6 = double.parse(i);
    return _imc;
  }

  IMC7() {
    String peso = _peso7.text;
    String talla = _talla7.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC7 = double.parse(i);
    return _imc;
  }

  IMC8() {
    String peso = _peso8.text;
    String talla = _talla8.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC8 = double.parse(i);
    return _imc;
  }

  IMC9() {
    String peso = _peso9.text;
    String talla = _talla9.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC9 = double.parse(i);
    return _imc;
  }

  IMC10() {
    String peso = _peso10.text;
    String talla = _talla10.text;
    if(peso == "" && talla == ""){
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla)/100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC10 = double.parse(i);
    return _imc;
  }

  getAllCategoriesDiscapacidades() async {
    _Discapacidades = List<CapacidadesDiferentes>();
    var categories = await CategoryService().readCategoriesDiscapacidades();
    categories.forEach((category){
      setState(() {
        var categoryModel = CapacidadesDiferentes();
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        _Discapacidades.add(categoryModel);
      });
    });
  }

  getAllCategoriesCondicionesSalud() async{
    _Condiciones = List<CondicioneSaludModel>();
    var categories = await CategoryService().readCategoriesCondicionesSalud();
    categories.forEach((category){
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        _Condiciones.add(categoryModel);
      });
    });
  }

  getAllCategoriesAdicciones() async{
    _Adicciones = List<AdiccionesModel>();
    var categories = await CategoryService().readCategoriesAdicciones();
    categories.forEach((category){
      setState(() {
        var categoryModel = AdiccionesModel();
        categoryModel.Adiccion = category['Adiccion'];
        _Adicciones.add(categoryModel);
      });
    });
  }

  getAllCategoriesPuebloIndigena() async {
    _PueblosIndigenas = List<PuebloIndigenaModel>();
    var categories = await CategoryService().readCategoriesPuebloIndigena();
    categories.forEach((category){
      setState(() {
        var categoryModel = PuebloIndigenaModel();
        categoryModel.EtniaIndigena = category['EtniaIndigena'];
        _PueblosIndigenas.add(categoryModel);
      });
    });
  }

  getAllCategoriesPuebloClasificacion() async {
    _Clasificaciones = List<ClasificacionModel>();
    var categories = await CategoryService().readCategoriesClasificaciones();
    categories.forEach((category){
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClasCondicionesSalud = category['ClasCondicionesSalud'];
        _Clasificaciones.add(categoryModel);
      });
    });
  }

  renglon1() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image1_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image1_1.readAsBytesSync());
    }

    if(_image1_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image1_2.readAsBytesSync());
    }

    if(_image1_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image1_3.readAsBytesSync());
    }

    if(_image1_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image1_4.readAsBytesSync());
    }

    if(_image1_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image1_5.readAsBytesSync());
    }

    var value1 = _discapacidades1.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones1.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena1.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud1.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion1.text; // 'artlang'
    final Clasificacion = value5
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

    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades1.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades1.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones1.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones1.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso1.text),
        talla: double.parse(_talla1.text) ,
        imc: imC1,
        ClaveCondicionesSalud: (int.parse(_condicionSalud1.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud1.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft().trimRight(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion1.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion1.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion1.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena1.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena1.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon2() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image2_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image2_1.readAsBytesSync());
    }

    if(_image2_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image2_2.readAsBytesSync());
    }

    if(_image2_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image2_3.readAsBytesSync());
    }

    if(_image2_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image2_4.readAsBytesSync());
    }

    if(_image2_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image2_5.readAsBytesSync());
    }

    var value1 = _discapacidades2.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones2.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena2.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud2.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion2.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades2.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades2.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones2.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones2.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso2.text),
        talla: double.parse(_talla2.text) ,
        imc: imC2,
        ClaveCondicionesSalud: (int.parse(_condicionSalud2.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud2.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft().trimRight(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion2.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion2.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion2.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena2.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena2.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon3() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image3_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image3_1.readAsBytesSync());
    }

    if(_image3_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image3_2.readAsBytesSync());
    }

    if(_image3_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image3_3.readAsBytesSync());
    }

    if(_image3_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image3_4.readAsBytesSync());
    }

    if(_image3_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image3_5.readAsBytesSync());
    }

    var value1 = _discapacidades3.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones3.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena3.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud3.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion3.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades3.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades3.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones3.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones3.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso3.text),
        talla: double.parse(_talla3.text) ,
        imc: imC3,
        ClaveCondicionesSalud: (int.parse(_condicionSalud3.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud3.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion3.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion3.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion3.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena3.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena3.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon4() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image4_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image4_1.readAsBytesSync());
    }

    if(_image4_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image4_2.readAsBytesSync());
    }

    if(_image4_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image4_3.readAsBytesSync());
    }

    if(_image4_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image4_4.readAsBytesSync());
    }

    if(_image4_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image4_5.readAsBytesSync());
    }

    var value1 = _discapacidades4.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones4.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena4.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud4.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion4.text; // 'artlang'
    final Clasificacion = value5
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


    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades4.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades4.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones4.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones4.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso4.text),
        talla: double.parse(_talla4.text) ,
        imc: imC4,
        ClaveCondicionesSalud: (int.parse(_condicionSalud4.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud4.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion4.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion4.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion4.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena4.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena4.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon5() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image5_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image5_1.readAsBytesSync());
    }

    if(_image5_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image5_2.readAsBytesSync());
    }

    if(_image5_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image5_3.readAsBytesSync());
    }

    if(_image5_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image5_4.readAsBytesSync());
    }

    if(_image5_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image5_5.readAsBytesSync());
    }

    var value1 = _discapacidades5.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones5.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena5.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud5.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion5.text; // 'artlang'
    final Clasificacion = value5
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


    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades5.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades5.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones5.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones5.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso5.text),
        talla: double.parse(_talla5.text) ,
        imc: imC5,
        ClaveCondicionesSalud: (int.parse(_condicionSalud5.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud5.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion5.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion5.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion5.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena5.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena5.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon6() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image6_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image6_1.readAsBytesSync());
    }

    if(_image6_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image6_2.readAsBytesSync());
    }

    if(_image6_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image6_3.readAsBytesSync());
    }

    if(_image6_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image6_4.readAsBytesSync());
    }

    if(_image6_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image6_5.readAsBytesSync());
    }

    var value1 = _discapacidades6.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones6.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena6.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud6.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion6.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades6.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades6.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones6.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones6.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso6.text),
        talla: double.parse(_talla6.text) ,
        imc: imC6,
        ClaveCondicionesSalud: (int.parse(_condicionSalud6.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud6.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion6.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion6.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion6.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena6.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena6.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon7() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image7_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image7_1.readAsBytesSync());
    }

    if(_image7_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image7_2.readAsBytesSync());
    }

    if(_image7_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image7_3.readAsBytesSync());
    }

    if(_image7_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image7_4.readAsBytesSync());
    }

    if(_image7_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image7_5.readAsBytesSync());
    }

    var value1 = _discapacidades7.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones7.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena7.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud7.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion7.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades7.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades7.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones7.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones7.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso7.text),
        talla: double.parse(_talla7.text) ,
        imc: imC7,
        ClaveCondicionesSalud: (int.parse(_condicionSalud7.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud7.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion7.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion7.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion7.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena7.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena7.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon8() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image8_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image8_1.readAsBytesSync());
    }

    if(_image8_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image8_2.readAsBytesSync());
    }

    if(_image8_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image8_3.readAsBytesSync());
    }

    if(_image8_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image8_4.readAsBytesSync());
    }

    if(_image8_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image8_5.readAsBytesSync());
    }

    var value1 = _discapacidades8.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones8.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena8.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud8.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion8.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades8.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades8.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones8.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones8.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso8.text),
        talla: double.parse(_talla8.text) ,
        imc: imC8,
        ClaveCondicionesSalud: (int.parse(_condicionSalud8.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud8.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion8.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion8.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion,
        ponderacion: int.parse(_ponderacion8.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena8.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena8.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon9() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image9_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image9_1.readAsBytesSync());
    }

    if(_image9_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image9_2.readAsBytesSync());
    }

    if(_image9_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image9_3.readAsBytesSync());
    }

    if(_image9_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image9_4.readAsBytesSync());
    }

    if(_image9_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image9_5.readAsBytesSync());
    }

    var value1 = _discapacidades9.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones9.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena9.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud9.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion9.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades9.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades9.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones9.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones9.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso9.text),
        talla: double.parse(_talla9.text) ,
        imc: imC9,
        ClaveCondicionesSalud: (int.parse(_condicionSalud9.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud9.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion9.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion9.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion9.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena9.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena9.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon10() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image10_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image10_1.readAsBytesSync());
    }

    if(_image10_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image10_2.readAsBytesSync());
    }

    if(_image10_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image10_3.readAsBytesSync());
    }

    if(_image10_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image10_4.readAsBytesSync());
    }

    if(_image10_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image10_5.readAsBytesSync());
    }

    var value1 = _discapacidades10.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones10.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena10.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud10.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion10.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades10.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades10.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones10.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones10.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso10.text),
        talla: double.parse(_talla10.text) ,
        imc: imC10,
        ClaveCondicionesSalud: (int.parse(_condicionSalud10.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud10.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion10.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion10.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion10.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena10.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena10.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new ActualizarEstudio(widget.folio);
      }
      ));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon1() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image1_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image1_1.readAsBytesSync());
    }

    if(_image1_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image1_2.readAsBytesSync());
    }

    if(_image1_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image1_3.readAsBytesSync());
    }

    if(_image1_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image1_4.readAsBytesSync());
    }

    if(_image1_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image1_5.readAsBytesSync());
    }

    var value1 = _discapacidades1.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones1.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena1.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud1.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion1.text; // 'artlang'
    final Clasificacion = value5
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

    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades1.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades1.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones1.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones1.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso1.text),
        talla: double.parse(_talla1.text) ,
        imc: imC1,
        ClaveCondicionesSalud: (int.parse(_condicionSalud1.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud1.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion1.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion1.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion1.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena1.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena1.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud1(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon2() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image2_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image2_1.readAsBytesSync());
    }

    if(_image2_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image2_2.readAsBytesSync());
    }

    if(_image2_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image2_3.readAsBytesSync());
    }

    if(_image2_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image2_4.readAsBytesSync());
    }

    if(_image2_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image2_5.readAsBytesSync());
    }

    var value1 = _discapacidades2.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones2.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena2.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud2.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion2.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades2.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades2.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones2.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones2.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso2.text),
        talla: double.parse(_talla2.text) ,
        imc: imC2,
        ClaveCondicionesSalud: (int.parse(_condicionSalud2.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud2.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion2.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion2.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion2.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena2.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena2.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud2(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon3() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image3_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image3_1.readAsBytesSync());
    }

    if(_image3_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image3_2.readAsBytesSync());
    }

    if(_image3_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image3_3.readAsBytesSync());
    }

    if(_image3_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image3_4.readAsBytesSync());
    }

    if(_image3_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image3_5.readAsBytesSync());
    }


    var value1 = _discapacidades3.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones3.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena3.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud3.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion3.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades3.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades3.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones3.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones3.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso3.text),
        talla: double.parse(_talla3.text) ,
        imc: imC3,
        ClaveCondicionesSalud: (int.parse(_condicionSalud3.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud3.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion3.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion3.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion3.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena3.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena3.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud3(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon4() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image4_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image4_1.readAsBytesSync());
    }

    if(_image4_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image4_2.readAsBytesSync());
    }

    if(_image4_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image4_3.readAsBytesSync());
    }

    if(_image4_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image4_4.readAsBytesSync());
    }

    if(_image4_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image4_5.readAsBytesSync());
    }

    var value1 = _discapacidades4.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones4.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena4.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud4.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion4.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades4.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades4.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones4.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones4.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso4.text),
        talla: double.parse(_talla4.text) ,
        imc: imC4,
        ClaveCondicionesSalud: (int.parse(_condicionSalud4.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud4.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion4.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion4.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion4.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena4.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena4.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud4(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon5() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image5_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image5_1.readAsBytesSync());
    }

    if(_image5_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image5_2.readAsBytesSync());
    }

    if(_image5_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image5_3.readAsBytesSync());
    }

    if(_image5_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image5_4.readAsBytesSync());
    }

    if(_image5_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image5_5.readAsBytesSync());
    }

    var value1 = _discapacidades5.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones5.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena5.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud5.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion5.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades5.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades5.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones5.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones5.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso5.text),
        talla: double.parse(_talla5.text) ,
        imc: imC5,
        ClaveCondicionesSalud: (int.parse(_condicionSalud5.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud5.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion5.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion5.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion5.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena5.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena5.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud5(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon6() async{

    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image6_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image6_1.readAsBytesSync());
    }

    if(_image6_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image6_2.readAsBytesSync());
    }

    if(_image6_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image6_3.readAsBytesSync());
    }

    if(_image6_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image6_4.readAsBytesSync());
    }

    if(_image6_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image6_5.readAsBytesSync());
    }

    var value1 = _discapacidades6.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones6.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena6.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud6.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion6.text; // 'artlang'
    final Clasificacion = value5
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




    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades6.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades6.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones6.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones6.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso6.text),
        talla: double.parse(_talla6.text) ,
        imc: imC6,
        ClaveCondicionesSalud: (int.parse(_condicionSalud6.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud6.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion6.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion6.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion6.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena6.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena6.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud6(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon7() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image7_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image7_1.readAsBytesSync());
    }

    if(_image7_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image7_2.readAsBytesSync());
    }

    if(_image7_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image7_3.readAsBytesSync());
    }

    if(_image7_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image7_4.readAsBytesSync());
    }

    if(_image7_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image7_5.readAsBytesSync());
    }

    var value1 = _discapacidades7.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones7.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena7.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud7.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion7.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades7.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades7.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones7.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones7.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso7.text),
        talla: double.parse(_talla7.text) ,
        imc: imC7,
        ClaveCondicionesSalud: (int.parse(_condicionSalud7.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud7.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion7.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion7.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion7.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena7.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena7.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud7(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon8() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image8_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image8_1.readAsBytesSync());
    }

    if(_image8_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image8_2.readAsBytesSync());
    }

    if(_image8_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image8_3.readAsBytesSync());
    }

    if(_image8_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image8_4.readAsBytesSync());
    }

    if(_image8_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image8_5.readAsBytesSync());
    }

    var value1 = _discapacidades8.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones8.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena8.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud8.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion8.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades8.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades8.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones8.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones8.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso8.text),
        talla: double.parse(_talla8.text) ,
        imc: imC8,
        ClaveCondicionesSalud: (int.parse(_condicionSalud8.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud8.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion8.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion8.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion8.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena8.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena8.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud8(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon9() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image9_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image9_1.readAsBytesSync());
    }

    if(_image9_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image9_2.readAsBytesSync());
    }

    if(_image9_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image9_3.readAsBytesSync());
    }

    if(_image9_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image9_4.readAsBytesSync());
    }

    if(_image9_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image9_5.readAsBytesSync());
    }

    var value1 = _discapacidades9.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones9.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena9.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud9.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion9.text; // 'artlang'
    final Clasificacion = value5
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





    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades9.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades9.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones9.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones9.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso9.text),
        talla: double.parse(_talla9.text) ,
        imc: imC9,
        ClaveCondicionesSalud: (int.parse(_condicionSalud9.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud9.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion9.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion9.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion9.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena9.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena9.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud9(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon10() async{
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if(_image10_1.isNull){
      foto1 = "";
    }else{
      foto1 = Utility.base64String(_image10_1.readAsBytesSync());
    }

    if(_image10_2.isNull){
      foto2 = "";
    }else{
      foto2 = Utility.base64String(_image10_2.readAsBytesSync());
    }

    if(_image10_3.isNull){
      foto3 = "";
    }else{
      foto3 = Utility.base64String(_image10_3.readAsBytesSync());
    }

    if(_image10_4.isNull){
      foto4 = "";
    }else{
      foto4 = Utility.base64String(_image10_4.readAsBytesSync());
    }

    if(_image10_5.isNull){
      foto5 = "";
    }else{
      foto5 = Utility.base64String(_image10_5.readAsBytesSync());
    }
    var value1 = _discapacidades10.text; // 'artlang'
    final CapacidadesD = value1
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

    var value2 = _adicciones10.text; // 'artlang'
    final Adicciones = value2
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

    var value3 = _puebloIndigena10.text; // 'artlang'
    final Pueblo = value3
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

    var value4 = _condicionSalud10.text; // 'artlang'
    final Condiciones = value4
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

    var value5 = _clasificacion10.text; // 'artlang'
    final Clasificacion = value5
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


    Salud_PertenenciaIndigenenaTablaModel BModel = Salud_PertenenciaIndigenenaTablaModel(
        folio: int.parse(widget.folio),
        ClaveCapacidadDiferente: _discapacidades10.text.substring(0,1),
        OrdenCapacidadDiferente: (int.parse(_discapacidades10.text.substring(0,1)) - 1).toString(),
        CapacidadDiferente: CapacidadesD.trimLeft() ,
        ClaveAdiccion: _adicciones10.text.substring(0,1),
        OrdenAdiccion: (int.parse(_adicciones10.text.substring(0,1))- 1).toString(),
        Adiccion: Adicciones.trimLeft(),
        peso: double.parse(_peso10.text),
        talla: double.parse(_talla10.text) ,
        imc: imC10,
        ClaveCondicionesSalud: (int.parse(_condicionSalud10.text.substring(0,2).trimRight())).toString(),
        OrdenCondicionesSalud: (int.parse(_condicionSalud10.text.substring(0,2).trimRight())).toString(),
        CondicionesSalud: Condiciones.trimLeft(),
        ClaveClasCondicionesSalud: (int.parse(_clasificacion10.text.substring(0,2).trimRight())).toString(),
        OrdenClasCondicionesSalud: (int.parse(_clasificacion10.text.substring(0,2).trimRight())).toString(),
        ClasCondicionesSalud: Clasificacion.trimLeft(),
        ponderacion: int.parse(_ponderacion10.text),
        fileFoto1: foto1,
        fileFoto2: foto2,
        fileFoto3: foto3,
        fileFoto4: foto4,
        fileFoto5: foto5,
        ClaveEtniaIndigena: _puebloIndigena10.text.substring(0,2).trimRight(),
        OrdenEtniaIndigena: (int.parse(_puebloIndigena10.text.substring(0,2).trimRight())- 1).toString(),
        EtniaIndigena: Pueblo.trimLeft()
    );

    await DbHelper().upDateSalud10(BModel).then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new ActualizarEstudio(widget.folio);
      }
      ));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actualizar() async{
    if(!_nombre1.text.toString().isEmpty){
      if(!_nombre2.text.toString().isEmpty){
        if(!_nombre3.text.toString().isEmpty){
          if(!_nombre4.text.toString().isEmpty){
            if(!_nombre5.text.toString().isEmpty){
              if(!_nombre6.text.toString().isEmpty){
                if(!_nombre7.text.toString().isEmpty){
                  if(!_nombre8.text.toString().isEmpty){
                    if(!_nombre9.text.toString().isEmpty){
                      if(!_nombre10.text.toString().isEmpty){

                        actRenglon1();
                        actRenglon2();
                        actRenglon3();
                        actRenglon4();
                        actRenglon5();
                        actRenglon6();
                        actRenglon7();
                        actRenglon8();
                        actRenglon9();
                        actRenglon10();

                      }else{
                        actRenglon1();
                        actRenglon2();
                        actRenglon3();
                        actRenglon4();
                        actRenglon5();
                        actRenglon6();
                        actRenglon7();
                        actRenglon8();
                        actRenglon9();

                        Navigator.of(context)
                            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                          return new ActualizarEstudio(widget.folio);
                        }));
                      }
                    }else{
                      actRenglon1();
                      actRenglon2();
                      actRenglon3();
                      actRenglon4();
                      actRenglon5();
                      actRenglon6();
                      actRenglon7();
                      actRenglon8();

                      Navigator.of(context)
                          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new ActualizarEstudio(widget.folio);
                      }));
                    }
                  }else{
                    actRenglon1();
                    actRenglon2();
                    actRenglon3();
                    actRenglon4();
                    actRenglon5();
                    actRenglon6();
                    actRenglon7();

                    Navigator.of(context)
                        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new ActualizarEstudio(widget.folio);
                    }));

                  }
                }else{
                  actRenglon1();
                  actRenglon2();
                  actRenglon3();
                  actRenglon4();
                  actRenglon5();
                  actRenglon6();

                  Navigator.of(context)
                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return new ActualizarEstudio(widget.folio);
                  }));

                }
              }else{
                actRenglon1();
                actRenglon2();
                actRenglon3();
                actRenglon4();
                actRenglon5();

                Navigator.of(context)
                    .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new ActualizarEstudio(widget.folio);
                }));
              }
            }else{

              actRenglon1();
              actRenglon2();
              actRenglon3();
              actRenglon4();

              Navigator.of(context)
                  .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new ActualizarEstudio(widget.folio);
              }));

            }
          }else{

            actRenglon1();
            actRenglon2();
            actRenglon3();

            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new ActualizarEstudio(widget.folio);
            }));

          }
        }else{
          actRenglon1();
          actRenglon2();

          Navigator.of(context)
              .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
            return new ActualizarEstudio(widget.folio);
          }));

        }
      }else{
        actRenglon1();

        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new ActualizarEstudio(widget.folio);
        }));
      }
    }

  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Form(
        child: SingleChildScrollView(
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
                    icon: Icon(Icons.add_circle_outline,color: Colors.white),
                    label: Text('Cargar datos', style: TextStyle(color: Colors.white),),
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
                      children : [
                        Container(
                          child: DataTable(
                            columnSpacing: 30,
                            dataRowHeight: 100,
                            columns: [
                              DataColumn(label: Text('1')),
                              DataColumn(label: Text('Nombres')),
                              DataColumn(label: Text('Capacidades Diferentes')),
                              DataColumn(label: Text('Adicciones')),
                              DataColumn(label: Text('Peso (kg)')),
                              DataColumn(label: Text('Talla (cm)')),
                              DataColumn(label: Text('IMC')),
                              DataColumn(label: Text('Condiciones De Salud')),
                              DataColumn(label: Text('Clasificación')),
                              DataColumn(label: Text('Ponderación \n 1 AL 4( 1,2 ES LEVE Y 3,  4 ES GRAVE)')),
                              DataColumn(label: Text('Documento \n OBLIGATORIO CUANDO LA PONDERACIÓN SEA 3 O 4')),
                              DataColumn(label: Text('Pueblo Indigena')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getTextDataTable(controller: _nombre1, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades1, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones1,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso1,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla1,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC1(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC1();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud1, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion1, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion1, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image1_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion:getImage1_1),
                                      Container(
                                          child: _image1_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion:getImage1_2),
                                      Container(
                                          child: _image1_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion:getImage1_3),
                                      Container(
                                          child: _image1_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion:getImage1_4),
                                      Container(
                                          child: _image1_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion:getImage1_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena1,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(getTextDataTable(controller: _nombre2, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades2, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones2,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso2,hintName: 'Peso (kg)',inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla2,hintName: 'Talla (cm)',inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC2(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC2();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud2, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion2, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion2, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image2_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage2_1),
                                      Container(
                                          child: _image2_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage2_2),
                                      Container(
                                          child: _image2_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage2_3),
                                      Container(
                                          child: _image2_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage2_4),
                                      Container(
                                          child: _image2_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage2_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena2,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(getTextDataTable(controller: _nombre3, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades3, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones3,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso3,hintName: 'Peso (kg)',inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla3,hintName: 'Talla (cm)',inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC3(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC3();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud3, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion3, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion3, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image3_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage3_1),
                                      Container(
                                          child: _image3_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage3_2),
                                      Container(
                                          child: _image3_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage3_3),
                                      Container(
                                          child: _image3_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage3_4),
                                      Container(
                                          child: _image3_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage3_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena3,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(getTextDataTable(controller: _nombre4, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades4, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones4,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso4,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla4,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC4(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC4();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud4, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion4, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion4, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image4_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage4_1),
                                      Container(
                                          child: _image4_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage4_2),
                                      Container(
                                          child: _image4_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage4_3),
                                      Container(
                                          child: _image4_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage4_4),
                                      Container(
                                          child: _image4_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage4_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena4,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(getTextDataTable(controller: _nombre5, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades5, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones5,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso5,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla5,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC5(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC5();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud5, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion5, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion5, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image5_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage5_1),
                                      Container(
                                          child: _image5_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage5_2),
                                      Container(
                                          child: _image5_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage5_3),
                                      Container(
                                          child: _image5_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage5_4),
                                      Container(
                                          child: _image5_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage5_5),
                                      Container(
                                          child: _image5_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage5_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena5,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(getTextDataTable(controller: _nombre6, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades6, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones6,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso6,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla6,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC6(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC6();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud6, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion6, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion6 , hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image6_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage6_1),
                                      Container(
                                          child: _image6_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage6_1),
                                      Container(
                                          child: _image6_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage6_3),
                                      Container(
                                          child: _image6_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage6_4),
                                      Container(
                                          child: _image6_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage6_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena6,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(getTextDataTable(controller: _nombre7, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades7, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones7,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso7,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla7,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC7(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC7();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud7, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion7, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion7, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image7_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage7_1),
                                      Container(
                                          child: _image7_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage7_2),
                                      Container(
                                          child: _image7_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage7_3),
                                      Container(
                                          child: _image7_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage7_4),
                                      Container(
                                          child: _image7_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage7_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena7,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('8')),
                                DataCell(getTextDataTable(controller: _nombre8, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades8, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones8,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso8,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla8,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC8(),
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC8();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud8, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion8, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion8, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image8_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage8_1),
                                      Container(
                                          child: _image8_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage8_2),
                                      Container(
                                          child: _image8_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage8_3),
                                      Container(
                                          child: _image8_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage8_4),
                                      Container(
                                          child: _image8_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage8_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena8,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('9')),
                                DataCell(getTextDataTable(controller: _nombre9, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades9, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones9,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso9,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla9,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC9(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC9();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud9, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion9, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion9, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image9_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage9_1),
                                      Container(
                                          child: _image9_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage9_2),
                                      Container(
                                          child: _image9_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage9_3),
                                      Container(
                                          child: _image9_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage9_4),
                                      Container(
                                          child: _image9_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage9_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena9,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
                              ]),

                              DataRow(cells: [
                                DataCell(Text('10')),
                                DataCell(getTextDataTable(controller: _nombre10, hintName: 'Nombres')),
                                DataCell(getSearchField(controller: _discapacidades10, suggestions: _Discapacidades.map((discapacidad) =>
                                    SearchFieldListItem(discapacidad.CapacidadDiferente, item: discapacidad)).toList(),
                                    hintName: 'Discapacidades Diferentes')),
                                DataCell(getSearchField(controller: _adicciones10,suggestions: _Adicciones.map((adiccion) =>
                                    SearchFieldListItem(adiccion.Adiccion, item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(controller: _peso10,hintName: 'Peso (kg)', inputType: TextInputType.number)),
                                DataCell(getTextDataTable(controller: _talla10,hintName: 'Talla (cm)', inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 300,
                                    child: TextField(controller: IMC10(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                                            ),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText: 'Presionar para calcular IMC'
                                      ),
                                      onTap: () async{
                                        setState(() {
                                          IMC10();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(controller: _condicionSalud10, suggestions: _Condiciones.map((condicion) =>
                                    SearchFieldListItem(condicion.CondicionesSalud, item: condicion)).toList(),
                                    hintName: 'Condiciones De Salud')),
                                DataCell(getSearchField(controller: _clasificacion10, suggestions: _Clasificaciones.map((clasificacion) =>
                                    SearchFieldListItem(clasificacion.ClasCondicionesSalud, item: clasificacion)).toList(),
                                    hintName: 'Clasificación')),
                                DataCell(getTextDataTable(controller: _ponderacion10, hintName: 'Ponderación',)),
                                DataCell(
                                  Column(
                                    children: [
                                      Container(
                                          child: _image10_1 == null
                                              ? Text('Imagen 1 No Seleccionda')
                                              : Text('Imagen 1 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage10_1),
                                      Container(
                                          child: _image10_2 == null
                                              ? Text('Imagen 2 No Seleccionda')
                                              : Text('Imagen 2 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage10_2),
                                      Container(
                                          child: _image10_3 == null
                                              ? Text('Imagen 3 No Seleccionda')
                                              : Text('Imagen 3 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage10_3),
                                      Container(
                                          child: _image10_4 == null
                                              ? Text('Imagen 4 No Seleccionda')
                                              : Text('Imagen 4 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage10_4),
                                      Container(
                                          child: _image10_5 == null
                                              ? Text('Imagen 5 No Seleccionda')
                                              : Text('Imagen 5 Seleccionada')
                                      ),
                                      botonFoto(funcion: getImage10_5),
                                    ],
                                  ),
                                ),
                                DataCell(getSearchField(controller: _puebloIndigena10,suggestions: _PueblosIndigenas.map((pueblo) =>
                                    SearchFieldListItem(pueblo.EtniaIndigena, item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',))
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
                    icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.white),
                    label: Text('Actualizar', style: TextStyle(color: Colors.white),),
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
