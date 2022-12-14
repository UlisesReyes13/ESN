import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Model/CodigoPostalModel.dart';
import 'package:esn/Model/ComunidadesModel.dart';
import 'package:esn/Model/DatosGeneralesModel.dart';
import 'package:esn/Model/DispoModel.dart';
import 'package:esn/Model/EstadosModel.dart';
import 'package:esn/Model/GruposModel.dart';
import 'package:esn/Model/Municipios.dart';
import 'package:esn/Model/TipoVialidad.dart';
import 'package:esn/Model/TiposAsentamiento.dart';
import 'package:esn/Screens/ServiciosBanios.dart';
import 'package:esn/Screens/TablaFolios.dart';
import 'package:esn/replaceAll/replaceAllLetter.dart';
import 'package:esn/replaceAll/replaceAllNum.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:searchfield/searchfield.dart';
import 'package:esn/Model/NombreAsentamiento.dart';
import 'package:intl/intl.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DatosGenerales extends StatefulWidget {
  @override
  State<DatosGenerales> createState() => _DatosGeneralesState();
}

class _DatosGeneralesState extends State<DatosGenerales> {
  final _fechaCaptura = TextEditingController();
  final _folio = TextEditingController();
  final _nombreComunidad = TextEditingController();
  final _estado = TextEditingController();
  final _tipoAsentamiento = TextEditingController();
  final _calle = TextEditingController();
  final _entreCalles = TextEditingController();
  final _grupo = TextEditingController();
  final _municipio = TextEditingController();
  final _nombreAsentamiento = TextEditingController();
  final _noExt = TextEditingController();
  final _noInt = TextEditingController();
  final _fecha = TextEditingController();
  final _localidad = TextEditingController();
  final _tipoVialidad = TextEditingController();
  final _cp = TextEditingController();
  final _telefono = TextEditingController();
  final _cdispo = TextEditingController();
  final _folioDispo = TextEditingController();
  var dbHelper;
  var cargar;

  List<NombreAsentamiento> _NombreAsentamiento = [];
  List<TiposVialidad> _TiposVialidad = [];
  List<Municipios> _Municipios = [];
  List<TiposAsentamiento> _TiposAsentamiento = [];
  List<CodigoPostalModel> _CodigoPostal = [];
  List<DatosGeneralesModel> _Folio = [];
  List<EstadosModel> _Estado = [];
  List<CodigoPostalModel> _CodigoPostal2 = [];
  List<ComunidadesModel> _Comunidades = [];
  List<GruposModel> _Grupo = [];
  List<DatosGeneralesModel> _DatosGenerales = [];
  List<TiposAsentamiento> _TiposAsentamiento2 = [];
  List<TiposVialidad> _TiposVialidad2 = [];

  @override
  void initState() {
    getAllCategoriesNombreAsentamiento();
    getAllCategoriesComunidades();
    getAllCategoriesMunicipios();
    getAllCategoriesTiposAsentamientos();
    getAllCategoriesTipoVialidad();
    getAllCategoriesEstados();
    getFolio();
    getDate();
    getAllCategoriesCodigoPostal();
    getDispo();
    super.initState();
    dbHelper = DbHelper();
  }

  cargarPreferencias() async {
    await getAllDatosgenerales();
    getAllCategoriesCodigoPostal2();
  }

  getDate() {
    var now = new DateTime.now();
    var formato = new DateFormat('yyyy-MM-dd');
    String fecha = formato.format(now);
    _fecha.text = fecha;
    _noInt.text = 'N/A';
  }

  getAllCategoriesNombreAsentamiento() async {
    _NombreAsentamiento = [];
    var categories = await CategoryService().readCtegoriesNomAsen();
    categories.forEach((category) {
      setState(() {
        var categoryModel = NombreAsentamiento();
        categoryModel.NombreAsentamientos = category['NombreAsentamientos'];
        _NombreAsentamiento.add(categoryModel);
      });
    });
  }

