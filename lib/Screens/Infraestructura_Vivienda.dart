import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/EstadoCasaConstruccionModel.dart';
import 'package:esn/Model/TipoMuroModel.dart';
import 'package:esn/Model/TipoPisoModel.dart';
import 'package:esn/Model/TipoTechoModel.dart';
import 'package:esn/Model/TipoTenenciaModel.dart';
import 'package:esn/Model/TipoViviendaModel.dart';
import 'package:esn/Screens/Caracteristicas_Casa.dart';
import 'package:esn/Screens/Salud_PertenenciaIndigenaTabla.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class Infraestructura_Vivienda extends StatefulWidget {
  String folio;
  Infraestructura_Vivienda(this.folio);

  @override
  State<Infraestructura_Vivienda> createState() =>
      _Infraestructura_ViviendaState();
}

class _Infraestructura_ViviendaState extends State<Infraestructura_Vivienda> {
  List<TipoViviendaModel> _TipoVivienda = List<TipoViviendaModel>();
  List<TipoPisoModel> _TipoPiso = List<TipoPisoModel>();
  List<TipoTenenciaModel> _TipoTenencia = List<TipoTenenciaModel>();
  List<TipoTechoModel> _TipoTecho = List<TipoTechoModel>();
  List<TipoMuroModel> _TipoMuro = List<TipoMuroModel>();

  List<TipoViviendaModel> _TipoVivienda2 = List<TipoViviendaModel>();
  List<TipoPisoModel> _TipoPiso2 = List<TipoPisoModel>();
  List<TipoTenenciaModel> _TipoTenencia2 = List<TipoTenenciaModel>();
  List<TipoTechoModel> _TipoTecho2 = List<TipoTechoModel>();
  List<TipoMuroModel> _TipoMuro2 = List<TipoMuroModel>();

  final _tipoCasa = TextEditingController();
  final _otroTipoCasa = TextEditingController();
  final _tipoPiso = TextEditingController();
  final _otroPiso = TextEditingController();
  final _tipoTenencia = TextEditingController();
  final _otroTenencia = TextEditingController();
  final _tipoTecho = TextEditingController();
  final _otroTecho = TextEditingController();
  final _tipoMuro = TextEditingController();
  final _otroMuro = TextEditingController();
  List<EstadoCasaConstruccionModel> _EstadoCasa =
      List<EstadoCasaConstruccionModel>();
  var dbHelper = DbHelper();

  bool valTipoCasa = false;
  bool valPiso = false;
  bool valTecho = false;
  bool valTenencia = false;
  bool valMuro = false;

  @override
  void initState() {
    getAllCategoriesTipoMuro();
    getAllCategoriesTipoPiso();
    getAllCategoriesTipoTecho();
    getAllCategoriesTipoTenencia();
    getAllCtegoriesTipoVivienda();

    super.initState();
  }

