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
import 'package:esn/ScreensActualizar/Caracteristicas_CasaActualizar.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';



class Infraestructura_ViviendaActualizar extends StatefulWidget {

  String folio;
  Infraestructura_ViviendaActualizar(this.folio);

  @override
  State<Infraestructura_ViviendaActualizar> createState() => _Infraestructura_ViviendaState();
}


class _Infraestructura_ViviendaState extends State<Infraestructura_ViviendaActualizar> {

  List<TipoViviendaModel> _TipoVivienda = List<TipoViviendaModel>();
  List<TipoPisoModel> _TipoPiso = List<TipoPisoModel>();
  List<TipoTenenciaModel> _TipoTenencia = List<TipoTenenciaModel>();
  List<TipoTechoModel> _TipoTecho = List<TipoTechoModel>();
  List<TipoMuroModel> _TipoMuro = List<TipoMuroModel>();

  final _tipoCasa = TextEditingController();
  final _tipoPiso = TextEditingController();
  final _tipoTenencia = TextEditingController();
  final _tipoTecho = TextEditingController();
  final _tipoMuro = TextEditingController();
  List<EstadoCasaConstruccionModel> _EstadoCasa = List<EstadoCasaConstruccionModel>();
  var dbHelper = DbHelper();

  @override
  void initState(){
    getAllCategoriesTipoMuro();
    getAllCategoriesTipoPiso();
    getAllCategoriesTipoTecho();
    getAllCategoriesTipoTenencia();
    getAllCtegoriesTipoVivienda();


    super.initState();
  }

  getAllEstadoCasa() async{
    _EstadoCasa = List<EstadoCasaConstruccionModel>();
    var categories = await CategoryService().readEstadoCasa(int.parse(widget.folio));
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

    _tipoCasa.text = _EstadoCasa.map((e) => e.ClaveTipoVivienda).first + " " + _EstadoCasa.map((e) => e.OrdenTipoVivienda).first
        + " " + _EstadoCasa.map((e) => e.TipoVivienda).first;

    _tipoPiso.text = _EstadoCasa.map((e) => e.ClaveTipoPiso).first + " " + _EstadoCasa.map((e) => e.OrdenTipoPiso).first
        + " " + _EstadoCasa.map((e) => e.TipoPiso).first;

    _tipoTenencia.text = _EstadoCasa.map((e) => e.ClaveTenencia).first + " " + _EstadoCasa.map((e) => e.OrdenTenencia).first
        + " " + _EstadoCasa.map((e) => e.Tenencia).first;

    _tipoTecho.text = _EstadoCasa.map((e) => e.ClaveTecho).first + " " + _EstadoCasa.map((e) => e.OrdenTecho).first
        + " " + _EstadoCasa.map((e) => e.Techo).first;

    _tipoMuro.text = _EstadoCasa.map((e) => e.ClaveTipoMuro).first + " " + _EstadoCasa.map((e) => e.OrdenTipoMuro).first
        + " " + _EstadoCasa.map((e) => e.TipoMuro).first;

  }

