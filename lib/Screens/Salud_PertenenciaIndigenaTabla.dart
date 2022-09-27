import 'dart:io';
import 'dart:math';

import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genSearchField.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/AdiccionesModel.dart';
import 'package:esn/Model/ClasificacionModel.dart';
import 'package:esn/Model/CondicionesSaludModel.dart';
import 'package:esn/Model/DiscapacidadesModel.dart';
import 'package:esn/Model/PuebloIndigenaModel.dart';
import 'package:esn/Screens/Escolaridad_SeguridadSocialTabla.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:image_picker/image_picker.dart';

class Salud_PertenenciaIndigenaTabla extends StatefulWidget {
  String folio;

  Salud_PertenenciaIndigenaTabla(this.folio);
  @override
  State<Salud_PertenenciaIndigenaTabla> createState() => _Salud_PertenenciaIndigenaTablaState();

}

class _Salud_PertenenciaIndigenaTablaState extends State<Salud_PertenenciaIndigenaTabla> {
  final _nombre1 = TextEditingController();
  final _discapacidades1 = TextEditingController();
  final _adicciones1 = TextEditingController();
  final _condicionSalud1 = TextEditingController();
  final _peso1 = TextEditingController();
  final _talla1 = TextEditingController();
  final _puebloIndigena1 = TextEditingController();
  final _clasificacion1 = TextEditingController();
  final _ponderacion1 = TextEditingController();

  File _image1;

  final _nombre2 = TextEditingController();
  final _discapacidades2 = TextEditingController();
  final _adicciones2 = TextEditingController();
  final _condicionSalud2 = TextEditingController();
  final _peso2 = TextEditingController();
  final _talla2 = TextEditingController();
  final _puebloIndigena2 = TextEditingController();
  final _clasificacion2 = TextEditingController();
  final _ponderacion2 = TextEditingController();

  File _image2;

  final _nombre3 = TextEditingController();
  final _discapacidades3 = TextEditingController();
  final _adicciones3 = TextEditingController();
  final _condicionSalud3 = TextEditingController();
  final _peso3 = TextEditingController();
  final _talla3 = TextEditingController();
  final _puebloIndigena3 = TextEditingController();
  final _clasificacion3 = TextEditingController();
  final _ponderacion3 = TextEditingController();

  File _image3;

  final _nombre4 = TextEditingController();
  final _discapacidades4 = TextEditingController();
  final _adicciones4 = TextEditingController();
  final _condicionSalud4 = TextEditingController();
  final _peso4 = TextEditingController();
  final _talla4 = TextEditingController();
  final _puebloIndigena4 = TextEditingController();
  final _clasificacion4 = TextEditingController();
  final _ponderacion4 = TextEditingController();

  File _image4;

  final _nombre5 = TextEditingController();
  final _discapacidades5 = TextEditingController();
  final _adicciones5 = TextEditingController();
  final _condicionSalud5 = TextEditingController();
  final _peso5 = TextEditingController();
  final _talla5 = TextEditingController();
  final _puebloIndigena5 = TextEditingController();
  final _clasificacion5 = TextEditingController();
  final _ponderacion5 = TextEditingController();

  File _image5;

  final _nombre6 = TextEditingController();
  final _discapacidades6 = TextEditingController();
  final _adicciones6 = TextEditingController();
  final _condicionSalud6 = TextEditingController();
  final _peso6 = TextEditingController();
  final _talla6 = TextEditingController();
  final _puebloIndigena6 = TextEditingController();
  final _clasificacion6 = TextEditingController();
  final _ponderacion6 = TextEditingController();

  File _image6;

  final _nombre7 = TextEditingController();
  final _discapacidades7 = TextEditingController();
  final _adicciones7 = TextEditingController();
  final _condicionSalud7 = TextEditingController();
  final _peso7 = TextEditingController();
  final _talla7 = TextEditingController();
  final _puebloIndigena7 = TextEditingController();
  final _clasificacion7 = TextEditingController();
  final _ponderacion7 = TextEditingController();