  getAllEstadoCasa() async {
    _EstadoCasa = List<EstadoCasaConstruccionModel>();
    var categories =
        await CategoryService().readEstadoCasa(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = EstadoCasaConstruccionModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveTipoVivienda = category['ClaveTipoVivienda'];
        categoryModel.OrdenTipoVivienda = category['OrdenTipoVivienda'];
        categoryModel.TipoVivienda = category['TipoVivienda'];
        categoryModel.ClaveTipoPiso = category['ClaveTipoPiso'];
        categoryModel.OrdenTipoPiso = category['OrdenTipoPiso'];
        categoryModel.TipoPiso = category['TipoPiso'];
        categoryModel.ClaveTenencia = category['ClaveTenencia'];
        categoryModel.OrdenTenencia = category['OrdenTenencia'];
        categoryModel.Tenencia = category['Tenencia'];
        categoryModel.ClaveTecho = category['ClaveTecho'];
        categoryModel.OrdenTecho = category['OrdenTecho'];
        categoryModel.Techo = category['Techo'];
        categoryModel.ClaveTipoMuro = category['ClaveTipoMuro'];
        categoryModel.OrdenTipoMuro = category['OrdenTipoMuro'];
        categoryModel.TipoMuro = category['TipoMuro'];

        _EstadoCasa.add(categoryModel);
      });
    });

    _tipoCasa.text = _EstadoCasa.map((e) => e.ClaveTipoVivienda).first +
        " " +
        _EstadoCasa.map((e) => e.TipoVivienda).first;

    _tipoPiso.text = _EstadoCasa.map((e) => e.ClaveTipoPiso).first +
        " " +
        _EstadoCasa.map((e) => e.TipoPiso).first;

    _tipoTenencia.text = _EstadoCasa.map((e) => e.ClaveTenencia).first +
        " " +
        _EstadoCasa.map((e) => e.Tenencia).first;

    _tipoTecho.text = _EstadoCasa.map((e) => e.ClaveTecho).first +
        " " +
        _EstadoCasa.map((e) => e.Techo).first;

    _tipoMuro.text = _EstadoCasa.map((e) => e.ClaveTipoMuro).first +
        " " +
        _EstadoCasa.map((e) => e.TipoMuro).first;
  }

  actualizar() async {
    _TipoVivienda2 = List<TipoViviendaModel>();
    var categories = await CategoryService().readOrdencasa(_tipoCasa.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoViviendaModel();
        categoryModel.Orden = category['Orden'];
        _TipoVivienda2.add(categoryModel);
      });
    });

    _TipoPiso2 = List<TipoPisoModel>();
    var categories1 = await CategoryService().readOrdenPiso(_tipoPiso.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = TipoPisoModel();
        categoryModel1.Orden = category['Orden'];
        _TipoPiso2.add(categoryModel1);
      });
    });

    _TipoTenencia2 = List<TipoTenenciaModel>();
    var categories2 =
        await CategoryService().readOrdenTenencia(_tipoTenencia.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = TipoTenenciaModel();
        categoryModel3.Orden = category['Orden'];
        _TipoTenencia2.add(categoryModel3);
      });
    });

    _TipoTecho2 = List<TipoTechoModel>();
    var categories4 = await CategoryService().readOrdenTecho(_tipoTecho.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel5 = TipoTechoModel();
        categoryModel5.Orden = category['Orden'];
        _TipoTecho2.add(categoryModel5);
      });
    });

    _TipoMuro2 = List<TipoMuroModel>();
    var categories3 = await CategoryService().readOrdenMuro(_tipoMuro.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = TipoMuroModel();
        categoryModel4.Orden = category['Orden'];
        _TipoMuro2.add(categoryModel4);
      });
    });

    var TipoCasa = _tipoCasa.text.toString(); // 'artlang'
    final tipoCasa = TipoCasa.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoPiso = _tipoPiso.text.toString(); // 'artlang'
    final tipoPiso = TipoPiso.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoTenencia = _tipoTenencia.text.toString(); // 'artlang'
    final tipoTenencia = TipoTenencia.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoMuro = _tipoMuro.text.toString(); // 'artlang'
    final tipoMuro = TipoMuro.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoTecho = _tipoTecho.text.toString(); // 'artlang'
    final tipoTecho = TipoTecho.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    EstadoCasaConstruccionModel DModel = EstadoCasaConstruccionModel(
        folio: int.parse(widget.folio),
        ClaveTipoVivienda: _tipoCasa.text.toString().substring(0, 1),
        OrdenTipoVivienda: _TipoVivienda2.map((e) => e.Orden).first,
        TipoVivienda: tipoCasa.trimLeft(),
        ClaveTipoPiso: _tipoPiso.text.toString().substring(0, 1),
        OrdenTipoPiso: _TipoPiso2.map((e) => e.Orden).first,
        TipoPiso: tipoPiso.trimLeft(),
        ClaveTenencia: _tipoTenencia.text.toString().substring(0, 1),
        OrdenTenencia: _TipoTenencia2.map((e) => e.Orden).first,
        Tenencia: tipoTenencia.trimLeft(),
        ClaveTecho: _tipoTecho.text.toString().substring(0, 1),
        OrdenTecho: _TipoTecho2.map((e) => e.Orden).first,
        Techo: tipoTecho.trimLeft(),
        ClaveTipoMuro: _tipoMuro.text.toString().substring(0, 1),
        OrdenTipoMuro: _TipoMuro2.map((e) => e.Orden).first,
        TipoMuro: tipoMuro.trimLeft());

    await dbHelper.upDateVivienda(DModel).then((estadoCasaConstruccionModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Caracteristicas_Casa(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  getAllCtegoriesTipoVivienda() async {
    _TipoVivienda = List<TipoViviendaModel>();
    var categories = await CategoryService().readCategoriesTipoVivienda();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoViviendaModel();
        categoryModel.TipoVivienda = category['TipoVivienda'];
        _TipoVivienda.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoPiso() async {
    _TipoPiso = List<TipoPisoModel>();
    var categories = await CategoryService().readCategoriesTipoPiso();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoPisoModel();
        categoryModel.TipoPiso = category['TipoPiso'];
        _TipoPiso.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoTenencia() async {
    _TipoTenencia = List<TipoTenenciaModel>();
    var categories = await CategoryService().readCategoriesTipoTenencia();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoTenenciaModel();
        categoryModel.Tenencia = category['Tenencia'];
        _TipoTenencia.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoTecho() async {
    _TipoTecho = List<TipoTechoModel>();
    var categories = await CategoryService().readCategoriesTipoTecho();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoTechoModel();
        categoryModel.Techo = category['Techo'];
        _TipoTecho.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoMuro() async {
    _TipoMuro = List<TipoMuroModel>();
    var categories = await CategoryService().readCategoriesTipoMuro();
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoMuroModel();
        categoryModel.TipoMuro = category['TipoMuro'];
        _TipoMuro.add(categoryModel);
      });
    });
  }

  insertDatos() async {
    _TipoVivienda2 = List<TipoViviendaModel>();
    var categories = await CategoryService().readOrdencasa(_tipoCasa.text);
    categories.forEach((category) {
      setState(() {
        var categoryModel = TipoViviendaModel();
        categoryModel.Orden = category['Orden'];
        _TipoVivienda2.add(categoryModel);
      });
    });

    _TipoPiso2 = List<TipoPisoModel>();
    var categories1 = await CategoryService().readOrdenPiso(_tipoPiso.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel1 = TipoPisoModel();
        categoryModel1.Orden = category['Orden'];
        _TipoPiso2.add(categoryModel1);
      });
    });

    _TipoTenencia2 = List<TipoTenenciaModel>();
    var categories2 =
        await CategoryService().readOrdenTenencia(_tipoTenencia.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = TipoTenenciaModel();
        categoryModel3.Orden = category['Orden'];
        _TipoTenencia2.add(categoryModel3);
      });
    });

    _TipoTecho2 = List<TipoTechoModel>();
    var categories4 = await CategoryService().readOrdenTecho(_tipoTecho.text);
    categories4.forEach((category) {
      setState(() {
        var categoryModel5 = TipoTechoModel();
        categoryModel5.Orden = category['Orden'];
        _TipoTecho2.add(categoryModel5);
      });
    });

    _TipoMuro2 = List<TipoMuroModel>();
    var categories3 = await CategoryService().readOrdenMuro(_tipoMuro.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = TipoMuroModel();
        categoryModel4.Orden = category['Orden'];
        _TipoMuro2.add(categoryModel4);
      });
    });

    var TipoCasa = _tipoCasa.text.toString(); // 'artlang'
    final tipoCasa = TipoCasa.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoPiso = _tipoPiso.text.toString(); // 'artlang'
    final tipoPiso = TipoPiso.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoTenencia = _tipoTenencia.text.toString(); // 'artlang'
    final tipoTenencia = TipoTenencia.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoMuro = _tipoMuro.text.toString(); // 'artlang'
    final tipoMuro = TipoMuro.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    var TipoTecho = _tipoTecho.text.toString(); // 'artlang'
    final tipoTecho = TipoTecho.replaceAll("1", "")
        .replaceAll("2", "")
        .replaceAll("3", "")
        .replaceAll("4", "")
        .replaceAll("5", "")
        .replaceAll("6", "")
        .replaceAll("7", "")
        .replaceAll("8", "")
        .replaceAll("9", "")
        .replaceAll("0", "");

    EstadoCasaConstruccionModel DModel = EstadoCasaConstruccionModel(
        folio: int.parse(widget.folio),
        ClaveTipoVivienda: _tipoCasa.text.toString().substring(0, 1),
        OrdenTipoVivienda: _TipoVivienda2.map((e) => e.Orden).first,
        TipoVivienda: tipoCasa.trimLeft(),
        ClaveTipoPiso: _tipoPiso.text.toString().substring(0, 1),
        OrdenTipoPiso: _TipoPiso2.map((e) => e.Orden).first,
        TipoPiso: tipoPiso.trimLeft(),
        ClaveTenencia: _tipoTenencia.text.toString().substring(0, 1),
        OrdenTenencia: _TipoTenencia2.map((e) => e.Orden).first,
        Tenencia: tipoTenencia.trimLeft(),
        ClaveTecho: _tipoTecho.text.toString().substring(0, 1),
        OrdenTecho: _TipoTecho2.map((e) => e.Orden).first,
        Techo: tipoTecho.trimLeft(),
        ClaveTipoMuro: _tipoMuro.text.toString().substring(0, 1),
        OrdenTipoMuro: _TipoMuro2.map((e) => e.Orden).first,
        TipoMuro: tipoMuro.trimLeft());

    await dbHelper.saveVivienda(DModel).then((estadoCasaConstruccionModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Caracteristicas_Casa(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estado de la Casa y Construcción'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        Salud_PertenenciaIndigenaTabla(widget.folio)),
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
                    onPressed: getAllEstadoCasa,
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
                getTextQuestion(question: 'Tipo de Casa'),
                SizedBox(height: 5.0),
                //Menu desplegable Tipo de casa
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    suggestions: _TipoVivienda.map((tipoCasa) =>
                        SearchFieldListItem(tipoCasa.TipoVivienda,
                            item: tipoCasa)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoCasa,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {
                      setState(() {
                        if (_tipoCasa.text == '4 Otra') {
                          valTipoCasa = true;
                        } else {
                          valTipoCasa = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otroTipoCasa,
                    enabled: valTipoCasa,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Tipo De Vivienda',
                      labelText: 'Otro Tipo De Vivienda',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Mayor parte del Piso'),
                SizedBox(height: 5.0),
                //Menu desplegable Escolaridades
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    suggestions: _TipoPiso.map((tipoPiso) =>
                        SearchFieldListItem(tipoPiso.TipoPiso,
                            item: tipoPiso)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoPiso,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {
                      setState(() {
                        if (_tipoPiso == "5 Otro") {
                          valPiso = true;
                        } else {
                          valPiso = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otroPiso,
                    enabled: valPiso,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Tipo De Piso',
                      labelText: 'Otro Tipo De Piso',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Tenencia'),
                SizedBox(height: 5.0),
                //Menu desplegable Escolaridades
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    suggestions: _TipoTenencia.map((tipoTenencia) =>
                        SearchFieldListItem(tipoTenencia.Tenencia,
                            item: tipoTenencia)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoTenencia,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {
                      setState(() {
                        if (_tipoTenencia == "6 Otro") {
                          valTenencia = true;
                        } else {
                          valTenencia = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otroTenencia,
                    enabled: valTenencia,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Tipo De Tenencia',
                      labelText: 'Otro Tipo De Tenencia',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Mayor Parte  del Techo'),
                SizedBox(height: 5.0),
                //Menu desplegable Escolaridades
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    suggestions: _TipoTecho.map((tipoTecho) =>
                        SearchFieldListItem(tipoTecho.Techo,
                            item: tipoTecho)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoTecho,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {
                      setState(() {
                        if (_tipoTecho == "6 Otros") {
                          valTecho = true;
                        } else {
                          valTecho = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otroTecho,
                    enabled: valTecho,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Tipo De Techo',
                      labelText: 'Otro Tipo De Techo',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Mayor parte de Muros'),
                SizedBox(height: 5.0),
                //Menu desplegable Escolaridades
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    suggestions: _TipoMuro.map((tipoMuro) =>
                        SearchFieldListItem(tipoMuro.TipoMuro,
                            item: tipoMuro)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoMuro,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x) {
                      setState(() {
                        if (_tipoMuro.text == "7 OTROS") {
                          valMuro = true;
                        } else {
                          valMuro = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _otroMuro,
                    enabled: valMuro,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Otro Tipo De Muro',
                      labelText: 'Otro Tipo De Muro',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
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