  actualizar() async
  {
    var TipoCasa = _tipoCasa.text.toString(); // 'artlang'
    final tipoCasa = TipoCasa
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

    var TipoPiso = _tipoPiso.text.toString(); // 'artlang'
    final tipoPiso = TipoPiso
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

    var TipoTenencia = _tipoTenencia.text.toString(); // 'artlang'
    final tipoTenencia = TipoTenencia
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

    var TipoMuro = _tipoMuro.text.toString(); // 'artlang'
    final tipoMuro = TipoMuro
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

    var TipoTecho = _tipoTecho.text.toString(); // 'artlang'
    final tipoTecho = TipoTecho
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

    EstadoCasaConstruccionModel DModel = EstadoCasaConstruccionModel
      (folio: int.parse(widget.folio),
        ClaveTipoVivienda: _tipoCasa.text.toString().substring(0,1),
        OrdenTipoVivienda: _tipoCasa.text.toString().substring(0,1),
        TipoVivienda: tipoCasa.trimLeft(),
        ClaveTipoPiso: _tipoPiso.text.toString().substring(0,1),
        OrdenTipoPiso: _tipoPiso.text.toString().substring(0,1),
        TipoPiso: tipoPiso.trimLeft(),
        ClaveTenencia: _tipoTenencia.text.toString().substring(0,1),
        OrdenTenencia: _tipoTenencia.text.toString().substring(0,1),
        Tenencia: tipoTenencia.trimLeft(),
        ClaveTecho: _tipoTecho.text.toString().substring(0,1),
        OrdenTecho: _tipoTecho.text.toString().substring(0,1),
        Techo: tipoTecho.trimLeft(),
        ClaveTipoMuro: _tipoMuro.text.toString().substring(0,1),
        OrdenTipoMuro: _tipoMuro.text.toString().substring(0,1),
        TipoMuro: tipoMuro.trimLeft()
    );

    await dbHelper.upDateVivienda(DModel).then((estadoCasaConstruccionModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new Caracteristicas_CasaActualizar(widget.folio);
      }
      ));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }
  getAllCtegoriesTipoVivienda() async{
    _TipoVivienda = List<TipoViviendaModel>();
    var categories = await CategoryService().readCategoriesTipoVivienda();
    categories.forEach((category){
      setState(() {
        var categoryModel = TipoViviendaModel();
        categoryModel.TipoVivienda = category['TipoVivienda'];
        _TipoVivienda.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoPiso() async{
    _TipoPiso = List<TipoPisoModel>();
    var categories = await CategoryService().readCategoriesTipoPiso();
    categories.forEach((category){
      setState(() {
        var categoryModel = TipoPisoModel();
        categoryModel.TipoPiso = category['TipoPiso'];
        _TipoPiso.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoTenencia() async{
    _TipoTenencia = List<TipoTenenciaModel>();
    var categories = await CategoryService().readCategoriesTipoTenencia();
    categories.forEach((category){
      setState(() {
        var categoryModel = TipoTenenciaModel();
        categoryModel.Tenencia = category['Tenencia'];
        _TipoTenencia.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoTecho() async{
    _TipoTecho = List<TipoTechoModel>();
    var categories = await CategoryService().readCategoriesTipoTecho();
    categories.forEach((category){
      setState(() {
        var categoryModel = TipoTechoModel();
        categoryModel.Techo = category['Techo'];
        _TipoTecho.add(categoryModel);
      });
    });
  }

  getAllCategoriesTipoMuro() async{
    _TipoMuro = List<TipoMuroModel>();
    var categories = await CategoryService().readCategoriesTipoMuro();
    categories.forEach((category){
      setState(() {
        var categoryModel = TipoMuroModel();
        categoryModel.TipoMuro = category['TipoMuro'];
        _TipoMuro.add(categoryModel);
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(controller: TextEditingController.fromValue(
                    TextEditingValue(text: widget.folio)),
                ),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                    onPressed: getAllEstadoCasa,
                    icon: Icon(Icons.add_circle_outline,color: Colors.white),
                    label: Text('Cargar datos', style: TextStyle(color: Colors.white),),
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
                        borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _TipoVivienda.map((tipoCasa) =>
                        SearchFieldListItem(tipoCasa.TipoVivienda, item: tipoCasa)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoCasa,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
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
                        borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _TipoPiso.map((tipoPiso) =>
                        SearchFieldListItem(tipoPiso.TipoPiso, item: tipoPiso)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoPiso,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
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
                        borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _TipoTenencia.map((tipoTenencia) =>
                        SearchFieldListItem(tipoTenencia.Tenencia, item: tipoTenencia)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoTenencia,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
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
                        borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _TipoTecho.map((tipoTecho) =>
                        SearchFieldListItem(tipoTecho.Techo, item: tipoTecho)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoTecho,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
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
                        borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                    ),
                    suggestions: _TipoMuro.map((tipoMuro) =>
                        SearchFieldListItem(tipoMuro.TipoMuro, item: tipoMuro)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipoMuro,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
                  ),
                ),

                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
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