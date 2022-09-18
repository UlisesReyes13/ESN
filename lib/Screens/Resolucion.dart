import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/ResolucionBALModel.dart';
import 'package:esn/Model/ResolucionModel.dart';
import 'package:esn/Screens/Alimentacion.dart';
import 'package:esn/Screens/Fotografia.dart';
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

  apoyo _apoyo;
  List<String> _Tipo = ['Cuata' , 'Beca', 'Media Beca'];
  List<String> _Frecuencia = ['Semanal', 'Quincenal', 'Mensual'];
  List<String> _Duracion = ['Mensual', 'Semanal','Anual'];

  final _tipo = TextEditingController();
  final _frecuencia = TextEditingController();
  final _duracion = TextEditingController();

  enviar() async {

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
                        SearchFieldListItem(frecuencia.toString(), item: frecuencia)).toList(),
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
                        SearchFieldListItem(duracion.toString(), item: duracion)).toList(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}