  File _image7;

  final _nombre8 = TextEditingController();
  final _discapacidades8 = TextEditingController();
  final _adicciones8 = TextEditingController();
  final _condicionSalud8 = TextEditingController();
  final _peso8 = TextEditingController();
  final _talla8 = TextEditingController();
  final _puebloIndigena8 = TextEditingController();
  final _clasificacion8 = TextEditingController();
  final _ponderacion8 = TextEditingController();

  File _image8;

  final _nombre9 = TextEditingController();
  final _discapacidades9 = TextEditingController();
  final _adicciones9 = TextEditingController();
  final _condicionSalud9 = TextEditingController();
  final _peso9 = TextEditingController();
  final _talla9 = TextEditingController();
  final _puebloIndigena9 = TextEditingController();
  final _clasificacion9 = TextEditingController();
  final _ponderacion9 = TextEditingController();

  File _image9;

  final _nombre10 = TextEditingController();
  final _discapacidades10 = TextEditingController();
  final _adicciones10 = TextEditingController();
  final _condicionSalud10 = TextEditingController();
  final _peso10 = TextEditingController();
  final _talla10 = TextEditingController();
  final _puebloIndigena10 = TextEditingController();
  final _clasificacion10 = TextEditingController();
  final _ponderacion10 = TextEditingController();

  File _image10;
  final picker = ImagePicker();

  String imc;
  static double imC;
  var dbHelper;


  List<CapacidadesDiferentes> _Discapacidades = List<CapacidadesDiferentes>();
  List<CondicioneSaludModel> _Condiciones = List<CondicioneSaludModel>();
  List<AdiccionesModel> _Adicciones = List<AdiccionesModel>();
  List<PuebloIndigenaModel> _PueblosIndigenas = List<PuebloIndigenaModel>();
  List<ClasificacionModel> _Clasificaciones = List<ClasificacionModel>();

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
    dbHelper = DbHelper();
  }

  Future getImage1() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image1 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image2 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage3() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image3 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage4() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image4 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image5 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image6 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image7 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image8 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image9 = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image10 = File(pickedFile.path);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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
    imC = double.parse(i);
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

  insertDatos(){


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salud / Pertenencia Indigena'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => Escolaridad_SeguridadSocialTabla(widget.folio)),
                    (Route<dynamic> route) => false);
          },
        ),
      ),
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
                                DataCell(getTextDataTable(controller: _peso1,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla1,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC1(),
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
                                      child: _image1 == null
                                          ? Text('Imagen No Seleccionda')
                                          : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage1,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso2,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla2,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC2(),
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
                                        child: _image2 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage2,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso3,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla3,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC3(),
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
                                        child: _image3 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage3,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso4,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla4,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC4(),
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
                                        child: _image4 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage4,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso5,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla5,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC5(),
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
                                        child: _image5 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage5,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso6,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla6,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC6(),
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
                                        child: _image6 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage6,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso7,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla7,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC7(),
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
                                        child: _image7 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage7,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                    width: 220,
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
                                        child: _image8 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage8,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso9,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla9,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC9(),
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
                                        child: _image9 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage9,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                                DataCell(getTextDataTable(controller: _peso10,hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(controller: _talla10,hintName: 'Talla (cm)',)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 220,
                                    child: TextField(controller: IMC10(),
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
                                        child: _image10 == null
                                            ? Text('Imagen No Seleccionda')
                                            : Text('Imagen Seleccionada')
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 300,
                                        child: FlatButton.icon(
                                          onPressed: getImage10,
                                          icon: Icon(Icons.add_a_photo,color: Colors.white,),
                                          label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
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
                SizedBox(height: 5.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                      onPressed: insertDatos,
                      icon: Icon(Icons.arrow_forward,color: Colors.white,),
                      label: Text('Continuar', style: TextStyle(color: Colors.white)
                        ,)
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