  getAllDatosgenerales() async {
    _DatosGenerales = [];
    var categories =
        await CategoryService().readDatosGeenerales(int.parse(_folio.text) - 1);
    categories.forEach((category) {
      setState(() {
        var categoryModel = DatosGeneralesModel();
        categoryModel.folio = category['folio'];
        categoryModel.fechaCaptura = category['fechaCaptura'];
        categoryModel.calle = category['calle'];
        categoryModel.entreCalles = category['entreCalles'];
        categoryModel.claveGrupo = category['claveGrupo'];
        categoryModel.grupo = category['grupo'];
        categoryModel.noExt = category['noExt'];
        categoryModel.noInt = category['noInt'];
        categoryModel.fecha = category['fecha'];

        categoryModel.localidad = category['localidad'];
        categoryModel.telefono = category['telefono'];
        categoryModel.claveCodigoPostal =
            int.parse(category['claveCodigoPostal']);
        categoryModel.claveEstado = int.parse(category['claveEstado']);
        categoryModel.estado = category['estado'];
        categoryModel.claveComunidad = category['claveComunidad'];

        categoryModel.nombreComunidad = category['nombreComunidad'];
        categoryModel.claveMunicipio = int.parse(category['claveMunicipio']);
        categoryModel.municipio = category['municipio'];
        categoryModel.claveAsentamiento =
            int.parse(category['claveAsentamiento']);
        categoryModel.nombreAsentamiento = category['nombreAsentamiento'];
        categoryModel.claveTipoAsentamiento =
            int.parse(category['claveTipoAsentamiento']);

        categoryModel.ordentipoAsentamiento = category['ordentipoAsentamiento'];
        categoryModel.tipoAsentamiento = category['tipoAsentamiento'];
        categoryModel.claveTipoVialidad =
            int.parse(category['claveTipoVialidad']);
        categoryModel.ordentipovialidad = category['ordentipovialidad'];
        categoryModel.tipoVialidad = category['tipoVialidad'];

        _DatosGenerales.add(categoryModel);
      });
    });

    getAllCategoriesCodigoPostal2();
    _folio.text = _DatosGenerales.map((e) => e.folio.toString()).first;
    _fechaCaptura.text = _DatosGenerales.map((e) => e.fechaCaptura).first;
    _calle.text = _DatosGenerales.map((e) => e.calle).first;
    _entreCalles.text = _DatosGenerales.map((e) => e.entreCalles).first;

    _grupo.text = _DatosGenerales.map((e) => e.grupo).first;
    _noExt.text = _DatosGenerales.map((e) => e.noExt).first;
    _noInt.text = _DatosGenerales.map((e) => e.noInt).first;
    _fecha.text = _DatosGenerales.map((e) => e.fecha).first;
    _localidad.text = _DatosGenerales.map((e) => e.localidad).first;
    _telefono.text = _DatosGenerales.map((e) => e.telefono).first;
    _cp.text = _DatosGenerales.map((e) => e.claveCodigoPostal.toString()).first;

    _nombreComunidad.text = _DatosGenerales.map((e) => e.nombreComunidad).first;
    _estado.text = _DatosGenerales.map((e) => e.estado.toString()).first;
    _municipio.text = _DatosGenerales.map((e) => e.municipio).first;
    _nombreAsentamiento.text =
        _DatosGenerales.map((e) => e.nombreAsentamiento).first;
    _tipoAsentamiento.text =
        _DatosGenerales.map((e) => e.claveTipoAsentamiento.toString()).first +
            " " +
            _DatosGenerales.map((e) => e.tipoAsentamiento).first;
    _tipoVialidad.text =
        _DatosGenerales.map((e) => e.claveTipoVialidad.toString()).first +
            " " +
            _DatosGenerales.map((e) => e.tipoVialidad).first;
  }

  getAllCategoriesCodigoPostal() async {
    _CodigoPostal = [];
    var categories = await CategoryService().readCategoriesCodigoPostal();
    categories.forEach((category) {
      setState(() {
        var categoryModel = CodigoPostalModel();
        categoryModel.ClaveCP = category['ClaveCP'];
        categoryModel.Asentamiento = category['Asentamiento'];
        categoryModel.TipoAsentamiento = category['TipoAsentamiento'];
        categoryModel.Municipio = category['Municipio'];
        categoryModel.Estado = category['Estado'];
        categoryModel.Ciudad = category['Ciudad'];
        categoryModel.ClaveEstado = category['ClaveEstado'];
        categoryModel.Clavetipo_asenta = category['Clavetipo_asenta'];
        categoryModel.ClaveMunicipio = category['ClaveMunicipio'];
        categoryModel.TipoZona = category['TipoZona'];
        categoryModel.ClaveCiudad = category['ClaveCiudad'];
        _CodigoPostal.add(categoryModel);
      });
    });
  }

