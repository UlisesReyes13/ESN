import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/DuracionModel.dart';
import 'package:esn/Model/FrecuenciaModel.dart';
import 'package:esn/Model/ResolucionBALModel.dart';
import 'package:esn/Model/ResolucionModel.dart';
import 'package:esn/Screens/Alimentacion.dart';
import 'package:esn/Screens/Fotografia.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';

enum apoyo {si, no}
class Resolucion extends StatefulWidget {

  String folio;
  Resolucion(this.folio);

  @override
  State<Resolucion> createState() => _ResolucionState();

}

class _ResolucionState extends State<Resolucion> {
  final _puntaje = TextEditingController();
  final _escalaNecesidad = TextEditingController();
  final _inseguridadAlimenticia = TextEditingController();
  final _clasificacionPobreza = TextEditingController();
  final _observaciones = TextEditingController();
  List<ResolucionModel> _Resolucion = List<ResolucionModel>();
  List<ResolucionBALModel> _ResolucionBal = List<ResolucionBALModel>();

  apoyo _apoyo;
  List<String> _Tipo = ['Cuata' , 'Beca', 'Media Beca'];
  List<FrecuenciaModel> _Frecuencia = List<FrecuenciaModel>();
  List<DuracionModel> _Duracion = List<DuracionModel>();

  final _tipo = TextEditingController();
  final _frecuencia = TextEditingController();
  final _duracion = TextEditingController();

  @override
  void initState(){
    getAllCategoriesDuracion();
    getAllCategoriesFrecuencia();

    super.initState();
  }

  getAllCategoriesFrecuencia() async {
    _Frecuencia = List<FrecuenciaModel>();
    var categories = await CategoryService().readCategoriesFrecuancia();
    categories.forEach((category) {
      setState(() {
        var categoryModel = FrecuenciaModel();
        categoryModel.Frecuencia = category['Frecuencia'];
        _Frecuencia.add(categoryModel);
      });
    });
  }

  getAllCategoriesDuracion() async {
    _Duracion = List<DuracionModel>();
    var categories = await CategoryService().readCategoriesDuraciones();
    categories.forEach((category) {
      setState(() {
        var categoryModel = DuracionModel();
        categoryModel.Duracion = category['Duracion'];
        _Duracion.add(categoryModel);
      });
    });
  }

