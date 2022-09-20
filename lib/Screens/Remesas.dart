import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextField.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Model/FrecuenciaModel.dart';
import 'package:esn/Model/RemesasModel.dart';
import 'package:esn/Screens/ApoyosEnEspecie.dart';
import 'package:esn/Screens/Documentos.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';
enum OtrosPaises {si, no}
class Remesas extends StatefulWidget {
  String folio;
  Remesas(this.folio);

  @override
  State<Remesas> createState() => _RemesasState();
}

class _RemesasState extends State<Remesas> {

  List<FrecuenciaModel> _Frecuencia = List<FrecuenciaModel>();

  OtrosPaises _otrosPaises = OtrosPaises.si;
  final _frecuenciaApoyo = TextEditingController();
  var dbHelper;

  @override
  void initState(){
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

  //Actualizar para las claves de frecuencia
  enviar() async {

    RemesasModel BModel = RemesasModel(folio: int.parse(widget.folio),
        dineroOtrosPaises: _otrosPaises.name,
    frecuencia: _frecuenciaApoyo.text.toString());

    await DbHelper().saveRemesas(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new Documentos(widget.folio);
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
        title: Text('Remesas'),
        leading: IconButton(
          icon : Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => ApoyosEnEspecie(widget.folio)),
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
                getTextQuestion(question: '¿Alguien en el hogar recibe dinero proveniente de otros paises?'),
                SizedBox(height: 5.0),
                ListTile(
                  title: Text('Si'),
                  leading: Radio<OtrosPaises>(
                    value: OtrosPaises.si,
                    groupValue: _otrosPaises,
                    onChanged: (OtrosPaises value){
                      setState(() {
                        _otrosPaises = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('No'),
                  leading: Radio<OtrosPaises>(
                    value: OtrosPaises.no,
                    groupValue: _otrosPaises,
                    onChanged: (OtrosPaises value){
                      setState(() {
                        _otrosPaises = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Frecuencia del Apoyo:'),
                SizedBox(height: 5.0),
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
                    controller: _frecuenciaApoyo,
                    maxSuggestionsInViewPort: 5,
                    itemHeight: 45,
                    onSuggestionTap: (x){},
                  ),
                ),
                SizedBox(height: 5.0),
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