  getAllCategoriesCodigoPostal2() async {
    _CodigoPostal2 = [];
    var categories =
        await CategoryService().readCategoriesCodigoPostal2(_cp.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CodigoPostalModel();
        categoryModel.ClaveCP = category['ClaveCP'];
        categoryModel.Asentamiento = category['Asentamiento'];
        categoryModel.TipoAsentamiento = category['TipoAsentamiento'];
        categoryModel.Municipio = category['Municipio'];
        categoryModel.Estado = category['Estado'];
        categoryModel.Ciudad = category['Ciudad'];
        categoryModel.ClaveEstado = category['ClaveEstado'];
        categoryModel.Clavetipo_asenta = category['Clavetipo_asenta'];
        categoryModel.ClaveMunicipio = category['ClaveMunicipio'];
        categoryModel.TipoZona = category['TipoZona'];
        categoryModel.ClaveCiudad = category['ClaveCiudad'];
        _CodigoPostal2.add(categoryModel);
      });
    });

    _estado.text = _CodigoPostal2.map((e) => e.Estado).first;
    _municipio.text = _CodigoPostal2.map((e) => e.Municipio).first;
    _localidad.text = _CodigoPostal2.map((e) => e.Ciudad).first;

    getAllCategoriesGrupo();
  }

  getAllCategoriesComunidades() async {
    _Comunidades = [];
    var categories = await CategoryService().readCategoriesComunidades();
    categories.forEach((category) {
      setState(() {
        var categoryModel = ComunidadesModel();
        categoryModel.pk_Comunidad = category['pk_Comunidad'];
        categoryModel.Comunidad = category['Comunidad'];
        _Comunidades.add(categoryModel);
      });
    });
  }

  getAllCategoriesGrupo() async {
    _Grupo = [];
    var categories =
        await CategoryService().readCategoriesGrupo(_nombreComunidad.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = GruposModel();
        categoryModel.ClaveGrupo = category['ClaveGrupo'];
        categoryModel.Grupo = category['Grupo'];

        _Grupo.add(categoryModel);
      });
    });

    _grupo.text = _Grupo.map((e) => e.Grupo).first;
  }

  getAllCategoriesMunicipios() async {
    _Municipios = [];
    var categories = await CategoryService().readCtegoriesMunicipios();
    categories.forEach((category) {
      setState(() {
        var categoryModel = Municipios();
        categoryModel.Municipio = category['Municipio'];
        _Municipios.add(categoryModel);
      });
    });
  }

  getAllCategoriesTiposAsentamientos() async {
    _TiposAsentamiento = [];
    var categories = await CategoryService().readCtegoriesTipoAsentamiento();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TiposAsentamiento();
        categoryModel.TipoAsentamiento = category['TipoAsentamiento'];
        _TiposAsentamiento.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoVialidad() async {
    _TiposVialidad = [];
    var categories = await CategoryService().readCtegoriesTipoVialidad();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TiposVialidad();
        categoryModel.TipoVialidad = category['TipoVialidad'];
        _TiposVialidad.add(categoryModel);
      });
    });
  }

  getAllCategoriesEstados() async {
    _Estado = [];
    var categories = await CategoryService().readCategoriesEstados();
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstadosModel();
        categoryModel.Estado = category['Estado'];
        _Estado.add(categoryModel);
      });
    });
  }

  getFolio() async {
    _Folio = [];
    var categories = await CategoryService().Folio();
    categories.forEach((category) {
      setState(() {
        var categoryModel = DatosGeneralesModel();
        categoryModel.folio = category['folio'];
        _Folio.add(categoryModel);
        var ltFolio = _Folio.map((e) => e.folio + 1);
        final lastFolio =
            ltFolio.toString().replaceAll("(", "").replaceAll(")", "");
        _folio.text = lastFolio;
      });
    });
  }

  List<DispoModel> _dispo = [];
  getDispo() async {
    _dispo = [];
    var categories = await CategoryService().readDisp();
    categories.forEach((category) {
      setState(() {
        var categoryModel = DispoModel();
        categoryModel.dispositivo = category['dispositivo'];
        _dispo.add(categoryModel);
      });
    });

    _cdispo.text = _dispo.map((e) => e.dispositivo.toString()).first;
  }

  actualizar() async {
    String folio = _folio.text;
    String fechaCaptura = _fechaCaptura.text;
    String nombreComunidad = _nombreComunidad.text;
    String estado = _estado.text;
    String tipoAsentamiento = _tipoAsentamiento.text;
    String calle = _calle.text;
    String entreCalles = _entreCalles.text;
    String grupo = _grupo.text;
    String municipio = _municipio.text;
    String nombreAsentamiento = _nombreAsentamiento.text;
    String noExt = _noExt.text;
    String noInt = _noInt.text;
    String fecha = _fecha.text;
    String localidad = _localidad.text;
    String tipoVialidad = _tipoVialidad.text;
    String cp = _cp.text;
    String telefono = _telefono.text;
    String dispFolio = _cdispo.text + _folio.text;

    _TiposAsentamiento2 = [];
    var categories =
        await CategoryService().readTipoAsenta(_tipoAsentamiento.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = TiposAsentamiento();
        categoryModel.Orden = category['Orden'];
        _TiposAsentamiento2.add(categoryModel);
      });
    });

    _TiposVialidad2 = [];
    var categories1 =
        await CategoryService().readTipoVialidad(_tipoVialidad.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = TiposVialidad();
        categoryModel1.Orden = category['Orden'];
        _TiposVialidad2.add(categoryModel1);
      });
    });

    if (nombreComunidad.isEmpty) {
      alertDialog(context, "Error: No se registro nombre de la comunidad");
    } else if (grupo.isEmpty) {
      alertDialog(context, "Error: No se registro grupo");
    } else if (estado.isEmpty) {
      alertDialog(context, "Error: No se registro estado");
    } else if (municipio.isEmpty) {
      alertDialog(context, "Error: No se registro municipio");
    } else if (nombreAsentamiento.isEmpty) {
      alertDialog(context, "Error: No se registro nombre de asentamiento");
    } else if (tipoAsentamiento.isEmpty) {
      alertDialog(context, "Error: No se registro tipo de asentamiento");
    } else if (tipoVialidad.isEmpty) {
      alertDialog(context, "Error: No se registro tipo de vialidad");
    } else if (cp.isEmpty) {
      alertDialog(context, "Error: No se registro Codigo Postal");
    } else if (telefono.length < 10) {
      alertDialog(
          context, 'El n??mero de tel??fono no debe ser menor a 10 digitos');
    } else if (telefono.length > 10) {
      alertDialog(
          context, 'El n??mero de tel??fono no debe ser mayor a 10 digitos');
    } else {
      replaceAllNum rpn = new replaceAllNum();
      replaceAllLetter rpl = new replaceAllLetter();
      var value1 = tipoAsentamiento;
      final nombreTipoAsentamiento = rpn.replaceNum(value1).toString();

      var claveTipoAsentamiento = tipoAsentamiento;
      final claveTipoAsenta =
          rpl.replaceLetter(claveTipoAsentamiento).toString();
      var claveTipoAsentam = claveTipoAsenta.substring(0, 2);

      var value = tipoVialidad;
      final nombreTipoVialidad = rpn.replaceNum(value).toString();

      var claveTipoVialidad = tipoVialidad;
      final claveTipoVia = rpl.replaceLetter(claveTipoVialidad).toString();

      var claveTipoV = claveTipoVia.substring(0, 2);
      DatosGeneralesModel BModel = DatosGeneralesModel(
          folio: int.parse(folio),
          fechaCaptura: fechaCaptura,
          calle: calle,
          entreCalles: entreCalles,
          claveGrupo: _Grupo.map((e) => e.ClaveGrupo).first,
          grupo: grupo,
          noExt: noExt,
          noInt: noInt,
          fecha: fecha,
          localidad: localidad,
          telefono: telefono,
          claveCodigoPostal: int.parse(cp),
          claveEstado: _CodigoPostal2.map((e) => e.ClaveEstado).first,
          estado: _estado.text.toString(),
          claveComunidad: _Grupo.map((e) => e.ClaveGrupo).first,
          nombreComunidad: _nombreComunidad.text.toString(),
          claveMunicipio: _CodigoPostal2.map((e) => e.ClaveMunicipio).first,
          municipio: _municipio.text.toString(),
          claveAsentamiento:
              _CodigoPostal2.map((e) => e.Clavetipo_asenta).first,
          nombreAsentamiento: _nombreAsentamiento.text.toString(),
          claveTipoAsentamiento: int.parse(claveTipoAsentam),
          ordentipoAsentamiento:
              int.parse(_TiposAsentamiento2.map((e) => e.Orden).first),
          tipoAsentamiento: nombreTipoAsentamiento.trimLeft(),
          claveTipoVialidad: int.parse(claveTipoV),
          ordentipovialidad:
              int.parse(_TiposVialidad2.map((e) => e.Orden).first),
          tipoVialidad: nombreTipoVialidad.trimLeft());

      await DbHelper().upDateDatosGenerales(BModel).then((datosGeneralesModel) {
        alertDialog(context, "Se registro correctamente");

        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new ServiciosBanios(folio);
        }));
      }).catchError((error) {
        print(error);
        alertDialog(context, "Error: No se guardaron los datos");
      });
    }
  }

  insertDatosGenerales() async {
    String folio = _folio.text;
    String fechaCaptura = _fechaCaptura.text;
    String nombreComunidad = _nombreComunidad.text;
    String estado = _estado.text;
    String tipoAsentamiento = _tipoAsentamiento.text;
    String calle = _calle.text;
    String entreCalles = _entreCalles.text;
    String grupo = _grupo.text;
    String municipio = _municipio.text;
    String nombreAsentamiento = _nombreAsentamiento.text;
    String noExt = _noExt.text;
    String noInt = _noInt.text;
    String fecha = _fecha.text;
    String localidad = _localidad.text;
    String tipoVialidad = _tipoVialidad.text;
    String cp = _cp.text;
    String telefono = _telefono.text;

    if (nombreComunidad.isEmpty) {
      alertDialog(context, "Error: No se registro nombre de la comunidad");
    } else if (grupo.isEmpty) {
      alertDialog(context, "Error: No se registro grupo");
    } else if (estado.isEmpty) {
      alertDialog(context, "Error: No se registro estado");
    } else if (municipio.isEmpty) {
      alertDialog(context, "Error: No se registro municipio");
    } else if (nombreAsentamiento.isEmpty) {
      alertDialog(context, "Error: No se registro nombre de asentamiento");
    } else if (tipoAsentamiento.isEmpty) {
      alertDialog(context, "Error: No se registro tipo de asentamiento");
    } else if (tipoVialidad.isEmpty) {
      alertDialog(context, "Error: No se registro tipo de vialidad");
    } else if (cp.isEmpty) {
      alertDialog(context, "Error: No se registro Codigo Postal");
    } else if (telefono.length < 10) {
      alertDialog(
          context, 'El n??mero de tel??fono no debe ser menor a 10 digitos');
    } else if (telefono.length > 10) {
      alertDialog(
          context, 'El n??mero de tel??fono no debe ser mayor a 10 digitos');
    } else {
      _TiposAsentamiento2 = [];
      var categories =
          await CategoryService().readTipoAsenta(_tipoAsentamiento.text);
      categories.forEach((category) {
        setState(() {
          var categoryModel = TiposAsentamiento();
          categoryModel.Orden = category['Orden'];
          _TiposAsentamiento2.add(categoryModel);
        });
      });

      _TiposVialidad2 = [];
      var categories1 =
          await CategoryService().readTipoVialidad(_tipoVialidad.text);
      categories1.forEach((category) {
        setState(() {
          var categoryModel1 = TiposVialidad();
          categoryModel1.Orden = category['Orden'];
          _TiposVialidad2.add(categoryModel1);
        });
      });

      replaceAllNum rpn = new replaceAllNum();
      replaceAllLetter rpl = new replaceAllLetter();
      var value1 = tipoAsentamiento;
      final nombreTipoAsentamiento = rpn.replaceNum(value1).toString();

      var claveTipoAsentamiento = tipoAsentamiento;
      final claveTipoAsenta =
          rpl.replaceLetter(claveTipoAsentamiento).toString();
      var claveTipoAsentam = claveTipoAsenta.substring(0, 2);

      var value = tipoVialidad;
      final nombreTipoVialidad = rpn.replaceNum(value).toString();

      var claveTipoVialidad = tipoVialidad;
      final claveTipoVia = rpl.replaceLetter(claveTipoVialidad).toString();

      var claveTipoV = claveTipoVia.substring(0, 2);

      DatosGeneralesModel DModel = DatosGeneralesModel(
          folio: int.parse(folio),
          fechaCaptura: fechaCaptura,
          calle: calle,
          entreCalles: entreCalles,
          claveGrupo: _Grupo.map((e) => e.ClaveGrupo).first,
          grupo: grupo,
          noExt: noExt,
          noInt: noInt,
          fecha: fecha,
          localidad: localidad,
          telefono: telefono,
          claveCodigoPostal: int.parse(cp),
          claveEstado: _CodigoPostal2.map((e) => e.ClaveEstado).first,
          estado: _estado.text.toString(),
          claveComunidad: _Grupo.map((e) => e.ClaveGrupo).first,
          nombreComunidad: _nombreComunidad.text,
          claveMunicipio: _CodigoPostal2.map((e) => e.ClaveMunicipio).first,
          municipio: _municipio.text.toString(),
          claveAsentamiento:
              _CodigoPostal2.map((e) => e.Clavetipo_asenta).first,
          nombreAsentamiento: _nombreAsentamiento.text.toString(),
          claveTipoAsentamiento: int.parse(claveTipoAsentam),
          ordentipoAsentamiento:
              int.parse(_TiposAsentamiento2.map((e) => e.Orden).first),
          tipoAsentamiento: nombreTipoAsentamiento.trimLeft(),
          claveTipoVialidad: int.parse(claveTipoV),
          ordentipovialidad:
              int.parse(_TiposVialidad2.map((e) => e.Orden).first),
          tipoVialidad: nombreTipoVialidad.trimLeft());

      await dbHelper.saveDatosGenerales(DModel).then((datosGeneralesData) {
        alertDialog(context, "Se registro correctamente");

        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new ServiciosBanios(folio);
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
        title: Text('Datos Generales'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => TablaFolios()),
                (Route<dynamic> route) => false,
              );
            }),
      ),
      body: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    readOnly: true,
                    controller: _cdispo,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextField(
                  controller: _folio,
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                      onPressed: cargarPreferencias,
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Cargar Datos",
                        style: TextStyle(color: Colors.white),
                      )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Fecha'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    readOnly: true,
                    controller: _fecha,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Nombre Comunidad/ Programa'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    suggestions: _Comunidades.map((comunidades) =>
                        SearchFieldListItem(comunidades.Comunidad,
                            item: comunidades)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _nombreComunidad,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'C??digo Postal'),
                SizedBox(height: 5.0),
                //Menu desplegable
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    suggestions: _CodigoPostal.map((codigoPostal) =>
                        SearchFieldListItem(codigoPostal.ClaveCP.toString(),
                            item: codigoPostal)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _cp,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                      onPressed: getAllCategoriesCodigoPostal2,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Buscar C??digo Postal',
                        style: TextStyle(color: Colors.white),
                      )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),

                getTextQuestion(question: 'Estado'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    readOnly: true,
                    controller: _estado,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Municipio'),
                SizedBox(height: 5.0),
                //Menu desplegable Municipio
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    readOnly: true,
                    controller: _municipio,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Nombre del Asentamiento'),
                SizedBox(height: 5.0),
                //Menu desplegable Nombre Asentamiento
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    suggestions: _CodigoPostal2.map((nombreAsentamiento) =>
                        SearchFieldListItem(nombreAsentamiento.Asentamiento,
                            item: nombreAsentamiento)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _nombreAsentamiento,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Tipo de Asentamiento'),
                //Menu desplegable Tipo Asententamiento
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    suggestions: _TiposAsentamiento.map((tiposAsentamiento) =>
                        SearchFieldListItem(tiposAsentamiento.TipoAsentamiento,
                            item: tiposAsentamiento)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoAsentamiento,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Localidad'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    readOnly: true,
                    controller: _localidad,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Calle'),
                SizedBox(height: 5.0),
                getTextField(controller: _calle),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Entre Calles'),
                SizedBox(height: 5.0),
                getTextField(controller: _entreCalles),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'No.Exterior'),
                SizedBox(height: 5.0),
                getTextField(controller: _noExt),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'No.Interior'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _noInt,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                    onTap: () async {
                      setState(() {
                        _noInt.text = '';
                      });
                    },
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Grupo'),
                SizedBox(height: 5.0),
                getTextField(controller: _grupo),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Tipo de Vialidad'),
                SizedBox(height: 5.0),
                //Menu desplegable
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    suggestions: _TiposVialidad.map((tipovialidad) =>
                        SearchFieldListItem(tipovialidad.TipoVialidad,
                            item: tipovialidad)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoVialidad,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {},
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'T??lefono (10 digitos)'),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: _telefono,
                    decoration: InputDecoration(
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
                        fillColor: Colors.grey[120],
                        filled: true),
                  ),
                ),
                SizedBox(height: 10.0),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                      onPressed: insertDatosGenerales,
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