  getAllResolucion() async {
    _Resolucion = List<ResolucionModel>();
    var categories = await CategoryService().readResolucion(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = ResolucionModel();
        categoryModel.folio = category['folio'];
        categoryModel.puntaje = category['puntaje'];
        categoryModel.escalaNecesidad = category['escalaNecesidad'];
        categoryModel.inseguridadAlimenticia = category['inseguridadAlimenticia'];
        categoryModel.clasificacionPobresa = category['clasificacionPobresa'];

        _Resolucion.add(categoryModel);
      });
    });

    _puntaje.text = _Resolucion.map((e) => e.puntaje).first;
    _escalaNecesidad.text = _Resolucion.map((e) => e.escalaNecesidad).first;
    _inseguridadAlimenticia.text = _Resolucion.map((e) => e.inseguridadAlimenticia).first;
    _clasificacionPobreza.text = _Resolucion.map((e) => e.clasificacionPobresa).first;
  }

  getAllResolucionBal() async {
    _ResolucionBal = List<ResolucionBALModel>();
    var categories = await CategoryService().readResolucionBal(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = ResolucionBALModel();
        categoryModel.folio = category['folio'];
        categoryModel.tipo = category['tipo'];
        categoryModel.frecuencia = category['frecuencia'];
        categoryModel.duracion = category['duracion'];
        categoryModel.otorgarApoyo = category['otorgarApoyo'];
        categoryModel.observaciones = category['observaciones'];
        _ResolucionBal.add(categoryModel);
      });
    });

    _tipo.text = _ResolucionBal.map((e) => e.tipo).first;
    _frecuencia.text = _ResolucionBal.map((e) => e.frecuencia).first;
    _duracion.text = _ResolucionBal.map((e) => e.duracion).first;
    _observaciones.text = _ResolucionBal.map((e) => e.observaciones).first;

    if(_ResolucionBal.map((e) => e.otorgarApoyo).first == "si"){
      _apoyo = apoyo.si;
    }else if(_ResolucionBal.map((e) => e.otorgarApoyo).first == "no"){
      _apoyo = apoyo.no;
    }
  }

  cargarDatos(){
    getAllResolucion();
    getAllResolucionBal();
  }

  actualizar() async{
    ResolucionModel BModel = ResolucionModel
      (folio: int.parse(widget.folio),
        puntaje: _puntaje.text.toString(),
        escalaNecesidad: _escalaNecesidad.text.toString(),
        inseguridadAlimenticia: _inseguridadAlimenticia.text.toString(),
        clasificacionPobresa: _clasificacionPobreza.text.toString());

    await DbHelper().upDateResolucion(BModel).then((resolucionModel) {

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });

    ResolucionBALModel RModel = ResolucionBALModel
      (folio: int.parse(widget.folio),
        tipo: _tipo.text.toString(),
        frecuencia: _frecuencia.text.toString(),
        duracion: _duracion.text.toString(),
        otorgarApoyo: _apoyo.name,
        observaciones: _observaciones.text.toString());

    await DbHelper().upDateResolucionBAL(RModel).then((resolucionBALModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new Fotografia(widget.folio);
      }
      ));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  enviar() async {
    //Duracion y Frecuencia
    ResolucionModel BModel = ResolucionModel
      (folio: int.parse(widget.folio),
        puntaje: _puntaje.text.toString(),
        escalaNecesidad: _escalaNecesidad.text.toString(),
        inseguridadAlimenticia: _inseguridadAlimenticia.text.toString(),
        clasificacionPobresa: _clasificacionPobreza.text.toString());

    await DbHelper().saveResolucion(BModel).then((resolucionModel) {

    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });

    ResolucionBALModel RModel = ResolucionBALModel
      (folio: int.parse(widget.folio),
        tipo: _tipo.text.toString(),
        frecuencia: _frecuencia.text.toString(),
        duracion: _duracion.text.toString(),
        otorgarApoyo: _apoyo.name,
        observaciones: _observaciones.text.toString());

    await DbHelper().saveResolucionBAL(RModel).then((resolucionBALModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new Fotografia(widget.folio);
      }
      ));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resolución'),
        leading: IconButton(
          icon : Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => Alimentacion(widget.folio)),
                    (Route<dynamic> route) => false);
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
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(
                  controller: TextEditingController.fromValue(
                      TextEditingValue(text: widget.folio)),
                ),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
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
                getTextQuestion(question: 'Puntaje'),
                SizedBox(height: 5.0),
                getTextField(controller: _puntaje),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Escala de Necesidad'),
                SizedBox(height: 5.0),
                getTextField(controller: _escalaNecesidad),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Inseguridad Alimenticia'),
                SizedBox(height: 5.0),
                getTextField(controller: _inseguridadAlimenticia),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Clasificación de Pobreza'),
                SizedBox(height: 5.0),
                getTextField(controller: _clasificacionPobreza),

                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),

                getTextEquipamiento(encabezado: 'Resolución del Banco de Aliementos'),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Tipo:'),
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
                    suggestions: _Tipo.map((tipo) =>
                        SearchFieldListItem(tipo.toString(), item: tipo)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _tipo,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Frecuencia:'),
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
                    suggestions: _Frecuencia.map((frecuencia) =>
                        SearchFieldListItem(frecuencia.Frecuencia, item: frecuencia)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _frecuencia,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Duracion:'),
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
                    suggestions: _Duracion.map((duracion) =>
                        SearchFieldListItem(duracion.Duracion, item: duracion)).toList(),
                    textInputAction: TextInputAction.next,
                    hasOverlay: false,
                    controller: _duracion,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
                  ),
                ),

                SizedBox(height: 10.0),
                getTextQuestion(question: 'Otorgar Apoyo'),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text('Si'),
                        leading: Radio<apoyo>(
                          value: apoyo.si,
                          groupValue: _apoyo,
                          onChanged: (apoyo value) {
                            setState(() {
                              _apoyo = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<apoyo>(
                          value: apoyo.no,
                          groupValue: _apoyo,
                          onChanged: (apoyo value) {
                            setState(() {
                              _apoyo = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Observaciones'),
                SizedBox(height: 5.0),
                getTextField(controller: _observaciones),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                    onPressed: enviar,
                    icon: Icon(Icons.arrow_forward,color: Colors.white),
                    label: Text('Continuar', style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
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