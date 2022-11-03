import 'dart:io';

import 'dart:math';
import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genBotonFotografia.dart';
import 'package:esn/Comm/genSearchField.dart';
import 'package:esn/Comm/genTextDataTable.dart';
import 'package:esn/Comm/genTextExpand.dart';
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
import 'package:esn/Screens/Escolaridad_SeguridadSocialTabla.dart';
import 'package:esn/Screens/Infraestructura_Vivienda.dart';
import 'package:esn/replaceAll/replaceAllLetter.dart';
import 'package:esn/services/Utility.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchfield/searchfield.dart';
import 'package:image_picker/image_picker.dart';

enum Check { incompleto, completo }

class Salud_PertenenciaIndigenaTabla extends StatefulWidget {
  String folio;

  Salud_PertenenciaIndigenaTabla(this.folio);
  @override
  State<Salud_PertenenciaIndigenaTabla> createState() =>
      _Salud_PertenenciaIndigenaTablaState();
}

class _Salud_PertenenciaIndigenaTablaState
    extends State<Salud_PertenenciaIndigenaTabla> {
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
  Check _incompleto1 = Check.completo;

  var foto1_1 = null;
  var foto1_2 = null;
  var foto1_3 = null;
  var foto1_4 = null;
  var foto1_5 = null;
  List<CondicioneSaludModel> selectedItemsCond1 = [];
  List<ClasificacionModel> selectedItemsClas1 = [];

  //Variables del renglon 1
  var ponderacionr1 = '';
  var Ordenr1 ='';
  var Pk1 = '';
  var OrdenC1 ='';
//Variables del renglon 2
  var ponderacionr2 = '';
  var Ordenr2 ='';
  var Pk2 = '';
  var OrdenC2 ='';
  //Variables del renglon 3
  var ponderacionr3 = '';
  var Ordenr3 ='';
  var Pk3 = '';
  var OrdenC3 ='';
//Variables del renglon 4
  var ponderacionr4 = '';
  var Ordenr4 ='';
  var Pk4 = '';
  var OrdenC4 ='';
  //Variables del renglon 5
  var ponderacionr5 = '';
  var Ordenr5 ='';
  var Pk5 = '';
  var OrdenC5 ='';
//Variables del renglon 6
  var ponderacionr6 = '';
  var Ordenr6 ='';
  var Pk6 = '';
  var OrdenC6 ='';
  //Variables del renglon 7
  var ponderacionr7 = '';
  var Ordenr7 ='';
  var Pk7 = '';
  var OrdenC7 ='';
//Variables del renglon 8
  var ponderacionr8 = '';
  var Ordenr8 ='';
  var Pk8 = '';
  var OrdenC8 ='';
  //Variables del renglon 9
  var ponderacionr9 = '';
  var Ordenr9 ='';
  var Pk9 = '';
  var OrdenC9 ='';
  //Variables del renglon 10
  var ponderacionr10 = '';
  var Ordenr10 ='';
  var Pk10 = '';
  var OrdenC10 ='';

  addChecked1Cond() async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa1Cond = [];
    previa1Cond = _Condiciones;
    selectedItemsCond1.clear();
    for (var select1Cond in previa1Cond) {
      if (select1Cond.value) selectedItemsCond1.add(select1Cond);
    }
    setState(() => previa1Cond = selectedItemsCond1);
    print(selectedItemsCond1);
    var condicion1 = selectedItemsCond1.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal1 = rpl.replaceSymbol(condicion1);

    final tagName = condicionFinal1;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];






    if(value2== null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      ponderacionr1 = pon1;
      Ordenr1 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2;
      Ordenr1 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2+","+pon3;
      Ordenr1 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1.map((e) => e.Ponderacion).first;

      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1.map((e) => e.Orden).first;

      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1.map((e) => e.Ponderacion).first;


      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1.map((e) => e.Orden).first;
      await getAllOrdenCondicion1(value10.trimLeft());
      Orden10 = _OrdenCon1.map((e) => e.Orden).first;

      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1.map((e) => e.Ponderacion).first;
      await getAllPonderaciones1(value10.trimLeft());
      pon10 = _Ponderaciones1.map((e) => e.Ponderacion).first;


      ponderacionr1 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr1 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value10.trimLeft());
      Orden10 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value11.trimLeft());
      Orden11 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value10.trimLeft());
      pon10 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value11.trimLeft());
      pon11 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr1 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr1 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value10.trimLeft());
      Orden10 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value11.trimLeft());
      Orden11 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion1(value12.trimLeft());
      Orden12 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value10.trimLeft());
      pon10 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value11.trimLeft());
      pon11 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones1(value12.trimLeft());
      pon12 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr1 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr1 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value10.trimLeft());
      Orden10 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value11.trimLeft());
      Orden11 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion1(value12.trimLeft());
      Orden12 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value13.trimLeft());
      Orden13 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value10.trimLeft());
      pon10 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value11.trimLeft());
      pon11 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones1(value12.trimLeft());
      pon12 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value13.trimLeft());
      pon13 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr1 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr1 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value10.trimLeft());
      Orden10 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value11.trimLeft());
      Orden11 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion1(value12.trimLeft());
      Orden12 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value13.trimLeft());
      Orden13 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value14.trimLeft());
      Orden14 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value10.trimLeft());
      pon10 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value11.trimLeft());
      pon11 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones1(value12.trimLeft());
      pon12 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value13.trimLeft());
      pon13 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value14.trimLeft());
      pon14 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr1 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr1 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion1(value1.trimLeft());
      Orden1 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value2.trimLeft());
      Orden2 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value3.trimLeft());
      Orden3 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value4.trimLeft());
      Orden4 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value5.trimLeft());
      Orden5 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value6.trimLeft());
      Orden6 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value7.trimLeft());
      Orden7 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value8.trimLeft());
      Orden8 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value9.trimLeft());
      Orden9 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value10.trimLeft());
      Orden10 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value11.trimLeft());
      Orden11 = _OrdenCon1
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion1(value12.trimLeft());
      Orden12 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value13.trimLeft());
      Orden13 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value14.trimLeft());
      Orden14 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion1(value15.trimLeft());
      Orden15 = _OrdenCon1
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones1(value1.trimLeft());
      pon1 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value2.trimLeft());
      pon2 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value3.trimLeft());
      pon3 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value4.trimLeft());
      pon4 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value5.trimLeft());
      pon5 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value6.trimLeft());
      pon6 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value7.trimLeft());
      pon7 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value8.trimLeft());
      pon8 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value9.trimLeft());
      pon9 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value10.trimLeft());
      pon10 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value11.trimLeft());
      pon11 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones1(value12.trimLeft());
      pon12 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value13.trimLeft());
      pon13 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones1(value14.trimLeft());
      pon14 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones1(value15.trimLeft());
      pon15 = _Ponderaciones1
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr1 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr1 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
      _condicionSalud1.text = condicionFinal1;
  }

  addChecked1Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';

    List<ClasificacionModel> previa1CLas = [];
    previa1CLas = _Clasificaciones;
    selectedItemsClas1.clear();
    for (var select1Clas in previa1CLas) {
      if (select1Clas.value) selectedItemsClas1.add(select1Clas);
    }
    setState(() => previa1CLas = selectedItemsClas1);
    print(selectedItemsClas1);
    var clasificacion1 = selectedItemsClas1.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal1 = rpl.replaceSymbol(clasificacion1);

    final tagName = clasificacionFinal1;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    print(value2);
    print(value1);
    print(value3);


    if(value2== null){
      await getAllOrdenClasCondicion1(value1.trimLeft());
      Orden1 = _OrdenClas1.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas1(value1.trimLeft());
      pkr1 = _ClaveClas1.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk1 = pkr1;
      OrdenC1 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion1(value1.trimLeft());
      Orden1 = _OrdenClas1.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas1(value1.trimLeft());
      pkr1 = _ClaveClas1.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk1 = pkr1 + "," + pkr2;
      OrdenC1 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion1(value1.trimLeft());
      Orden1 = _OrdenClas1.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas1(value1.trimLeft());
      pkr1 = _ClaveClas1.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk1 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC1 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion1(value1.trimLeft());
      Orden1 = _OrdenClas1.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas1(value1.trimLeft());
      pkr1 = _ClaveClas1.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk1 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC1 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion1(value1.trimLeft());
      Orden1 = _OrdenClas1.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas1(value1.trimLeft());
      pkr1 = _ClaveClas1.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk1 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC1 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion1(value1.trimLeft());
      Orden1 = _OrdenClas1.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas1(value1.trimLeft());
      pkr1 = _ClaveClas1.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value6.trimLeft());
      Orden6 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value6.trimLeft());
      pkr6 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk1 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC1 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }

    _clasificacion1.text = clasificacionFinal1;
  }

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
  Check _incompleto2 = Check.completo;

  var foto2_1 = null;
  var foto2_2 = null;
  var foto2_3 = null;
  var foto2_4 = null;
  var foto2_5 = null;
  List<CondicioneSaludModel> selectedItemsCond2 = [];
  List<ClasificacionModel> selectedItemsClas2 = [];

  addChecked2Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa2Cond = [];
    previa2Cond = _Condiciones;
    selectedItemsCond2.clear();
    for (var select2Cond in previa2Cond) {
      if (select2Cond.value) selectedItemsCond2.add(select2Cond);
    }
    setState(() => previa2Cond = selectedItemsCond2);
    print(selectedItemsCond2);
    var condicion2 = selectedItemsCond2.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal2 = rpl.replaceSymbol(condicion2);

    final tagName = condicionFinal2;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];





    if(value2== null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      ponderacionr2 = pon1;
      Ordenr2 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2;
      Ordenr2 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2+","+pon3;
      Ordenr2 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2.map((e) => e.Ponderacion).first;

      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2.map((e) => e.Orden).first;

      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2.map((e) => e.Ponderacion).first;


      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2.map((e) => e.Orden).first;
      await getAllOrdenCondicion2(value10.trimLeft());
      Orden10 = _OrdenCon2.map((e) => e.Orden).first;

      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2.map((e) => e.Ponderacion).first;
      await getAllPonderaciones2(value10.trimLeft());
      pon10 = _Ponderaciones2.map((e) => e.Ponderacion).first;


      ponderacionr2 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr2 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value10.trimLeft());
      Orden10 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value11.trimLeft());
      Orden11 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value10.trimLeft());
      pon10 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value11.trimLeft());
      pon11 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr2 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr2 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value10.trimLeft());
      Orden10 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value11.trimLeft());
      Orden11 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion2(value12.trimLeft());
      Orden12 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value10.trimLeft());
      pon10 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value11.trimLeft());
      pon11 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones2(value12.trimLeft());
      pon12 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr2 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr2 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value10.trimLeft());
      Orden10 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value11.trimLeft());
      Orden11 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion2(value12.trimLeft());
      Orden12 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value13.trimLeft());
      Orden13 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value10.trimLeft());
      pon10 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value11.trimLeft());
      pon11 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones2(value12.trimLeft());
      pon12 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value13.trimLeft());
      pon13 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr2 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr2 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value10.trimLeft());
      Orden10 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value11.trimLeft());
      Orden11 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion2(value12.trimLeft());
      Orden12 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value13.trimLeft());
      Orden13 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value14.trimLeft());
      Orden14 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value10.trimLeft());
      pon10 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value11.trimLeft());
      pon11 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones2(value12.trimLeft());
      pon12 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value13.trimLeft());
      pon13 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value14.trimLeft());
      pon14 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr2 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr2 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion2(value1.trimLeft());
      Orden1 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value2.trimLeft());
      Orden2 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value3.trimLeft());
      Orden3 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value4.trimLeft());
      Orden4 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value5.trimLeft());
      Orden5 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value6.trimLeft());
      Orden6 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value7.trimLeft());
      Orden7 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value8.trimLeft());
      Orden8 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value9.trimLeft());
      Orden9 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value10.trimLeft());
      Orden10 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value11.trimLeft());
      Orden11 = _OrdenCon2
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion2(value12.trimLeft());
      Orden12 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value13.trimLeft());
      Orden13 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value14.trimLeft());
      Orden14 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion2(value15.trimLeft());
      Orden15 = _OrdenCon2
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones2(value1.trimLeft());
      pon1 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value2.trimLeft());
      pon2 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value3.trimLeft());
      pon3 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value4.trimLeft());
      pon4 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value5.trimLeft());
      pon5 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value6.trimLeft());
      pon6 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value7.trimLeft());
      pon7 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value8.trimLeft());
      pon8 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value9.trimLeft());
      pon9 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value10.trimLeft());
      pon10 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value11.trimLeft());
      pon11 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones2(value12.trimLeft());
      pon12 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value13.trimLeft());
      pon13 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones2(value14.trimLeft());
      pon14 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones2(value15.trimLeft());
      pon15 = _Ponderaciones2
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr2 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr2 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }

    _condicionSalud2.text = condicionFinal2;
  }

  addChecked2Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';

    List<ClasificacionModel> previa2CLas = [];
    previa2CLas = _Clasificaciones;
    selectedItemsClas2.clear();
    for (var select2Clas in previa2CLas) {
      if (select2Clas.value) selectedItemsClas2.add(select2Clas);
    }
    setState(() => previa2CLas = selectedItemsClas2);
    print(selectedItemsClas2);
    var clasificacion2 = selectedItemsClas2.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal2 = rpl.replaceSymbol(clasificacion2);

    final tagName = clasificacionFinal2;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion2(value1.trimLeft());
      Orden1 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value1.trimLeft());
      pkr1 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk2 = pkr1;
      OrdenC2 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion2(value1.trimLeft());
      Orden1 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value1.trimLeft());
      pkr1 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk2 = pkr1 + "," + pkr2;
      OrdenC2 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion2(value1.trimLeft());
      Orden1 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value1.trimLeft());
      pkr1 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk2 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC2 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion2(value1.trimLeft());
      Orden1 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value1.trimLeft());
      pkr1 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk2 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC2 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion2(value1.trimLeft());
      Orden1 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value1.trimLeft());
      pkr1 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk2 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC2 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion2(value1.trimLeft());
      Orden1 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value1.trimLeft());
      pkr1 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion2(value2.trimLeft());
      Orden2 = _OrdenClas2.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas2(value2.trimLeft());
      pkr2 = _ClaveClas2.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value6.trimLeft());
      Orden6 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value6.trimLeft());
      pkr6 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk2 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC2 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }

    _clasificacion2.text = clasificacionFinal2;
  }

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
  Check _incompleto3 = Check.completo;

  var foto3_1 = null;
  var foto3_2 = null;
  var foto3_3 = null;
  var foto3_4 = null;
  var foto3_5 = null;
  List<CondicioneSaludModel> selectedItemsCond3 = [];
  List<ClasificacionModel> selectedItemsClas3 = [];

  addChecked3Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';

    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa3Cond = [];
    previa3Cond = _Condiciones;
    selectedItemsCond3.clear();
    for (var select3Cond in previa3Cond) {
      if (select3Cond.value) selectedItemsCond3.add(select3Cond);
    }
    setState(() => previa3Cond = selectedItemsCond3);
    print(selectedItemsCond3);
    var condicion3 = selectedItemsCond3.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal3 = rpl.replaceSymbol(condicion3);

    final tagName = condicionFinal3;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];

    if(value2 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      ponderacionr3 = pon1;
      Ordenr3 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2;
      Ordenr3 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2+","+pon3;
      Ordenr3 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3.map((e) => e.Ponderacion).first;

      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3.map((e) => e.Orden).first;

      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3.map((e) => e.Ponderacion).first;


      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3.map((e) => e.Orden).first;
      await getAllOrdenCondicion3(value10.trimLeft());
      Orden10 = _OrdenCon3.map((e) => e.Orden).first;

      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3.map((e) => e.Ponderacion).first;
      await getAllPonderaciones3(value10.trimLeft());
      pon10 = _Ponderaciones3.map((e) => e.Ponderacion).first;


      ponderacionr3 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr3 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value10.trimLeft());
      Orden10 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value11.trimLeft());
      Orden11 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value10.trimLeft());
      pon10 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value11.trimLeft());
      pon11 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr3 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr3 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value10.trimLeft());
      Orden10 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value11.trimLeft());
      Orden11 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion3(value12.trimLeft());
      Orden12 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value10.trimLeft());
      pon10 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value11.trimLeft());
      pon11 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones3(value12.trimLeft());
      pon12 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr3 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr3 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value10.trimLeft());
      Orden10 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value11.trimLeft());
      Orden11 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion3(value12.trimLeft());
      Orden12 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value13.trimLeft());
      Orden13 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value10.trimLeft());
      pon10 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value11.trimLeft());
      pon11 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones3(value12.trimLeft());
      pon12 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value13.trimLeft());
      pon13 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr3 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr3 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value10.trimLeft());
      Orden10 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value11.trimLeft());
      Orden11 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion3(value12.trimLeft());
      Orden12 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value13.trimLeft());
      Orden13 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value14.trimLeft());
      Orden14 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value10.trimLeft());
      pon10 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value11.trimLeft());
      pon11 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones3(value12.trimLeft());
      pon12 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value13.trimLeft());
      pon13 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value14.trimLeft());
      pon14 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr3 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr3 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion3(value1.trimLeft());
      Orden1 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value2.trimLeft());
      Orden2 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value3.trimLeft());
      Orden3 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value4.trimLeft());
      Orden4 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value5.trimLeft());
      Orden5 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value6.trimLeft());
      Orden6 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value7.trimLeft());
      Orden7 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value8.trimLeft());
      Orden8 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value9.trimLeft());
      Orden9 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value10.trimLeft());
      Orden10 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value11.trimLeft());
      Orden11 = _OrdenCon3
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion3(value12.trimLeft());
      Orden12 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value13.trimLeft());
      Orden13 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value14.trimLeft());
      Orden14 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion3(value15.trimLeft());
      Orden15 = _OrdenCon3
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones3(value1.trimLeft());
      pon1 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value2.trimLeft());
      pon2 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value3.trimLeft());
      pon3 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value4.trimLeft());
      pon4 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value5.trimLeft());
      pon5 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value6.trimLeft());
      pon6 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value7.trimLeft());
      pon7 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value8.trimLeft());
      pon8 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value9.trimLeft());
      pon9 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value10.trimLeft());
      pon10 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value11.trimLeft());
      pon11 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones3(value12.trimLeft());
      pon12 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value13.trimLeft());
      pon13 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones3(value14.trimLeft());
      pon14 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones3(value15.trimLeft());
      pon15 = _Ponderaciones3
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr3 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr3 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud3.text = condicionFinal3;
  }

  addChecked3Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';

    List<ClasificacionModel> previa3CLas = [];
    previa3CLas = _Clasificaciones;
    selectedItemsClas3.clear();
    for (var select3Clas in previa3CLas) {
      if (select3Clas.value) selectedItemsClas3.add(select3Clas);
    }
    setState(() => previa3CLas = selectedItemsClas3);
    print(selectedItemsClas3);
    var clasificacion3 = selectedItemsClas3.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal3 = rpl.replaceSymbol(clasificacion3);

    final tagName = clasificacionFinal3;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion3(value1.trimLeft());
      Orden1 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value1.trimLeft());
      pkr1 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk3 = pkr1;
      OrdenC3 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion3(value1.trimLeft());
      Orden1 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value1.trimLeft());
      pkr1 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value2.trimLeft());
      Orden2 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value2.trimLeft());
      pkr2 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk3 = pkr1 + "," + pkr2;
      OrdenC3 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion3(value1.trimLeft());
      Orden1 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value1.trimLeft());
      pkr1 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value2.trimLeft());
      Orden2 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value2.trimLeft());
      pkr2 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk3 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC3 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion3(value1.trimLeft());
      Orden1 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value1.trimLeft());
      pkr1 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value2.trimLeft());
      Orden2 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value2.trimLeft());
      pkr2 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk3 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC3 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion3(value1.trimLeft());
      Orden1 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value1.trimLeft());
      pkr1 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value2.trimLeft());
      Orden2 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value2.trimLeft());
      pkr2 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk3 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC3 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion3(value1.trimLeft());
      Orden1 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value1.trimLeft());
      pkr1 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value2.trimLeft());
      Orden2 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value2.trimLeft());
      pkr2 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion3(value3.trimLeft());
      Orden3 = _OrdenClas3.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas3(value3.trimLeft());
      pkr3 = _ClaveClas3.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value6.trimLeft());
      Orden6 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value6.trimLeft());
      pkr6 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk3 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC3 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }

    _clasificacion3.text = clasificacionFinal3;
  }

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
  Check _incompleto4 = Check.completo;

  var foto4_1 = null;
  var foto4_2 = null;
  var foto4_3 = null;
  var foto4_4 = null;
  var foto4_5 = null;
  List<CondicioneSaludModel> selectedItemsCond4 = [];
  List<ClasificacionModel> selectedItemsClas4 = [];

  addChecked4Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa4Cond = [];
    previa4Cond = _Condiciones;
    selectedItemsCond4.clear();
    for (var select4Cond in previa4Cond) {
      if (select4Cond.value) selectedItemsCond4.add(select4Cond);
    }
    setState(() => previa4Cond = selectedItemsCond4);
    print(selectedItemsCond4);
    var condicion4 = selectedItemsCond4.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal4 = rpl.replaceSymbol(condicion4);

    final tagName = condicionFinal4;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];



    if(value2== null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      ponderacionr4 = pon1;
      Ordenr4 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2;
      Ordenr4 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2+","+pon3;
      Ordenr4 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4.map((e) => e.Ponderacion).first;

      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4.map((e) => e.Orden).first;

      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4.map((e) => e.Ponderacion).first;


      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4.map((e) => e.Orden).first;
      await getAllOrdenCondicion4(value10.trimLeft());
      Orden10 = _OrdenCon4.map((e) => e.Orden).first;

      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4.map((e) => e.Ponderacion).first;
      await getAllPonderaciones4(value10.trimLeft());
      pon10 = _Ponderaciones4.map((e) => e.Ponderacion).first;


      ponderacionr4 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr4 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value10.trimLeft());
      Orden10 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value11.trimLeft());
      Orden11 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value10.trimLeft());
      pon10 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value11.trimLeft());
      pon11 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr4 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr4 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value10.trimLeft());
      Orden10 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value11.trimLeft());
      Orden11 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion4(value12.trimLeft());
      Orden12 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value10.trimLeft());
      pon10 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value11.trimLeft());
      pon11 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones4(value12.trimLeft());
      pon12 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr4 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr4 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value10.trimLeft());
      Orden10 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value11.trimLeft());
      Orden11 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion4(value12.trimLeft());
      Orden12 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value13.trimLeft());
      Orden13 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value10.trimLeft());
      pon10 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value11.trimLeft());
      pon11 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones4(value12.trimLeft());
      pon12 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value13.trimLeft());
      pon13 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr4 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr4 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value10.trimLeft());
      Orden10 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value11.trimLeft());
      Orden11 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion4(value12.trimLeft());
      Orden12 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value13.trimLeft());
      Orden13 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value14.trimLeft());
      Orden14 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value10.trimLeft());
      pon10 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value11.trimLeft());
      pon11 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones4(value12.trimLeft());
      pon12 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value13.trimLeft());
      pon13 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value14.trimLeft());
      pon14 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr4 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr4 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion4(value1.trimLeft());
      Orden1 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value2.trimLeft());
      Orden2 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value3.trimLeft());
      Orden3 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value4.trimLeft());
      Orden4 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value5.trimLeft());
      Orden5 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value6.trimLeft());
      Orden6 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value7.trimLeft());
      Orden7 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value8.trimLeft());
      Orden8 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value9.trimLeft());
      Orden9 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value10.trimLeft());
      Orden10 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value11.trimLeft());
      Orden11 = _OrdenCon4
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion4(value12.trimLeft());
      Orden12 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value13.trimLeft());
      Orden13 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value14.trimLeft());
      Orden14 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion4(value15.trimLeft());
      Orden15 = _OrdenCon4
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones4(value1.trimLeft());
      pon1 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value2.trimLeft());
      pon2 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value3.trimLeft());
      pon3 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value4.trimLeft());
      pon4 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value5.trimLeft());
      pon5 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value6.trimLeft());
      pon6 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value7.trimLeft());
      pon7 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value8.trimLeft());
      pon8 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value9.trimLeft());
      pon9 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value10.trimLeft());
      pon10 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value11.trimLeft());
      pon11 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones4(value12.trimLeft());
      pon12 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value13.trimLeft());
      pon13 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones4(value14.trimLeft());
      pon14 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones4(value15.trimLeft());
      pon15 = _Ponderaciones4
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr4 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr4 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }

    _condicionSalud4.text = condicionFinal4;
  }

  addChecked4Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';

    List<ClasificacionModel> previa4CLas = [];
    previa4CLas = _Clasificaciones;
    selectedItemsClas4.clear();
    for (var select4Clas in previa4CLas) {
      if (select4Clas.value) selectedItemsClas4.add(select4Clas);
    }
    setState(() => previa4CLas = selectedItemsClas4);
    print(selectedItemsClas4);
    var clasificacion4 = selectedItemsClas4.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal4 = rpl.replaceSymbol(clasificacion4);

    final tagName = clasificacionFinal4;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion4(value1.trimLeft());
      Orden1 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value1.trimLeft());
      pkr1 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk4 = pkr1;
      OrdenC4 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion4(value1.trimLeft());
      Orden1 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value1.trimLeft());
      pkr1 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value2.trimLeft());
      Orden2 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value2.trimLeft());
      pkr2 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk4 = pkr1 + "," + pkr2;
      OrdenC4 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion4(value1.trimLeft());
      Orden1 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value1.trimLeft());
      pkr1 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value2.trimLeft());
      Orden2 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value2.trimLeft());
      pkr2 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value3.trimLeft());
      Orden3 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value3.trimLeft());
      pkr3 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk4 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC4 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion4(value1.trimLeft());
      Orden1 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value1.trimLeft());
      pkr1 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value2.trimLeft());
      Orden2 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value2.trimLeft());
      pkr2 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value3.trimLeft());
      Orden3 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value3.trimLeft());
      pkr3 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk4 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC4 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion4(value1.trimLeft());
      Orden1 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value1.trimLeft());
      pkr1 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value2.trimLeft());
      Orden2 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value2.trimLeft());
      pkr2 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value3.trimLeft());
      Orden3 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value3.trimLeft());
      pkr3 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk4 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC4 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion4(value1.trimLeft());
      Orden1 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value1.trimLeft());
      pkr1 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value2.trimLeft());
      Orden2 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value2.trimLeft());
      pkr2 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value3.trimLeft());
      Orden3 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value3.trimLeft());
      pkr3 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion4(value4.trimLeft());
      Orden4 = _OrdenClas4.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas4(value4.trimLeft());
      pkr4 = _ClaveClas4.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value6.trimLeft());
      Orden6 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value6.trimLeft());
      pkr6 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk4 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC4 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion4.text = clasificacionFinal4;
  }

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
  Check _incompleto5 = Check.completo;

  var foto5_1 = null;
  var foto5_2 = null;
  var foto5_3 = null;
  var foto5_4 = null;
  var foto5_5 = null;
  List<CondicioneSaludModel> selectedItemsCond5 = [];
  List<ClasificacionModel> selectedItemsClas5 = [];

  addChecked5Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa5Cond = [];
    previa5Cond = _Condiciones;
    selectedItemsCond5.clear();
    for (var select5Cond in previa5Cond) {
      if (select5Cond.value) selectedItemsCond5.add(select5Cond);
    }
    setState(() => previa5Cond = selectedItemsCond5);
    print(selectedItemsCond5);
    var condicion5 = selectedItemsCond5.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal5 = rpl.replaceSymbol(condicion5);

    final tagName = condicionFinal5;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];


    if(value2== null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      ponderacionr5 = pon1;
      Ordenr5 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2;
      Ordenr5 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2+","+pon3;
      Ordenr5 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5.map((e) => e.Ponderacion).first;

      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5.map((e) => e.Orden).first;

      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5.map((e) => e.Ponderacion).first;


      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5.map((e) => e.Orden).first;
      await getAllOrdenCondicion5(value10.trimLeft());
      Orden10 = _OrdenCon5.map((e) => e.Orden).first;

      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5.map((e) => e.Ponderacion).first;
      await getAllPonderaciones5(value10.trimLeft());
      pon10 = _Ponderaciones5.map((e) => e.Ponderacion).first;


      ponderacionr5 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr5 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value10.trimLeft());
      Orden10 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value11.trimLeft());
      Orden11 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value10.trimLeft());
      pon10 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value11.trimLeft());
      pon11 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr5 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr5 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value10.trimLeft());
      Orden10 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value11.trimLeft());
      Orden11 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion5(value12.trimLeft());
      Orden12 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value10.trimLeft());
      pon10 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value11.trimLeft());
      pon11 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones5(value12.trimLeft());
      pon12 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr5 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr5 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value10.trimLeft());
      Orden10 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value11.trimLeft());
      Orden11 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion5(value12.trimLeft());
      Orden12 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value13.trimLeft());
      Orden13 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value10.trimLeft());
      pon10 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value11.trimLeft());
      pon11 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones5(value12.trimLeft());
      pon12 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value13.trimLeft());
      pon13 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr5 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr5 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value10.trimLeft());
      Orden10 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value11.trimLeft());
      Orden11 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion5(value12.trimLeft());
      Orden12 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value13.trimLeft());
      Orden13 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value14.trimLeft());
      Orden14 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value10.trimLeft());
      pon10 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value11.trimLeft());
      pon11 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones5(value12.trimLeft());
      pon12 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value13.trimLeft());
      pon13 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value14.trimLeft());
      pon14 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr5 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr5 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion5(value1.trimLeft());
      Orden1 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value2.trimLeft());
      Orden2 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value3.trimLeft());
      Orden3 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value4.trimLeft());
      Orden4 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value5.trimLeft());
      Orden5 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value6.trimLeft());
      Orden6 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value7.trimLeft());
      Orden7 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value8.trimLeft());
      Orden8 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value9.trimLeft());
      Orden9 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value10.trimLeft());
      Orden10 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value11.trimLeft());
      Orden11 = _OrdenCon5
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion5(value12.trimLeft());
      Orden12 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value13.trimLeft());
      Orden13 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value14.trimLeft());
      Orden14 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion5(value15.trimLeft());
      Orden15 = _OrdenCon5
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones5(value1.trimLeft());
      pon1 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value2.trimLeft());
      pon2 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value3.trimLeft());
      pon3 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value4.trimLeft());
      pon4 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value5.trimLeft());
      pon5 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value6.trimLeft());
      pon6 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value7.trimLeft());
      pon7 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value8.trimLeft());
      pon8 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value9.trimLeft());
      pon9 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value10.trimLeft());
      pon10 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value11.trimLeft());
      pon11 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones5(value12.trimLeft());
      pon12 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value13.trimLeft());
      pon13 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones5(value14.trimLeft());
      pon14 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones5(value15.trimLeft());
      pon15 = _Ponderaciones5
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr5 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr5 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud5.text = condicionFinal5;
  }

  addChecked5Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';
    List<ClasificacionModel> previa5CLas = [];
    previa5CLas = _Clasificaciones;
    selectedItemsClas5.clear();
    for (var select5Clas in previa5CLas) {
      if (select5Clas.value) selectedItemsClas5.add(select5Clas);
    }
    setState(() => previa5CLas = selectedItemsClas5);
    print(selectedItemsClas5);
    var clasificacion5 = selectedItemsClas5.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal5 = rpl.replaceSymbol(clasificacion5);

    final tagName = clasificacionFinal5;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion5(value1.trimLeft());
      Orden1 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value1.trimLeft());
      pkr1 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk5 = pkr1;
      OrdenC5 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion5(value1.trimLeft());
      Orden1 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value1.trimLeft());
      pkr1 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value2.trimLeft());
      Orden2 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value2.trimLeft());
      pkr2 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk5 = pkr1 + "," + pkr2;
      OrdenC5 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion5(value1.trimLeft());
      Orden1 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value1.trimLeft());
      pkr1 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value2.trimLeft());
      Orden2 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value2.trimLeft());
      pkr2 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value3.trimLeft());
      Orden3 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value3.trimLeft());
      pkr3 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk5 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC5 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion5(value1.trimLeft());
      Orden1 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value1.trimLeft());
      pkr1 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value2.trimLeft());
      Orden2 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value2.trimLeft());
      pkr2 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value3.trimLeft());
      Orden3 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value3.trimLeft());
      pkr3 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value4.trimLeft());
      Orden4 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value4.trimLeft());
      pkr4 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk5 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC5 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion5(value1.trimLeft());
      Orden1 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value1.trimLeft());
      pkr1 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value2.trimLeft());
      Orden2 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value2.trimLeft());
      pkr2 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value3.trimLeft());
      Orden3 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value3.trimLeft());
      pkr3 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value4.trimLeft());
      Orden4 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value4.trimLeft());
      pkr4 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk5 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC5 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion5(value1.trimLeft());
      Orden1 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value1.trimLeft());
      pkr1 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value2.trimLeft());
      Orden2 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value2.trimLeft());
      pkr2 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value3.trimLeft());
      Orden3 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value3.trimLeft());
      pkr3 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value4.trimLeft());
      Orden4 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value4.trimLeft());
      pkr4 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion5(value5.trimLeft());
      Orden5 = _OrdenClas5.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas5(value5.trimLeft());
      pkr5 = _ClaveClas5.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value6.trimLeft());
      Orden6 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value6.trimLeft());
      pkr6 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk5 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC5 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion5.text = clasificacionFinal5;
  }

  final _nombre6 = TextEditingController();
  final _discapacidades6 = TextEditingController();
  final _adicciones6 = TextEditingController();
  final _condicionSalud6 = TextEditingController();
  final _peso6 = TextEditingController();
  final _talla6 = TextEditingController();
  final _puebloIndigena6 = TextEditingController();
  final _clasificacion6 = TextEditingController();
  final _ponderacion6 = TextEditingController();
  List<CondicioneSaludModel> selectedItemsCond6 = [];
  List<ClasificacionModel> selectedItemsClas6 = [];

  File _image6_1;
  File _image6_2;
  File _image6_3;
  File _image6_4;
  File _image6_5;
  Check _incompleto6 = Check.completo;

  var foto6_1 = null;
  var foto6_2 = null;
  var foto6_3 = null;
  var foto6_4 = null;
  var foto6_5 = null;

  addChecked6Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa6Cond = [];
    previa6Cond = _Condiciones;
    selectedItemsCond6.clear();
    for (var select6Cond in previa6Cond) {
      if (select6Cond.value) selectedItemsCond6.add(select6Cond);
    }
    setState(() => previa6Cond = selectedItemsCond6);
    print(selectedItemsCond6);
    var condicion6 = selectedItemsCond6.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal6 = rpl.replaceSymbol(condicion6);

    final tagName = condicionFinal6;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];


    if(value2== null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      ponderacionr6 = pon1;
      Ordenr6 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1);
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2;
      Ordenr6 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2+","+pon3;
      Ordenr6 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6.map((e) => e.Ponderacion).first;

      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6.map((e) => e.Orden).first;

      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6.map((e) => e.Ponderacion).first;


      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6.map((e) => e.Orden).first;
      await getAllOrdenCondicion6(value10.trimLeft());
      Orden10 = _OrdenCon6.map((e) => e.Orden).first;

      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6.map((e) => e.Ponderacion).first;
      await getAllPonderaciones6(value10.trimLeft());
      pon10 = _Ponderaciones6.map((e) => e.Ponderacion).first;


      ponderacionr6 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr6 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value10.trimLeft());
      Orden10 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value11.trimLeft());
      Orden11 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value10.trimLeft());
      pon10 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value11.trimLeft());
      pon11 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr6 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr6 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value10.trimLeft());
      Orden10 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value11.trimLeft());
      Orden11 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion6(value12.trimLeft());
      Orden12 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value10.trimLeft());
      pon10 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value11.trimLeft());
      pon11 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones6(value12.trimLeft());
      pon12 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr6 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr6 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value10.trimLeft());
      Orden10 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value11.trimLeft());
      Orden11 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion6(value12.trimLeft());
      Orden12 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value13.trimLeft());
      Orden13 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value10.trimLeft());
      pon10 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value11.trimLeft());
      pon11 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones6(value12.trimLeft());
      pon12 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value13.trimLeft());
      pon13 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr6 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr6 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value10.trimLeft());
      Orden10 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value11.trimLeft());
      Orden11 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion6(value12.trimLeft());
      Orden12 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value13.trimLeft());
      Orden13 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value14.trimLeft());
      Orden14 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value10.trimLeft());
      pon10 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value11.trimLeft());
      pon11 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones6(value12.trimLeft());
      pon12 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value13.trimLeft());
      pon13 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value14.trimLeft());
      pon14 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr6 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr6 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion6(value1.trimLeft());
      Orden1 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value2.trimLeft());
      Orden2 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value3.trimLeft());
      Orden3 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value4.trimLeft());
      Orden4 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value5.trimLeft());
      Orden5 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value6.trimLeft());
      Orden6 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value7.trimLeft());
      Orden7 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value8.trimLeft());
      Orden8 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value9.trimLeft());
      Orden9 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value10.trimLeft());
      Orden10 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value11.trimLeft());
      Orden11 = _OrdenCon6
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion6(value12.trimLeft());
      Orden12 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value13.trimLeft());
      Orden13 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value14.trimLeft());
      Orden14 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion6(value15.trimLeft());
      Orden15 = _OrdenCon6
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones6(value1.trimLeft());
      pon1 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value2.trimLeft());
      pon2 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value3.trimLeft());
      pon3 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value4.trimLeft());
      pon4 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value5.trimLeft());
      pon5 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value6.trimLeft());
      pon6 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value7.trimLeft());
      pon7 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value8.trimLeft());
      pon8 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value9.trimLeft());
      pon9 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value10.trimLeft());
      pon10 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value11.trimLeft());
      pon11 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones6(value12.trimLeft());
      pon12 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value13.trimLeft());
      pon13 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones6(value14.trimLeft());
      pon14 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones6(value15.trimLeft());
      pon15 = _Ponderaciones6
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr6 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr6 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud6.text = condicionFinal6;
  }

  addChecked6Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';
    List<ClasificacionModel> previa6CLas = [];
    previa6CLas = _Clasificaciones;
    selectedItemsClas6.clear();
    for (var select6Clas in previa6CLas) {
      if (select6Clas.value) selectedItemsClas6.add(select6Clas);
    }
    setState(() => previa6CLas = selectedItemsClas6);
    print(selectedItemsClas6);
    var clasificacion6 = selectedItemsClas6.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal6 = rpl.replaceSymbol(clasificacion6);

    final tagName = clasificacionFinal6;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion6(value1.trimLeft());
      Orden1 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value1.trimLeft());
      pkr1 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk6 = pkr1;
      OrdenC6 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion6(value1.trimLeft());
      Orden1 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value1.trimLeft());
      pkr1 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value2.trimLeft());
      Orden2 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value2.trimLeft());
      pkr2 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk6 = pkr1 + "," + pkr2;
      OrdenC6 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion6(value1.trimLeft());
      Orden1 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value1.trimLeft());
      pkr1 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value2.trimLeft());
      Orden2 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value2.trimLeft());
      pkr2 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value3.trimLeft());
      Orden3 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value3.trimLeft());
      pkr3 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk6 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC6 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion6(value1.trimLeft());
      Orden1 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value1.trimLeft());
      pkr1 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value2.trimLeft());
      Orden2 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value2.trimLeft());
      pkr2 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value3.trimLeft());
      Orden3 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value3.trimLeft());
      pkr3 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value4.trimLeft());
      Orden4 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value4.trimLeft());
      pkr4 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk6 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC6 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion6(value1.trimLeft());
      Orden1 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value1.trimLeft());
      pkr1 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value2.trimLeft());
      Orden2 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value2.trimLeft());
      pkr2 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value3.trimLeft());
      Orden3 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value3.trimLeft());
      pkr3 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value4.trimLeft());
      Orden4 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value4.trimLeft());
      pkr4 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value5.trimLeft());
      Orden5 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value5.trimLeft());
      pkr5 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk6 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC6 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion6(value1.trimLeft());
      Orden1 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value1.trimLeft());
      pkr1 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value2.trimLeft());
      Orden2 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value2.trimLeft());
      pkr2 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value3.trimLeft());
      Orden3 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value3.trimLeft());
      pkr3 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value4.trimLeft());
      Orden4 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value4.trimLeft());
      pkr4 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value5.trimLeft());
      Orden5 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value5.trimLeft());
      pkr5 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion6(value6.trimLeft());
      Orden6 = _OrdenClas6.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas6(value6.trimLeft());
      pkr6 = _ClaveClas6.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk6 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC6 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion6.text = clasificacionFinal6;
  }

  final _nombre7 = TextEditingController();
  final _discapacidades7 = TextEditingController();
  final _adicciones7 = TextEditingController();
  final _condicionSalud7 = TextEditingController();
  final _peso7 = TextEditingController();
  final _talla7 = TextEditingController();
  final _puebloIndigena7 = TextEditingController();
  final _clasificacion7 = TextEditingController();
  final _ponderacion7 = TextEditingController();
  List<CondicioneSaludModel> selectedItemsCond7 = [];
  List<ClasificacionModel> selectedItemsClas7 = [];

  File _image7_1;
  File _image7_2;
  File _image7_3;
  File _image7_4;
  File _image7_5;
  Check _incompleto7 = Check.completo;

  var foto7_1 = null;
  var foto7_2 = null;
  var foto7_3 = null;
  var foto7_4 = null;
  var foto7_5 = null;

  addChecked7Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';

    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';

    List<CondicioneSaludModel> previa7Cond = [];
    previa7Cond = _Condiciones;
    selectedItemsCond7.clear();
    for (var select7Cond in previa7Cond) {
      if (select7Cond.value) selectedItemsCond7.add(select7Cond);
    }
    setState(() => previa7Cond = selectedItemsCond7);
    print(selectedItemsCond7);
    var condicion7 = selectedItemsCond7.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal7 = rpl.replaceSymbol(condicion7);

    final tagName = condicionFinal7;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];



    if(value2== null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      ponderacionr7 = pon1;
      Ordenr7 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2;
      Ordenr7 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2+","+pon3;
      Ordenr7 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7.map((e) => e.Ponderacion).first;

      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7.map((e) => e.Orden).first;

      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7.map((e) => e.Ponderacion).first;


      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7.map((e) => e.Orden).first;
      await getAllOrdenCondicion7(value10.trimLeft());
      Orden10 = _OrdenCon7.map((e) => e.Orden).first;

      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7.map((e) => e.Ponderacion).first;
      await getAllPonderaciones7(value10.trimLeft());
      pon10 = _Ponderaciones7.map((e) => e.Ponderacion).first;


      ponderacionr7 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr7 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value10.trimLeft());
      Orden10 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value11.trimLeft());
      Orden11 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value10.trimLeft());
      pon10 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value11.trimLeft());
      pon11 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr7 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr7 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value10.trimLeft());
      Orden10 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value11.trimLeft());
      Orden11 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion7(value12.trimLeft());
      Orden12 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value10.trimLeft());
      pon10 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value11.trimLeft());
      pon11 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones7(value12.trimLeft());
      pon12 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr7 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr7 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value10.trimLeft());
      Orden10 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value11.trimLeft());
      Orden11 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion7(value12.trimLeft());
      Orden12 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value13.trimLeft());
      Orden13 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value10.trimLeft());
      pon10 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value11.trimLeft());
      pon11 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones7(value12.trimLeft());
      pon12 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value13.trimLeft());
      pon13 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr7 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr7 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value10.trimLeft());
      Orden10 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value11.trimLeft());
      Orden11 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion7(value12.trimLeft());
      Orden12 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value13.trimLeft());
      Orden13 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value14.trimLeft());
      Orden14 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value10.trimLeft());
      pon10 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value11.trimLeft());
      pon11 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones7(value12.trimLeft());
      pon12 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value13.trimLeft());
      pon13 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value14.trimLeft());
      pon14 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr7 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr7 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion7(value1.trimLeft());
      Orden1 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value2.trimLeft());
      Orden2 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value3.trimLeft());
      Orden3 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value4.trimLeft());
      Orden4 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value5.trimLeft());
      Orden5 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value6.trimLeft());
      Orden6 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value7.trimLeft());
      Orden7 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value8.trimLeft());
      Orden8 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value9.trimLeft());
      Orden9 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value10.trimLeft());
      Orden10 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value11.trimLeft());
      Orden11 = _OrdenCon7
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion7(value12.trimLeft());
      Orden12 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value13.trimLeft());
      Orden13 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value14.trimLeft());
      Orden14 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion7(value15.trimLeft());
      Orden15 = _OrdenCon7
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones7(value1.trimLeft());
      pon1 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value2.trimLeft());
      pon2 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value3.trimLeft());
      pon3 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value4.trimLeft());
      pon4 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value5.trimLeft());
      pon5 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value6.trimLeft());
      pon6 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value7.trimLeft());
      pon7 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value8.trimLeft());
      pon8 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value9.trimLeft());
      pon9 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value10.trimLeft());
      pon10 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value11.trimLeft());
      pon11 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones7(value12.trimLeft());
      pon12 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value13.trimLeft());
      pon13 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones7(value14.trimLeft());
      pon14 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones7(value15.trimLeft());
      pon15 = _Ponderaciones7
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr7 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr7 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud7.text = condicionFinal7;
  }

  addChecked7Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';
    List<ClasificacionModel> previa7CLas = [];
    previa7CLas = _Clasificaciones;
    selectedItemsClas7.clear();
    for (var select7Clas in previa7CLas) {
      if (select7Clas.value) selectedItemsClas7.add(select7Clas);
    }
    setState(() => previa7CLas = selectedItemsClas7);
    print(selectedItemsClas7);
    var clasificacion7 = selectedItemsClas7.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal7 = rpl.replaceSymbol(clasificacion7);

    final tagName = clasificacionFinal7;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion7(value1.trimLeft());
      Orden1 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value1.trimLeft());
      pkr1 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk7 = pkr1;
      OrdenC7 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion7(value1.trimLeft());
      Orden1 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value1.trimLeft());
      pkr1 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value2.trimLeft());
      Orden2 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value2.trimLeft());
      pkr2 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk7 = pkr1 + "," + pkr2;
      OrdenC7 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion7(value1.trimLeft());
      Orden1 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value1.trimLeft());
      pkr1 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value2.trimLeft());
      Orden2 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value2.trimLeft());
      pkr2 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value3.trimLeft());
      Orden3 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value3.trimLeft());
      pkr3 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk7 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC7 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion7(value1.trimLeft());
      Orden1 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value1.trimLeft());
      pkr1 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value2.trimLeft());
      Orden2 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value2.trimLeft());
      pkr2 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value3.trimLeft());
      Orden3 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value3.trimLeft());
      pkr3 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value4.trimLeft());
      Orden4 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value4.trimLeft());
      pkr4 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk7 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC7 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion7(value1.trimLeft());
      Orden1 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value1.trimLeft());
      pkr1 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value2.trimLeft());
      Orden2 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value2.trimLeft());
      pkr2 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value3.trimLeft());
      Orden3 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value3.trimLeft());
      pkr3 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value4.trimLeft());
      Orden4 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value4.trimLeft());
      pkr4 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value5.trimLeft());
      Orden5 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value5.trimLeft());
      pkr5 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk7 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC7 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion7(value1.trimLeft());
      Orden1 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value1.trimLeft());
      pkr1 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value2.trimLeft());
      Orden2 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value2.trimLeft());
      pkr2 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value3.trimLeft());
      Orden3 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value3.trimLeft());
      pkr3 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value4.trimLeft());
      Orden4 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value4.trimLeft());
      pkr4 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value5.trimLeft());
      Orden5 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value5.trimLeft());
      pkr5 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion7(value6.trimLeft());
      Orden6 = _OrdenClas7.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas7(value6.trimLeft());
      pkr6 = _ClaveClas7.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk7 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC7 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion7.text = clasificacionFinal7;
  }

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
  Check _incompleto8 = Check.completo;

  var foto8_1 = null;
  var foto8_2 = null;
  var foto8_3 = null;
  var foto8_4 = null;
  var foto8_5 = null;

  List<CondicioneSaludModel> selectedItemsCond8 = [];
  List<ClasificacionModel> selectedItemsClas8 = [];

  addChecked8Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa8Cond = [];
    previa8Cond = _Condiciones;
    selectedItemsCond8.clear();
    for (var select8Cond in previa8Cond) {
      if (select8Cond.value) selectedItemsCond8.add(select8Cond);
    }
    setState(() => previa8Cond = selectedItemsCond8);
    print(selectedItemsCond8);
    var condicion8 = selectedItemsCond8.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal8 = rpl.replaceSymbol(condicion8);

    final tagName = condicionFinal8;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];






    if(value2== null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      ponderacionr8 = pon1;
      Ordenr8 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2;
      Ordenr8 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2+","+pon3;
      Ordenr8 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8.map((e) => e.Ponderacion).first;

      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8.map((e) => e.Orden).first;

      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8.map((e) => e.Ponderacion).first;


      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8.map((e) => e.Orden).first;
      await getAllOrdenCondicion8(value10.trimLeft());
      Orden10 = _OrdenCon8.map((e) => e.Orden).first;

      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8.map((e) => e.Ponderacion).first;
      await getAllPonderaciones8(value10.trimLeft());
      pon10 = _Ponderaciones8.map((e) => e.Ponderacion).first;


      ponderacionr8 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr8 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value10.trimLeft());
      Orden10 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value11.trimLeft());
      Orden11 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value10.trimLeft());
      pon10 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value11.trimLeft());
      pon11 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr8 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr8 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value10.trimLeft());
      Orden10 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value11.trimLeft());
      Orden11 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion8(value12.trimLeft());
      Orden12 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value10.trimLeft());
      pon10 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value11.trimLeft());
      pon11 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones8(value12.trimLeft());
      pon12 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr8 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr8 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value10.trimLeft());
      Orden10 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value11.trimLeft());
      Orden11 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion8(value12.trimLeft());
      Orden12 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value13.trimLeft());
      Orden13 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value10.trimLeft());
      pon10 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value11.trimLeft());
      pon11 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones8(value12.trimLeft());
      pon12 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value13.trimLeft());
      pon13 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr8 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr8 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value10.trimLeft());
      Orden10 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value11.trimLeft());
      Orden11 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion8(value12.trimLeft());
      Orden12 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value13.trimLeft());
      Orden13 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value14.trimLeft());
      Orden14 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value10.trimLeft());
      pon10 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value11.trimLeft());
      pon11 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones8(value12.trimLeft());
      pon12 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value13.trimLeft());
      pon13 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value14.trimLeft());
      pon14 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr8 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr8 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion8(value1.trimLeft());
      Orden1 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value2.trimLeft());
      Orden2 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value3.trimLeft());
      Orden3 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value4.trimLeft());
      Orden4 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value5.trimLeft());
      Orden5 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value6.trimLeft());
      Orden6 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value7.trimLeft());
      Orden7 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value8.trimLeft());
      Orden8 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value9.trimLeft());
      Orden9 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value10.trimLeft());
      Orden10 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value11.trimLeft());
      Orden11 = _OrdenCon8
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion8(value12.trimLeft());
      Orden12 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value13.trimLeft());
      Orden13 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value14.trimLeft());
      Orden14 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion8(value15.trimLeft());
      Orden15 = _OrdenCon8
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones8(value1.trimLeft());
      pon1 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value2.trimLeft());
      pon2 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value3.trimLeft());
      pon3 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value4.trimLeft());
      pon4 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value5.trimLeft());
      pon5 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value6.trimLeft());
      pon6 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value7.trimLeft());
      pon7 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value8.trimLeft());
      pon8 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value9.trimLeft());
      pon9 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value10.trimLeft());
      pon10 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value11.trimLeft());
      pon11 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones8(value12.trimLeft());
      pon12 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value13.trimLeft());
      pon13 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones8(value14.trimLeft());
      pon14 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones8(value15.trimLeft());
      pon15 = _Ponderaciones8
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr8 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr8 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud8.text = condicionFinal8;
  }

  addChecked8Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';

    List<ClasificacionModel> previa8CLas = [];
    previa8CLas = _Clasificaciones;
    selectedItemsClas8.clear();
    for (var select8Clas in previa8CLas) {
      if (select8Clas.value) selectedItemsClas8.add(select8Clas);
    }
    setState(() => previa8CLas = selectedItemsClas8);
    print(selectedItemsClas8);
    var clasificacion8 = selectedItemsClas8.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal8 = rpl.replaceSymbol(clasificacion8);

    final tagName = clasificacionFinal8;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion8(value1.trimLeft());
      Orden1 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value1.trimLeft());
      pkr1 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk8 = pkr1;
      OrdenC8 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion8(value1.trimLeft());
      Orden1 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value1.trimLeft());
      pkr1 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value2.trimLeft());
      Orden2 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value2.trimLeft());
      pkr2 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk8 = pkr1 + "," + pkr2;
      OrdenC8 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion8(value1.trimLeft());
      Orden1 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value1.trimLeft());
      pkr1 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value2.trimLeft());
      Orden2 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value2.trimLeft());
      pkr2 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value3.trimLeft());
      Orden3 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value3.trimLeft());
      pkr3 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk8 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC8 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion8(value1.trimLeft());
      Orden1 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value1.trimLeft());
      pkr1 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value2.trimLeft());
      Orden2 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value2.trimLeft());
      pkr2 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value3.trimLeft());
      Orden3 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value3.trimLeft());
      pkr3 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value4.trimLeft());
      Orden4 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value4.trimLeft());
      pkr4 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk8 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC8 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion8(value1.trimLeft());
      Orden1 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value1.trimLeft());
      pkr1 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value2.trimLeft());
      Orden2 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value2.trimLeft());
      pkr2 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value3.trimLeft());
      Orden3 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value3.trimLeft());
      pkr3 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value4.trimLeft());
      Orden4 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value4.trimLeft());
      pkr4 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value5.trimLeft());
      Orden5 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value5.trimLeft());
      pkr5 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk8 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC8 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion8(value1.trimLeft());
      Orden1 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value1.trimLeft());
      pkr1 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value2.trimLeft());
      Orden2 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value2.trimLeft());
      pkr2 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value3.trimLeft());
      Orden3 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value3.trimLeft());
      pkr3 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value4.trimLeft());
      Orden4 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value4.trimLeft());
      pkr4 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value5.trimLeft());
      Orden5 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value5.trimLeft());
      pkr5 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion8(value6.trimLeft());
      Orden6 = _OrdenClas8.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas8(value6.trimLeft());
      pkr6 = _ClaveClas8.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk8 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC8 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion8.text = clasificacionFinal8;
  }

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
  Check _incompleto9 = Check.completo;

  var foto9_1 = null;
  var foto9_2 = null;
  var foto9_3 = null;
  var foto9_4 = null;
  var foto9_5 = null;

  List<CondicioneSaludModel> selectedItemsCond9 = [];
  List<ClasificacionModel> selectedItemsClas9 = [];

  addChecked9Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';


    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';


    List<CondicioneSaludModel> previa9Cond = [];
    previa9Cond = _Condiciones;
    selectedItemsCond9.clear();
    for (var select9Cond in previa9Cond) {
      if (select9Cond.value) selectedItemsCond9.add(select9Cond);
    }
    setState(() => previa9Cond = selectedItemsCond9);
    print(selectedItemsCond9);
    var condicion9 = selectedItemsCond9.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal9 = rpl.replaceSymbol(condicion9);

    final tagName = condicionFinal9;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];


    if(value2== null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      ponderacionr9 = pon1;
      Ordenr9 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2;
      Ordenr9 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2+","+pon3;
      Ordenr9 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9.map((e) => e.Ponderacion).first;

      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9.map((e) => e.Orden).first;

      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9.map((e) => e.Ponderacion).first;


      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9.map((e) => e.Orden).first;
      await getAllOrdenCondicion9(value10.trimLeft());
      Orden10 = _OrdenCon9.map((e) => e.Orden).first;

      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9.map((e) => e.Ponderacion).first;
      await getAllPonderaciones9(value10.trimLeft());
      pon10 = _Ponderaciones9.map((e) => e.Ponderacion).first;


      ponderacionr9 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr9 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value10.trimLeft());
      Orden10 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value11.trimLeft());
      Orden11 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value10.trimLeft());
      pon10 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value11.trimLeft());
      pon11 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr9 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr9 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value10.trimLeft());
      Orden10 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value11.trimLeft());
      Orden11 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion9(value12.trimLeft());
      Orden12 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value10.trimLeft());
      pon10 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value11.trimLeft());
      pon11 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones9(value12.trimLeft());
      pon12 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr9 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr9 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value10.trimLeft());
      Orden10 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value11.trimLeft());
      Orden11 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion9(value12.trimLeft());
      Orden12 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value13.trimLeft());
      Orden13 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value10.trimLeft());
      pon10 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value11.trimLeft());
      pon11 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones9(value12.trimLeft());
      pon12 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value13.trimLeft());
      pon13 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr9 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr9 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value10.trimLeft());
      Orden10 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value11.trimLeft());
      Orden11 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion9(value12.trimLeft());
      Orden12 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value13.trimLeft());
      Orden13 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value14.trimLeft());
      Orden14 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value10.trimLeft());
      pon10 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value11.trimLeft());
      pon11 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones9(value12.trimLeft());
      pon12 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value13.trimLeft());
      pon13 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value14.trimLeft());
      pon14 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr9 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr9 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion9(value1.trimLeft());
      Orden1 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value2.trimLeft());
      Orden2 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value3.trimLeft());
      Orden3 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value4.trimLeft());
      Orden4 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value5.trimLeft());
      Orden5 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value6.trimLeft());
      Orden6 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value7.trimLeft());
      Orden7 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value8.trimLeft());
      Orden8 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value9.trimLeft());
      Orden9 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value10.trimLeft());
      Orden10 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value11.trimLeft());
      Orden11 = _OrdenCon9
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion9(value12.trimLeft());
      Orden12 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value13.trimLeft());
      Orden13 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value14.trimLeft());
      Orden14 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion9(value15.trimLeft());
      Orden15 = _OrdenCon9
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones9(value1.trimLeft());
      pon1 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value2.trimLeft());
      pon2 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value3.trimLeft());
      pon3 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value4.trimLeft());
      pon4 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value5.trimLeft());
      pon5 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value6.trimLeft());
      pon6 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value7.trimLeft());
      pon7 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value8.trimLeft());
      pon8 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value9.trimLeft());
      pon9 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value10.trimLeft());
      pon10 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value11.trimLeft());
      pon11 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones9(value12.trimLeft());
      pon12 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value13.trimLeft());
      pon13 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones9(value14.trimLeft());
      pon14 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones9(value15.trimLeft());
      pon15 = _Ponderaciones9
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr9 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr9 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud9.text = condicionFinal9;
  }

  addChecked9Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';
    List<ClasificacionModel> previa9CLas = [];
    previa9CLas = _Clasificaciones;
    selectedItemsClas9.clear();
    for (var select9Clas in previa9CLas) {
      if (select9Clas.value) selectedItemsClas9.add(select9Clas);
    }
    setState(() => previa9CLas = selectedItemsClas9);
    print(selectedItemsClas9);
    var clasificacion9 = selectedItemsClas9.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal9 = rpl.replaceSymbol(clasificacion9);

    final tagName = clasificacionFinal9;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2== null){
      await getAllOrdenClasCondicion9(value1.trimLeft());
      Orden1 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value1.trimLeft());
      pkr1 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk9 = pkr1;
      OrdenC9 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion9(value1.trimLeft());
      Orden1 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value1.trimLeft());
      pkr1 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value2.trimLeft());
      Orden2 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value2.trimLeft());
      pkr2 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk9 = pkr1 + "," + pkr2;
      OrdenC9 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion9(value1.trimLeft());
      Orden1 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value1.trimLeft());
      pkr1 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value2.trimLeft());
      Orden2 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value2.trimLeft());
      pkr2 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value3.trimLeft());
      Orden3 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value3.trimLeft());
      pkr3 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk9 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC9 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion9(value1.trimLeft());
      Orden1 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value1.trimLeft());
      pkr1 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value2.trimLeft());
      Orden2 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value2.trimLeft());
      pkr2 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value3.trimLeft());
      Orden3 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value3.trimLeft());
      pkr3 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value4.trimLeft());
      Orden4 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value4.trimLeft());
      pkr4 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk9 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC9 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion9(value1.trimLeft());
      Orden1 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value1.trimLeft());
      pkr1 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value2.trimLeft());
      Orden2 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value2.trimLeft());
      pkr2 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value3.trimLeft());
      Orden3 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value3.trimLeft());
      pkr3 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value4.trimLeft());
      Orden4 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value4.trimLeft());
      pkr4 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value5.trimLeft());
      Orden5 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value5.trimLeft());
      pkr5 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk9 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC9 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion9(value1.trimLeft());
      Orden1 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value1.trimLeft());
      pkr1 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value2.trimLeft());
      Orden2 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value2.trimLeft());
      pkr2 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value3.trimLeft());
      Orden3 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value3.trimLeft());
      pkr3 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value4.trimLeft());
      Orden4 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value4.trimLeft());
      pkr4 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value5.trimLeft());
      Orden5 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value5.trimLeft());
      pkr5 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion9(value6.trimLeft());
      Orden6 = _OrdenClas9.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas9(value6.trimLeft());
      pkr6 = _ClaveClas9.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk9 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC9 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion9.text = clasificacionFinal9;
  }

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
  Check _incompleto10 = Check.completo;

  var foto10_1 = null;
  var foto10_2 = null;
  var foto10_3 = null;
  var foto10_4 = null;
  var foto10_5 = null;
  List<CondicioneSaludModel> selectedItemsCond10 = [];
  List<ClasificacionModel> selectedItemsClas10 = [];

  addChecked10Cond()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';
    var Orden6 = '';var Orden7 = '';var Orden8 = '';var Orden9 = '';var Orden10 = '';
    var Orden11 = '';var Orden12 = '';var Orden13 = '';var Orden14 = '';var Orden15 = '';

    var pon1 = '';var pon2 = '';var pon3 = '';var pon4 = '';var pon5 = '';
    var pon6 = '';var pon7 = '';var pon8 = '';var pon9 = '';var pon10 = '';
    var pon11 = '';var pon12 = '';var pon13 = '';var pon14 = '';var pon15 = '';

    List<CondicioneSaludModel> previa10Cond = [];
    previa10Cond = _Condiciones;
    selectedItemsCond10.clear();
    for (var select10Cond in previa10Cond) {
      if (select10Cond.value) selectedItemsCond10.add(select10Cond);
    }
    setState(() => previa10Cond = selectedItemsCond10);
    print(selectedItemsCond10);
    var condicion10 = selectedItemsCond10.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final condicionFinal10 = rpl.replaceSymbol(condicion10);

    final tagName = condicionFinal10;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];
    final value7 = values[6];
    final value8 = values[7];
    final value9 = values[8];
    final value10 = values[9];
    final value11 = values[10];
    final value12 = values[11];
    final value13 = values[12];
    final value14 = values[13];
    final value15 = values[14];


    if(value2== null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      ponderacionr10 = pon1;
      Ordenr10 = Orden1;
    }else if(value3 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2;
      Ordenr10 = Orden1+","+Orden2;
    }else if(value4 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2+","+pon3;
      Ordenr10 = Orden1+","+Orden2+","+Orden3;
    }else if(value5 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4;
    }else if(value6 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5;
    }else if(value7 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6;
    }else if(value8 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7;
    }else if(value9 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10.map((e) => e.Ponderacion).first;

      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8;
    }else if(value10 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10.map((e) => e.Orden).first;

      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10.map((e) => e.Ponderacion).first;


      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9;
    }else if(value11 == null){
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10.map((e) => e.Orden).first;
      await getAllOrdenCondicion10(value10.trimLeft());
      Orden10 = _OrdenCon10.map((e) => e.Orden).first;

      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10.map((e) => e.Ponderacion).first;
      await getAllPonderaciones10(value10.trimLeft());
      pon10 = _Ponderaciones10.map((e) => e.Ponderacion).first;


      ponderacionr10 = pon1 +","+pon2+","+pon3+","+pon4+","+pon5+","+pon6+","+pon7+","+pon8+","+pon9+","+pon10;
      Ordenr10 = Orden1+","+Orden2+","+Orden3+","+Orden4+","+Orden5+","+Orden6+","+Orden7+","+Orden8+","+Orden9+","+Orden10;

    }else if(value12 == null) {
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value10.trimLeft());
      Orden10 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value11.trimLeft());
      Orden11 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value10.trimLeft());
      pon10 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value11.trimLeft());
      pon11 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr10 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 ;
      Ordenr10 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 ;
    }else if(value13 == null) {
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value10.trimLeft());
      Orden10 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value11.trimLeft());
      Orden11 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion10(value12.trimLeft());
      Orden12 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value10.trimLeft());
      pon10 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value11.trimLeft());
      pon11 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones10(value12.trimLeft());
      pon12 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;


      ponderacionr10 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12;
      Ordenr10 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12;
    }else if(value14 == null) {
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value10.trimLeft());
      Orden10 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value11.trimLeft());
      Orden11 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion10(value12.trimLeft());
      Orden12 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value13.trimLeft());
      Orden13 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value10.trimLeft());
      pon10 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value11.trimLeft());
      pon11 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones10(value12.trimLeft());
      pon12 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value13.trimLeft());
      pon13 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr10 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13;
      Ordenr10 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13;
    }else if(value15 == null) {
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value10.trimLeft());
      Orden10 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value11.trimLeft());
      Orden11 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion10(value12.trimLeft());
      Orden12 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value13.trimLeft());
      Orden13 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value14.trimLeft());
      Orden14 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones10(value1.trimLeft());
      pon1 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value10.trimLeft());
      pon10 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value11.trimLeft());
      pon11 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones10(value12.trimLeft());
      pon12 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value13.trimLeft());
      pon13 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value14.trimLeft());
      pon14 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr10 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14;
      Ordenr10 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14;
    }else {
      await getAllOrdenCondicion10(value1.trimLeft());
      Orden1 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value2.trimLeft());
      Orden2 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value3.trimLeft());
      Orden3 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value4.trimLeft());
      Orden4 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value5.trimLeft());
      Orden5 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value6.trimLeft());
      Orden6 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value7.trimLeft());
      Orden7 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value8.trimLeft());
      Orden8 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value9.trimLeft());
      Orden9 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value10.trimLeft());
      Orden10 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value11.trimLeft());
      Orden11 = _OrdenCon10
          .map((e) => e.Orden)
          .first;

      await getAllOrdenCondicion10(value12.trimLeft());
      Orden12 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value13.trimLeft());
      Orden13 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value14.trimLeft());
      Orden14 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllOrdenCondicion10(value15.trimLeft());
      Orden15 = _OrdenCon10
          .map((e) => e.Orden)
          .first;
      await getAllPonderaciones10(value1).trimLeft();
      pon1 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value2.trimLeft());
      pon2 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value3.trimLeft());
      pon3 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value4.trimLeft());
      pon4 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value5.trimLeft());
      pon5 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value6.trimLeft());
      pon6 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value7.trimLeft());
      pon7 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value8.trimLeft());
      pon8 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value9.trimLeft());
      pon9 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value10.trimLeft());
      pon10 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value11.trimLeft());
      pon11 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones10(value12.trimLeft());
      pon12 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value13.trimLeft());
      pon13 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;
      await getAllPonderaciones10(value14.trimLeft());
      pon14 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      await getAllPonderaciones10(value15.trimLeft());
      pon15 = _Ponderaciones10
          .map((e) => e.Ponderacion)
          .first;

      ponderacionr10 =
          pon1 + "," + pon2 + "," + pon3 + "," + pon4 + "," + pon5 + "," +
              pon6 + "," + pon7 + "," + pon8 + "," + pon9 + "," + pon10 + "," +
              pon11 + "," + pon12+ "," + pon13+ "," + pon14+ "," + pon15;
      Ordenr10 =
          Orden1 + "," + Orden2 + "," + Orden3 + "," + Orden4 + "," + Orden5 +
              "," + Orden6 + "," + Orden7 + "," + Orden8 + "," + Orden9 + "," +
              Orden10 + "," + Orden11 + "," + Orden12+ "," + Orden13+ "," + Orden14+ "," + Orden15;
    }
    _condicionSalud10.text = condicionFinal10;
  }

  addChecked10Clas()async {
    var Orden1 = '';var Orden2 = '';var Orden3 = '';var Orden4 = '';var Orden5 = '';var Orden6 = '';
    var pkr1 = '';var pkr2 = '';var pkr3 = '';var pkr4 = '';var pkr5 = '';var pkr6 = '';
    List<ClasificacionModel> previa10CLas = [];
    previa10CLas = _Clasificaciones;
    selectedItemsClas10.clear();
    for (var select10Clas in previa10CLas) {
      if (select10Clas.value) selectedItemsClas10.add(select10Clas);
    }
    setState(() => previa10CLas = selectedItemsClas10);
    print(selectedItemsClas10);
    var clasificacion10 = selectedItemsClas10.toString();
    replaceAllLetter rpl = new replaceAllLetter();
    final clasificacionFinal10 = rpl.replaceSymbol(clasificacion10);

    final tagName = clasificacionFinal10;
    final split = tagName.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    print(values);  // {0: grubs, 1:  sheep}

    final value1 = values[0];
    final value2 = values[1];
    final value3 = values[2];
    final value4 = values[3];
    final value5 = values[4];
    final value6 = values[5];

    if(value2.isEmpty){
      await getAllOrdenClasCondicion10(value1.trimLeft());
      Orden1 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value1.trimLeft());
      pkr1 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk10 = pkr1;
      OrdenC10 = Orden1;

    } else if(value3 == null){
      await getAllOrdenClasCondicion10(value1.trimLeft());
      Orden1 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value1.trimLeft());
      pkr1 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value2.trimLeft());
      Orden2 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value2.trimLeft());
      pkr2 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk10 = pkr1 + "," + pkr2;
      OrdenC10 = Orden1+ "," + Orden2;

    }else if(value4 == null){

      await getAllOrdenClasCondicion10(value1.trimLeft());
      Orden1 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value1.trimLeft());
      pkr1 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value2.trimLeft());
      Orden2 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value2.trimLeft());
      pkr2 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value3.trimLeft());
      Orden3 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value3.trimLeft());
      pkr3 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk10 = pkr1 + "," + pkr2+ "," + pkr3;
      OrdenC10 = Orden1+ "," + Orden2+ "," + Orden3;

    }else if(value5 == null){

      await getAllOrdenClasCondicion10(value1.trimLeft());
      Orden1 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value1.trimLeft());
      pkr1 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value2.trimLeft());
      Orden2 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value2.trimLeft());
      pkr2 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value3.trimLeft());
      Orden3 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value3.trimLeft());
      pkr3 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value4.trimLeft());
      Orden4 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value4.trimLeft());
      pkr4 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk10 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4;
      OrdenC10 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4;

    }else if(value6 == null){
      await getAllOrdenClasCondicion10(value1.trimLeft());
      Orden1 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value1.trimLeft());
      pkr1 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value2.trimLeft());
      Orden2 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value2.trimLeft());
      pkr2 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value3.trimLeft());
      Orden3 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value3.trimLeft());
      pkr3 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value4.trimLeft());
      Orden4 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value4.trimLeft());
      pkr4 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value5.trimLeft());
      Orden5 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value5.trimLeft());
      pkr5 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk10 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5;
      OrdenC10 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5;

    }else{

      await getAllOrdenClasCondicion10(value1.trimLeft());
      Orden1 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value1.trimLeft());
      pkr1 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value2.trimLeft());
      Orden2 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value2.trimLeft());
      pkr2 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value3.trimLeft());
      Orden3 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value3.trimLeft());
      pkr3 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value4.trimLeft());
      Orden4 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value4.trimLeft());
      pkr4 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value5.trimLeft());
      Orden5 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value5.trimLeft());
      pkr5 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;
      await getAllOrdenClasCondicion10(value6.trimLeft());
      Orden6 = _OrdenClas10.map((e) => e.OrdenClasCondicionesSalud).first;
      await getAllClaveClas10(value6.trimLeft());
      pkr6 = _ClaveClas10.map((e) => e.ClaveClasCondicionesSalud).first;

      Pk10 = pkr1 + "," + pkr2+ "," + pkr3 + "," + pkr4 + "," + pkr5+ "," + pkr6;
      OrdenC10 = Orden1+ "," + Orden2+ "," + Orden3 + "," + Orden4+ "," + Orden5+ "," + Orden6;

    }
    _clasificacion10.text = clasificacionFinal10;
  }

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

  List<CapacidadesDiferentes> _Discapacidades = List<CapacidadesDiferentes>();
  List<CondicioneSaludModel> _Condiciones = List<CondicioneSaludModel>();
  List<AdiccionesModel> _Adicciones = List<AdiccionesModel>();
  List<PuebloIndigenaModel> _PueblosIndigenas = List<PuebloIndigenaModel>();
  List<ClasificacionModel> _Clasificaciones = List<ClasificacionModel>();

  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia1 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia2 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia3 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia4 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia5 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia6 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia7 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia8 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia9 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<Salud_PertenenciaIndigenenaTablaModel> _SaludPertenencia10 =
      List<Salud_PertenenciaIndigenenaTablaModel>();
  List<CapacidadesDiferentes> _OrdenCapacidades = List<CapacidadesDiferentes>();
  List<AdiccionesModel> _OrdenAdicciones = List<AdiccionesModel>();
  List<PuebloIndigenaModel> _OrdenPuebloIndigena = List<PuebloIndigenaModel>();


  List<CondicioneSaludModel> _Ponderaciones1 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones2 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones3 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones4 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones5 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones6 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones7 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones8 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones9 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _Ponderaciones10 = List<CondicioneSaludModel>();

  List<CondicioneSaludModel> _OrdenCon1 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon2 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon3 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon4 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon5 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon6 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon7 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon8 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon9 = List<CondicioneSaludModel>();
  List<CondicioneSaludModel> _OrdenCon10 = List<CondicioneSaludModel>();

  List<ClasificacionModel> _ClaveClas1 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas2 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas3 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas4 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas5 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas6 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas7 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas8 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas9 = List<ClasificacionModel>();
  List<ClasificacionModel> _ClaveClas10 = List<ClasificacionModel>();

  List<ClasificacionModel> _OrdenClas1 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas2 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas3 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas4 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas5 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas6 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas7 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas8 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas9 = List<ClasificacionModel>();
  List<ClasificacionModel> _OrdenClas10 = List<ClasificacionModel>();

  @override
  void initState() {
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

  getAllOrdenCondicion1(String condicion) async {
    _OrdenCon1 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon1.add(categoryModel);
      });
    });
  }

  getAllPonderaciones1(String condicion) async {
    _Ponderaciones1 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones1.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion2(String condicion) async {
    _OrdenCon2 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon2.add(categoryModel);
      });
    });
  }

  getAllPonderaciones2(String condicion) async {
    _Ponderaciones2 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones2.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion3(String condicion) async {
    _OrdenCon3 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon3.add(categoryModel);
      });
    });
  }

  getAllPonderaciones3(String condicion) async {
    _Ponderaciones3 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones3.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion4(String condicion) async {
    _OrdenCon4 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon4.add(categoryModel);
      });
    });
  }

  getAllPonderaciones4(String condicion) async {
    _Ponderaciones4 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones4.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion5(String condicion) async {
    _OrdenCon5 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon5.add(categoryModel);
      });
    });
  }

  getAllPonderaciones5(String condicion) async {
    _Ponderaciones5 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones5.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion6(String condicion) async {
    _OrdenCon6 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon6.add(categoryModel);
      });
    });
  }

  getAllPonderaciones6(String condicion) async {
    _Ponderaciones6 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones6.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion7(String condicion) async {
    _OrdenCon7 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon7.add(categoryModel);
      });
    });
  }

  getAllPonderaciones7(String condicion) async {
    _Ponderaciones7 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones7.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion8(String condicion) async {
    _OrdenCon8 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon8.add(categoryModel);
      });
    });
  }

  getAllPonderaciones8(String condicion) async {
    _Ponderaciones8 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones8.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion9(String condicion) async {
    _OrdenCon9 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon9.add(categoryModel);
      });
    });
  }

  getAllPonderaciones9(String condicion) async {
    _Ponderaciones9 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones9.add(categoryModel);
      });
    });
  }

  getAllOrdenCondicion10(String condicion) async {
    _OrdenCon10 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readOrdenCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Orden = category['Orden'];
        _OrdenCon10.add(categoryModel);
      });
    });
  }

  getAllPonderaciones10(String condicion) async {
    _Ponderaciones10 = List<CondicioneSaludModel>();
    var categories = await CategoryService().readPonderacionCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.Ponderacion = category['Ponderacion'];
        _Ponderaciones10.add(categoryModel);
      });
    });
  }





  getAllOrdenClasCondicion1(String condicion) async {
    _OrdenClas1 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas1.add(categoryModel);
      });
    });
  }

  getAllClaveClas1(String condicion) async {
    _ClaveClas1 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas1.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion2(String condicion) async {
    _OrdenClas2 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas2.add(categoryModel);
      });
    });
  }

  getAllClaveClas2(String condicion) async {
    _ClaveClas2 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas2.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion3(String condicion) async {
    _OrdenClas3 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas3.add(categoryModel);
      });
    });
  }

  getAllClaveClas3(String condicion) async {
    _ClaveClas3 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas3.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion4(String condicion) async {
    _OrdenClas4 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas4.add(categoryModel);
      });
    });
  }

  getAllClaveClas4(String condicion) async {
    _ClaveClas4 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas4.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion5(String condicion) async {
    _OrdenClas5 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas5.add(categoryModel);
      });
    });
  }

  getAllClaveClas5(String condicion) async {
    _ClaveClas6 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas5.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion6(String condicion) async {
    _OrdenClas6 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas6.add(categoryModel);
      });
    });
  }

  getAllClaveClas6(String condicion) async {
    _ClaveClas6 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas6.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion7(String condicion) async {
    _OrdenClas7 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas7.add(categoryModel);
      });
    });
  }

  getAllClaveClas7(String condicion) async {
    _ClaveClas7 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas7.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion8(String condicion) async {
    _OrdenClas8 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas8.add(categoryModel);
      });
    });
  }

  getAllClaveClas8(String condicion) async {
    _ClaveClas8 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas8.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion9(String condicion) async {
    _OrdenClas9 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas9.add(categoryModel);
      });
    });
  }

  getAllClaveClas9(String condicion) async {
    _ClaveClas9 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas9.add(categoryModel);
      });
    });
  }

  getAllOrdenClasCondicion10(String condicion) async {
    _OrdenClas10 = List<ClasificacionModel>();
    var categories = await CategoryService().readOrdenClasCodicionesSlud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.OrdenClasCondicionesSalud = category['OrdenClasCondicionesSalud'];
        _OrdenClas10.add(categoryModel);
      });
    });
  }

  getAllClaveClas10(String condicion) async {
    _ClaveClas10 = List<ClasificacionModel>();
    var categories = await CategoryService().readClaveClasCondicionesSalud(condicion);
    categories.forEach((category) {
      setState(() {
        var categoryModel = ClasificacionModel();
        categoryModel.ClaveClasCondicionesSalud = category['ClaveClasCondicionesSalud'];
        _ClaveClas10.add(categoryModel);
      });
    });
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
    var categories =
        await CategoryService().readSaludPertenencia(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades1.text =
        _SaludPertenencia1.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia1.map((e) => e.CapacidadDiferente).first;
    _adicciones1.text = _SaludPertenencia1.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia1.map((e) => e.Adiccion).first;

    _condicionSalud1.text = _SaludPertenencia1.map((e) => e.CondicionesSalud).first;
    Ordenr1 = _SaludPertenencia1.map((e) => e.OrdenCondicionesSalud).first;

    _peso1.text = _SaludPertenencia1.map((e) => e.peso.toString()).first;
    _talla1.text = _SaludPertenencia1.map((e) => e.talla.toString()).first;
    _puebloIndigena1.text =
        _SaludPertenencia1.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia1.map((e) => e.EtniaIndigena).first;

    _clasificacion1.text = _SaludPertenencia1.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk1 = _SaludPertenencia1.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC1 = _SaludPertenencia1.map((e) => e.ClaveClasCondicionesSalud.toString()).first;




    _ponderacion1.text =
        _SaludPertenencia1.map((e) => e.ponderacion.toString()).first;

    setFoto1(_SaludPertenencia1.map((e) => e.fileFoto1.toString()).first);
    setFoto2(_SaludPertenencia1.map((e) => e.fileFoto2.toString()).first);
    setFoto3(_SaludPertenencia1.map((e) => e.fileFoto3.toString()).first);
    setFoto4(_SaludPertenencia1.map((e) => e.fileFoto4.toString()).first);
    setFoto5(_SaludPertenencia1.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1(String foto) {
    setState(() {
      if (foto != "") {
        foto1_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2(String foto) {
    setState(() {
      if (foto != "") {
        foto1_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3(String foto) {
    setState(() {
      if (foto != "") {
        foto1_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4(String foto) {
    setState(() {
      if (foto != "") {
        foto1_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5(String foto) {
    setState(() {
      if (foto != "") {
        foto1_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto1_2(String foto) {
    setState(() {
      if (foto != "") {
        foto2_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_2(String foto) {
    setState(() {
      if (foto != "") {
        foto2_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_2(String foto) {
    setState(() {
      if (foto != "") {
        foto2_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_2(String foto) {
    setState(() {
      if (foto != "") {
        foto2_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_2(String foto) {
    setState(() {
      if (foto != "") {
        foto2_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia2() async {
    _SaludPertenencia2 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia2(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades2.text =
        _SaludPertenencia2.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia2.map((e) => e.CapacidadDiferente).first;
    _adicciones2.text = _SaludPertenencia2.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia2.map((e) => e.Adiccion).first;

    _condicionSalud2.text = _SaludPertenencia2.map((e) => e.CondicionesSalud).first;
    Ordenr2 = _SaludPertenencia2.map((e) => e.OrdenCondicionesSalud).first;

    _peso2.text = _SaludPertenencia2.map((e) => e.peso.toString()).first;
    _talla2.text = _SaludPertenencia2.map((e) => e.talla.toString()).first;
    _puebloIndigena2.text =
        _SaludPertenencia2.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia2.map((e) => e.EtniaIndigena).first;

    _clasificacion2.text = _SaludPertenencia2.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk2 = _SaludPertenencia2.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC2 = _SaludPertenencia2.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion2.text =
        _SaludPertenencia2.map((e) => e.ponderacion.toString()).first;

    setFoto1_2(_SaludPertenencia2.map((e) => e.fileFoto1.toString()).first);
    setFoto2_2(_SaludPertenencia2.map((e) => e.fileFoto2.toString()).first);
    setFoto3_2(_SaludPertenencia2.map((e) => e.fileFoto3.toString()).first);
    setFoto4_2(_SaludPertenencia2.map((e) => e.fileFoto4.toString()).first);
    setFoto5_2(_SaludPertenencia2.map((e) => e.fileFoto5.toString()).first);
  }

  getAllSaludPertenencia3() async {
    _SaludPertenencia3 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia3(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades3.text =
        _SaludPertenencia3.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia3.map((e) => e.CapacidadDiferente).first;
    _adicciones3.text = _SaludPertenencia3.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia3.map((e) => e.Adiccion).first;

    _condicionSalud3.text = _SaludPertenencia3.map((e) => e.CondicionesSalud).first;
    Ordenr3 = _SaludPertenencia3.map((e) => e.OrdenCondicionesSalud).first;

    _peso3.text = _SaludPertenencia3.map((e) => e.peso.toString()).first;
    _talla3.text = _SaludPertenencia3.map((e) => e.talla.toString()).first;
    _puebloIndigena3.text =
        _SaludPertenencia3.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia3.map((e) => e.EtniaIndigena).first;

    _clasificacion3.text = _SaludPertenencia3.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk3 = _SaludPertenencia3.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC3 = _SaludPertenencia3.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion3.text =
        _SaludPertenencia3.map((e) => e.ponderacion.toString()).first;

    setFoto1_3(_SaludPertenencia3.map((e) => e.fileFoto1.toString()).first);
    setFoto2_3(_SaludPertenencia3.map((e) => e.fileFoto2.toString()).first);
    setFoto3_3(_SaludPertenencia3.map((e) => e.fileFoto3.toString()).first);
    setFoto4_3(_SaludPertenencia3.map((e) => e.fileFoto4.toString()).first);
    setFoto5_3(_SaludPertenencia3.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_3(String foto) {
    setState(() {
      if (foto != "") {
        foto3_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_3(String foto) {
    setState(() {
      if (foto != "") {
        foto3_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_3(String foto) {
    setState(() {
      if (foto != "") {
        foto3_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_3(String foto) {
    setState(() {
      if (foto != "") {
        foto3_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_3(String foto) {
    setState(() {
      if (foto != "") {
        foto3_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia4() async {
    _SaludPertenencia4 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia4(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades4.text =
        _SaludPertenencia4.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia4.map((e) => e.CapacidadDiferente).first;
    _adicciones4.text = _SaludPertenencia4.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia4.map((e) => e.Adiccion).first;

    _condicionSalud4.text = _SaludPertenencia4.map((e) => e.CondicionesSalud).first;
    Ordenr4 = _SaludPertenencia4.map((e) => e.OrdenCondicionesSalud).first;

    _peso4.text = _SaludPertenencia4.map((e) => e.peso.toString()).first;
    _talla4.text = _SaludPertenencia4.map((e) => e.talla.toString()).first;
    _puebloIndigena4.text =
        _SaludPertenencia4.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia4.map((e) => e.EtniaIndigena).first;

    _clasificacion4.text = _SaludPertenencia4.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk4 = _SaludPertenencia4.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC4 = _SaludPertenencia4.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion4.text =
        _SaludPertenencia4.map((e) => e.ponderacion.toString()).first;

    setFoto1_4(_SaludPertenencia4.map((e) => e.fileFoto1.toString()).first);
    setFoto2_4(_SaludPertenencia4.map((e) => e.fileFoto2.toString()).first);
    setFoto3_4(_SaludPertenencia4.map((e) => e.fileFoto3.toString()).first);
    setFoto4_4(_SaludPertenencia4.map((e) => e.fileFoto4.toString()).first);
    setFoto5_4(_SaludPertenencia4.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_4(String foto) {
    setState(() {
      if (foto != "") {
        foto4_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_4(String foto) {
    setState(() {
      if (foto != "") {
        foto4_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_4(String foto) {
    setState(() {
      if (foto != "") {
        foto4_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_4(String foto) {
    setState(() {
      if (foto != "") {
        foto4_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_4(String foto) {
    setState(() {
      if (foto != "") {
        foto4_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia5() async {
    _SaludPertenencia5 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia5(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades5.text =
        _SaludPertenencia5.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia5.map((e) => e.CapacidadDiferente).first;
    _adicciones5.text = _SaludPertenencia5.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia5.map((e) => e.Adiccion).first;

    _condicionSalud5.text = _SaludPertenencia5.map((e) => e.CondicionesSalud).first;
    Ordenr5 = _SaludPertenencia5.map((e) => e.OrdenCondicionesSalud).first;

    _peso5.text = _SaludPertenencia5.map((e) => e.peso.toString()).first;
    _talla5.text = _SaludPertenencia5.map((e) => e.talla.toString()).first;
    _puebloIndigena5.text =
        _SaludPertenencia5.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia5.map((e) => e.EtniaIndigena).first;

    _clasificacion5.text = _SaludPertenencia5.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk5 = _SaludPertenencia5.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC5 = _SaludPertenencia5.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion5.text =
        _SaludPertenencia5.map((e) => e.ponderacion.toString()).first;

    setFoto1_5(_SaludPertenencia5.map((e) => e.fileFoto1.toString()).first);
    setFoto2_5(_SaludPertenencia5.map((e) => e.fileFoto2.toString()).first);
    setFoto3_5(_SaludPertenencia5.map((e) => e.fileFoto3.toString()).first);
    setFoto4_5(_SaludPertenencia5.map((e) => e.fileFoto4.toString()).first);
    setFoto5_5(_SaludPertenencia5.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_5(String foto) {
    setState(() {
      if (foto != "") {
        foto5_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_5(String foto) {
    setState(() {
      if (foto != "") {
        foto5_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_5(String foto) {
    setState(() {
      if (foto != "") {
        foto5_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_5(String foto) {
    setState(() {
      if (foto != "") {
        foto5_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_5(String foto) {
    setState(() {
      if (foto != "") {
        foto5_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia6() async {
    _SaludPertenencia6 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia6(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades6.text =
        _SaludPertenencia6.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia6.map((e) => e.CapacidadDiferente).first;
    _adicciones6.text = _SaludPertenencia6.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia6.map((e) => e.Adiccion).first;

    _condicionSalud6.text = _SaludPertenencia6.map((e) => e.CondicionesSalud).first;
    Ordenr6 = _SaludPertenencia6.map((e) => e.OrdenCondicionesSalud).first;

    _peso6.text = _SaludPertenencia6.map((e) => e.peso.toString()).first;
    _talla6.text = _SaludPertenencia6.map((e) => e.talla.toString()).first;
    _puebloIndigena6.text =
        _SaludPertenencia6.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia6.map((e) => e.EtniaIndigena).first;

    _clasificacion6.text = _SaludPertenencia6.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk6 = _SaludPertenencia6.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC6 = _SaludPertenencia6.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion6.text =
        _SaludPertenencia6.map((e) => e.ponderacion.toString()).first;

    setFoto1_6(_SaludPertenencia6.map((e) => e.fileFoto1.toString()).first);
    setFoto2_6(_SaludPertenencia6.map((e) => e.fileFoto2.toString()).first);
    setFoto3_6(_SaludPertenencia6.map((e) => e.fileFoto3.toString()).first);
    setFoto4_6(_SaludPertenencia6.map((e) => e.fileFoto4.toString()).first);
    setFoto5_6(_SaludPertenencia6.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_6(String foto) {
    setState(() {
      if (foto != "") {
        foto6_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_6(String foto) {
    setState(() {
      if (foto != "") {
        foto6_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_6(String foto) {
    setState(() {
      if (foto != "") {
        foto6_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_6(String foto) {
    setState(() {
      if (foto != "") {
        foto6_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_6(String foto) {
    setState(() {
      if (foto != "") {
        foto6_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia7() async {
    _SaludPertenencia7 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia7(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades7.text =
        _SaludPertenencia7.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia7.map((e) => e.CapacidadDiferente).first;
    _adicciones7.text = _SaludPertenencia7.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia7.map((e) => e.Adiccion).first;

    _condicionSalud7.text = _SaludPertenencia7.map((e) => e.CondicionesSalud).first;
    Ordenr7 = _SaludPertenencia7.map((e) => e.OrdenCondicionesSalud).first;

    _peso7.text = _SaludPertenencia7.map((e) => e.peso.toString()).first;
    _talla7.text = _SaludPertenencia7.map((e) => e.talla.toString()).first;
    _puebloIndigena7.text =
        _SaludPertenencia7.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia7.map((e) => e.EtniaIndigena).first;

    _clasificacion7.text = _SaludPertenencia7.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk7 = _SaludPertenencia7.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC7 = _SaludPertenencia7.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    _ponderacion7.text =
        _SaludPertenencia7.map((e) => e.ponderacion.toString()).first;

    setFoto1_7(_SaludPertenencia7.map((e) => e.fileFoto1.toString()).first);
    setFoto2_7(_SaludPertenencia7.map((e) => e.fileFoto2.toString()).first);
    setFoto3_7(_SaludPertenencia7.map((e) => e.fileFoto3.toString()).first);
    setFoto4_7(_SaludPertenencia7.map((e) => e.fileFoto4.toString()).first);
    setFoto5_7(_SaludPertenencia7.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_7(String foto) {
    setState(() {
      if (foto != "") {
        foto7_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_7(String foto) {
    setState(() {
      if (foto != "") {
        foto7_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_7(String foto) {
    setState(() {
      if (foto != "") {
        foto7_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_7(String foto) {
    setState(() {
      if (foto != "") {
        foto7_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_7(String foto) {
    setState(() {
      if (foto != "") {
        foto7_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia8() async {
    _SaludPertenencia8 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia8(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades8.text =
        _SaludPertenencia8.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia8.map((e) => e.CapacidadDiferente).first;
    _adicciones8.text = _SaludPertenencia8.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia8.map((e) => e.Adiccion).first;

    _condicionSalud8.text = _SaludPertenencia8.map((e) => e.CondicionesSalud).first;
    Ordenr8 = _SaludPertenencia8.map((e) => e.OrdenCondicionesSalud).first;

    _peso8.text = _SaludPertenencia8.map((e) => e.peso.toString()).first;
    _talla8.text = _SaludPertenencia8.map((e) => e.talla.toString()).first;
    _puebloIndigena8.text =
        _SaludPertenencia8.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia8.map((e) => e.EtniaIndigena).first;

    _clasificacion8.text = _SaludPertenencia8.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk8 = _SaludPertenencia8.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC8 = _SaludPertenencia8.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion8.text =
        _SaludPertenencia8.map((e) => e.ponderacion.toString()).first;

    setFoto1_8(_SaludPertenencia8.map((e) => e.fileFoto1.toString()).first);
    setFoto2_8(_SaludPertenencia8.map((e) => e.fileFoto2.toString()).first);
    setFoto3_8(_SaludPertenencia8.map((e) => e.fileFoto3.toString()).first);
    setFoto4_8(_SaludPertenencia8.map((e) => e.fileFoto4.toString()).first);
    setFoto5_8(_SaludPertenencia8.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_8(String foto) {
    setState(() {
      if (foto != "") {
        foto8_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_8(String foto) {
    setState(() {
      if (foto != "") {
        foto8_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_8(String foto) {
    setState(() {
      if (foto != "") {
        foto8_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_8(String foto) {
    setState(() {
      if (foto != "") {
        foto8_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_8(String foto) {
    setState(() {
      if (foto != "") {
        foto8_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia9() async {
    _SaludPertenencia9 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia9(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades9.text =
        _SaludPertenencia9.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia9.map((e) => e.CapacidadDiferente).first;
    _adicciones9.text = _SaludPertenencia9.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia9.map((e) => e.Adiccion).first;

    _condicionSalud9.text = _SaludPertenencia9.map((e) => e.CondicionesSalud).first;
    Ordenr9 = _SaludPertenencia9.map((e) => e.OrdenCondicionesSalud).first;

    _peso9.text = _SaludPertenencia9.map((e) => e.peso.toString()).first;
    _talla9.text = _SaludPertenencia9.map((e) => e.talla.toString()).first;
    _puebloIndigena9.text =
        _SaludPertenencia9.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia9.map((e) => e.EtniaIndigena).first;

    _clasificacion9.text = _SaludPertenencia9.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk9 = _SaludPertenencia9.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC9 = _SaludPertenencia9.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion9.text =
        _SaludPertenencia9.map((e) => e.ponderacion.toString()).first;

    setFoto1_9(_SaludPertenencia9.map((e) => e.fileFoto1.toString()).first);
    setFoto2_9(_SaludPertenencia9.map((e) => e.fileFoto2.toString()).first);
    setFoto3_9(_SaludPertenencia9.map((e) => e.fileFoto3.toString()).first);
    setFoto4_9(_SaludPertenencia9.map((e) => e.fileFoto4.toString()).first);
    setFoto5_9(_SaludPertenencia9.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_9(String foto) {
    setState(() {
      if (foto != "") {
        foto9_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_9(String foto) {
    setState(() {
      if (foto != "") {
        foto9_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_9(String foto) {
    setState(() {
      if (foto != "") {
        foto9_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_9(String foto) {
    setState(() {
      if (foto != "") {
        foto9_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_9(String foto) {
    setState(() {
      if (foto != "") {
        foto9_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  getAllSaludPertenencia10() async {
    _SaludPertenencia10 = List<Salud_PertenenciaIndigenenaTablaModel>();
    var categories =
        await CategoryService().readSaludPertenencia10(int.parse(widget.folio));
    categories.forEach((category) {
      setState(() {
        var categoryModel = Salud_PertenenciaIndigenenaTablaModel();
        categoryModel.folio = category['folio'];
        categoryModel.ClaveCapacidadDiferente =
            category['ClaveCapacidadDiferente'];
        categoryModel.OrdenCapacidadDiferente =
            category['OrdenCapacidadDiferente'];
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
        categoryModel.ClaveClasCondicionesSalud =
            category['ClaveClasCondicionesSalud'];
        categoryModel.OrdenClasCondicionesSalud =
            category['OrdenClasCondicionesSalud'];
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

    _discapacidades10.text =
        _SaludPertenencia10.map((e) => e.ClaveCapacidadDiferente).first +
            " " +
            _SaludPertenencia10.map((e) => e.CapacidadDiferente).first;
    _adicciones10.text = _SaludPertenencia10.map((e) => e.ClaveAdiccion).first +
        " " +
        _SaludPertenencia10.map((e) => e.Adiccion).first;

    _condicionSalud10.text = _SaludPertenencia10.map((e) => e.CondicionesSalud).first;
    Ordenr10 = _SaludPertenencia10.map((e) => e.OrdenCondicionesSalud).first;

    _peso10.text = _SaludPertenencia10.map((e) => e.peso.toString()).first;
    _talla10.text = _SaludPertenencia10.map((e) => e.talla.toString()).first;
    _puebloIndigena10.text =
        _SaludPertenencia10.map((e) => e.ClaveEtniaIndigena).first +
            " " +
            _SaludPertenencia10.map((e) => e.EtniaIndigena).first;

    _clasificacion10.text = _SaludPertenencia10.map((e) => e.ClasCondicionesSalud.toString()).first;
    Pk10 = _SaludPertenencia10.map((e) => e.ClaveClasCondicionesSalud.toString()).first;
    OrdenC10 = _SaludPertenencia10.map((e) => e.ClaveClasCondicionesSalud.toString()).first;

    _ponderacion10.text =
        _SaludPertenencia10.map((e) => e.ponderacion.toString()).first;

    setFoto1_10(_SaludPertenencia10.map((e) => e.fileFoto1.toString()).first);
    setFoto2_10(_SaludPertenencia10.map((e) => e.fileFoto2.toString()).first);
    setFoto3_10(_SaludPertenencia10.map((e) => e.fileFoto3.toString()).first);
    setFoto4_10(_SaludPertenencia10.map((e) => e.fileFoto4.toString()).first);
    setFoto5_10(_SaludPertenencia10.map((e) => e.fileFoto5.toString()).first);
  }

  setFoto1_10(String foto) {
    setState(() {
      if (foto != "") {
        foto9_1 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto2_10(String foto) {
    setState(() {
      if (foto != "") {
        foto9_2 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto3_10(String foto) {
    setState(() {
      if (foto != "") {
        foto9_3 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto4_10(String foto) {
    setState(() {
      if (foto != "") {
        foto9_4 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  setFoto5_10(String foto) {
    setState(() {
      if (foto != "") {
        foto9_5 = foto;
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  cargarDatos() {
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
    _EstructuraFamiliar2 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar3 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar4 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar5 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar6 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar7 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar8 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar9 = List<EstructuraFamilarModel>();
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
    _EstructuraFamiliar10 = List<EstructuraFamilarModel>();
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

  Future getImage1_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image1_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage1_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image1_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage1_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image1_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage1_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image1_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage1_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image1_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image2_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image2_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image2_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image2_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage2_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image2_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage3_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image3_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage3_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image3_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage3_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image3_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage3_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image3_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage3_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image3_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage4_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image4_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage4_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image4_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage4_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image4_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage4_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image4_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage4_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image4_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image5_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image5_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image5_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image5_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage5_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image5_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image6_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image6_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image6_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image6_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage6_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image6_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image7_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image7_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image7_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image7_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage7_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image7_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image8_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image8_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image8_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image8_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage8_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image8_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image9_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image9_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image9_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image9_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage9_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image9_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10_1() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image10_1 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10_2() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image10_2 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10_3() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image10_3 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10_4() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image10_4 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  Future getImage10_5() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image10_5 = File(pickedFile.path);
      } else {
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  IMC1() {
    String peso = _peso1.text;
    String talla = _talla1.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC1 = double.parse(i);
    /*if (imC1 >= 40.0) {
      _condicionSalud1.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC2() {
    String peso = _peso2.text;
    String talla = _talla2.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC2 = double.parse(i);
   /* if (imC2 >= 40.0) {
      _condicionSalud2.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC3() {
    String peso = _peso3.text;
    String talla = _talla3.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC3 = double.parse(i);
    /*if (imC3 >= 40.0) {
      _condicionSalud3.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC4() {
    String peso = _peso4.text;
    String talla = _talla4.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC4 = double.parse(i);
    /*if (imC4 >= 40.0) {
      _condicionSalud4.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC5() {
    String peso = _peso5.text;
    String talla = _talla5.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC5 = double.parse(i);
    /*if (imC5 >= 40.0) {
      _condicionSalud5.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC6() {
    String peso = _peso6.text;
    String talla = _talla6.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC6 = double.parse(i);
   /* if (imC6 >= 40.0) {
      _condicionSalud6.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC7() {
    String peso = _peso7.text;
    String talla = _talla7.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC7 = double.parse(i);
    /*if (imC7 >= 40.0) {
      _condicionSalud7.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC8() {
    String peso = _peso8.text;
    String talla = _talla8.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC8 = double.parse(i);
    /*if (imC8 >= 40.0) {
      _condicionSalud8.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC9() {
    String peso = _peso9.text;
    String talla = _talla9.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC9 = double.parse(i);
    /*if (imC9 >= 40.0) {
      _condicionSalud9.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  IMC10() {
    String peso = _peso10.text;
    String talla = _talla10.text;
    if (peso == "" && talla == "") {
      peso = "0";
      talla = "0";
    }
    double tallaM = double.parse(talla) / 100;
    double indice = double.parse(peso) / pow(tallaM, 2);
    String i = indice.toStringAsFixed(2);
    final _imc = TextEditingController.fromValue(TextEditingValue(text: i));
    imC10 = double.parse(i);
   /* if (imC10 >= 40.0) {
      _condicionSalud10.text = '25 25 Obesidad Mórbida';
    }*/
    return _imc;
  }

  getAllCategoriesDiscapacidades() async {
    _Discapacidades = List<CapacidadesDiferentes>();
    var categories = await CategoryService().readCategoriesDiscapacidades();
    categories.forEach((category) {
      setState(() {
        var categoryModel = CapacidadesDiferentes();
        categoryModel.CapacidadDiferente = category['CapacidadDiferente'];
        _Discapacidades.add(categoryModel);
      });
    });
  }

  getAllCategoriesCondicionesSalud() async {
    _Condiciones = List<CondicioneSaludModel>();
    var categories = await CategoryService().readCategoriesCondicionesSalud();
    categories.forEach((category) {
      setState(() {
        var categoryModel = CondicioneSaludModel();
        categoryModel.CondicionesSalud = category['CondicionesSalud'];
        _Condiciones.add(categoryModel);
      });
    });
  }

  getAllCategoriesAdicciones() async {
    _Adicciones = List<AdiccionesModel>();
    var categories = await CategoryService().readCategoriesAdicciones();
    categories.forEach((category) {
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
    categories.forEach((category) {
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
    categories.forEach((category) {
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

    if (_image1_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image1_1.readAsBytesSync());
    }

    if (_image1_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image1_2.readAsBytesSync());
    }

    if (_image1_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image1_3.readAsBytesSync());
    }

    if (_image1_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image1_4.readAsBytesSync());
    }

    if (_image1_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades1.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones1.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena1.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades1.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones1.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso1.text),
            talla: double.parse(_talla1.text),
            imc: imC1,
            ClaveCondicionesSalud: Ordenr1,
            OrdenCondicionesSalud: Ordenr1,
            CondicionesSalud: _condicionSalud1.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk1,
            OrdenClasCondicionesSalud: OrdenC1,
            ClasCondicionesSalud: _clasificacion1.text ,
            ponderacion: int.parse(_ponderacion1.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena1.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto1.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      setIncompleto1();
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto1() async {
    String incompleto = _incompleto1.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon2() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image2_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image2_1.readAsBytesSync());
    }

    if (_image2_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image2_2.readAsBytesSync());
    }

    if (_image2_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image2_3.readAsBytesSync());
    }

    if (_image2_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image2_4.readAsBytesSync());
    }

    if (_image2_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades2.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones2.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena2.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades2.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones2.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso2.text),
            talla: double.parse(_talla2.text),
            imc: imC2,
            ClaveCondicionesSalud: Ordenr2,
            OrdenCondicionesSalud: Ordenr2,
            CondicionesSalud: _condicionSalud2.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk2,
            OrdenClasCondicionesSalud: OrdenC2,
            ClasCondicionesSalud: _clasificacion2.text ,
            ponderacion: int.parse(_ponderacion2.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena2.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto2.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto2();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto2() async {
    String incompleto = _incompleto2.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon3() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image3_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image3_1.readAsBytesSync());
    }

    if (_image3_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image3_2.readAsBytesSync());
    }

    if (_image3_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image3_3.readAsBytesSync());
    }

    if (_image3_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image3_4.readAsBytesSync());
    }

    if (_image3_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades3.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones3.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena3.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades3.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones3.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso3.text),
            talla: double.parse(_talla3.text),
            imc: imC3,
            ClaveCondicionesSalud: Ordenr3,
            OrdenCondicionesSalud: Ordenr3,
            CondicionesSalud: _condicionSalud3.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk3,
            OrdenClasCondicionesSalud: OrdenC3,
            ClasCondicionesSalud: _clasificacion3.text ,
            ponderacion: int.parse(_ponderacion3.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena3.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto3.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto3();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto3() async {
    String incompleto = _incompleto3.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon4() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image4_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image4_1.readAsBytesSync());
    }

    if (_image4_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image4_2.readAsBytesSync());
    }

    if (_image4_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image4_3.readAsBytesSync());
    }

    if (_image4_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image4_4.readAsBytesSync());
    }

    if (_image4_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades4.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones4.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena4.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades4.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones4.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso4.text),
            talla: double.parse(_talla4.text),
            imc: imC4,
            ClaveCondicionesSalud: Ordenr4,
            OrdenCondicionesSalud: Ordenr4,
            CondicionesSalud: _condicionSalud4.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk4,
            OrdenClasCondicionesSalud: OrdenC4,
            ClasCondicionesSalud: _clasificacion4.text ,
            ponderacion: int.parse(_ponderacion4.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena4.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto4.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto4();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto4() async {
    String incompleto = _incompleto4.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon5() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image5_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image5_1.readAsBytesSync());
    }

    if (_image5_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image5_2.readAsBytesSync());
    }

    if (_image5_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image5_3.readAsBytesSync());
    }

    if (_image5_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image5_4.readAsBytesSync());
    }

    if (_image5_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades5.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones5.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena5.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades5.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones5.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso5.text),
            talla: double.parse(_talla5.text),
            imc: imC5,
            ClaveCondicionesSalud: Ordenr5,
            OrdenCondicionesSalud: Ordenr5,
            CondicionesSalud: _condicionSalud5.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk5,
            OrdenClasCondicionesSalud: OrdenC5,
            ClasCondicionesSalud: _clasificacion5.text ,
            ponderacion: int.parse(_ponderacion5.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena5.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto5.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto5();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto5() async {
    String incompleto = _incompleto5.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon6() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image6_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image6_1.readAsBytesSync());
    }

    if (_image6_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image6_2.readAsBytesSync());
    }

    if (_image6_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image6_3.readAsBytesSync());
    }

    if (_image6_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image6_4.readAsBytesSync());
    }

    if (_image6_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades6.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones6.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena6.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades6.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones6.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso6.text),
            talla: double.parse(_talla6.text),
            imc: imC6,
            ClaveCondicionesSalud: Ordenr6,
            OrdenCondicionesSalud: Ordenr6,
            CondicionesSalud: _condicionSalud6.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk6,
            OrdenClasCondicionesSalud: OrdenC6,
            ClasCondicionesSalud: _clasificacion6.text ,
            ponderacion: int.parse(_ponderacion6.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena6.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto6.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto6();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto6() async {
    String incompleto = _incompleto6.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon7() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image7_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image7_1.readAsBytesSync());
    }

    if (_image7_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image7_2.readAsBytesSync());
    }

    if (_image7_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image7_3.readAsBytesSync());
    }

    if (_image7_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image7_4.readAsBytesSync());
    }

    if (_image7_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades7.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones7.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena7.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades7.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones7.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso7.text),
            talla: double.parse(_talla7.text),
            imc: imC7,
            ClaveCondicionesSalud: Ordenr7,
            OrdenCondicionesSalud: Ordenr7,
            CondicionesSalud: _condicionSalud7.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk7,
            OrdenClasCondicionesSalud: OrdenC7,
            ClasCondicionesSalud: _clasificacion7.text ,
            ponderacion: int.parse(_ponderacion7.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena7.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto7.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto7();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto7() async {
    String incompleto = _incompleto7.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon8() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image8_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image8_1.readAsBytesSync());
    }

    if (_image8_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image8_2.readAsBytesSync());
    }

    if (_image8_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image8_3.readAsBytesSync());
    }

    if (_image8_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image8_4.readAsBytesSync());
    }

    if (_image8_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades8.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones8.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena8.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades8.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones8.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso8.text),
            talla: double.parse(_talla8.text),
            imc: imC8,
            ClaveCondicionesSalud: Ordenr8,
            OrdenCondicionesSalud: Ordenr8,
            CondicionesSalud: _condicionSalud8.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk8,
            OrdenClasCondicionesSalud: OrdenC8,
            ClasCondicionesSalud: _clasificacion8.text ,
            ponderacion: int.parse(_ponderacion8.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena8.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto8.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto8();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto8() async {
    String incompleto = _incompleto8.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon9() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image9_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image9_1.readAsBytesSync());
    }

    if (_image9_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image9_2.readAsBytesSync());
    }

    if (_image9_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image9_3.readAsBytesSync());
    }

    if (_image9_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image9_4.readAsBytesSync());
    }

    if (_image9_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades9.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones9.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena9.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades9.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones9.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso9.text),
            talla: double.parse(_talla9.text),
            imc: imC9,
            ClaveCondicionesSalud: Ordenr9,
            OrdenCondicionesSalud: Ordenr9,
            CondicionesSalud: _condicionSalud9.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk9,
            OrdenClasCondicionesSalud: OrdenC9,
            ClasCondicionesSalud: _clasificacion9.text ,
            ponderacion: int.parse(_ponderacion9.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena9.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto9.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto9();
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto9() async {
    String incompleto = _incompleto9.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  renglon10() async {
    var foto1;
    var foto2;
    var foto3;
    var foto4;
    var foto5;

    if (_image10_1.isNull) {
      foto1 = "";
    } else {
      foto1 = Utility.base64String(_image10_1.readAsBytesSync());
    }

    if (_image10_2.isNull) {
      foto2 = "";
    } else {
      foto2 = Utility.base64String(_image10_2.readAsBytesSync());
    }

    if (_image10_3.isNull) {
      foto3 = "";
    } else {
      foto3 = Utility.base64String(_image10_3.readAsBytesSync());
    }

    if (_image10_4.isNull) {
      foto4 = "";
    } else {
      foto4 = Utility.base64String(_image10_4.readAsBytesSync());
    }

    if (_image10_5.isNull) {
      foto5 = "";
    } else {
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades10.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones10.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena10.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades10.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones10.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso10.text),
            talla: double.parse(_talla10.text),
            imc: imC10,
            ClaveCondicionesSalud: Ordenr10,
            OrdenCondicionesSalud: Ordenr10,
            CondicionesSalud: _condicionSalud10.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk10,
            OrdenClasCondicionesSalud: OrdenC10,
            ClasCondicionesSalud: _clasificacion10.text ,
            ponderacion: int.parse(_ponderacion10.text),
            fileFoto1: foto1,
            fileFoto2: foto2,
            fileFoto3: foto3,
            fileFoto4: foto4,
            fileFoto5: foto5,
            ClaveEtniaIndigena:
                _puebloIndigena10.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft(),
            incompleto: _incompleto10.name.toString());

    await DbHelper().saveSalud(BModel).then((remesasModel) {
      alertDialog(context, "Se registro correctamente");
      setIncompleto10();
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Infraestructura_Vivienda(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  setIncompleto10() async {
    String incompleto = _incompleto10.name.toString();

    print(incompleto);

    await dbHelper
        .updateIncompleto(incompleto, int.parse(widget.folio))
        .then((incom) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon1() async {
    if (foto1_1 != null) {
      foto1_1 = foto1_1;
    } else {
      if (_image1_1.isNull) {
        foto1_1 = "";
      } else {
        foto1_1 = Utility.base64String(_image1_1.readAsBytesSync());
      }
    }

    if (foto1_2 != null) {
      foto1_2 = foto1_2;
    } else {
      if (_image1_2.isNull) {
        foto1_2 = "";
      } else {
        foto1_2 = Utility.base64String(_image1_2.readAsBytesSync());
      }
    }

    if (foto1_3 != null) {
      foto1_3 = foto1_3;
    } else {
      if (_image1_3.isNull) {
        foto1_3 = "";
      } else {
        foto1_3 = Utility.base64String(_image1_3.readAsBytesSync());
      }
    }

    if (foto1_4 != null) {
      foto1_4 = foto1_4;
    } else {
      if (_image1_4.isNull) {
        foto1_4 = "";
      } else {
        foto1_4 = Utility.base64String(_image1_4.readAsBytesSync());
      }
    }

    if (foto1_5 != null) {
      foto1_5 = foto1_5;
    } else {
      if (_image1_5.isNull) {
        foto1_5 = "";
      } else {
        foto1_5 = Utility.base64String(_image1_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades1.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones1.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena1.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades1.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones1.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso1.text),
            talla: double.parse(_talla1.text),
            imc: imC1,
            ClaveCondicionesSalud: Ordenr1,
            OrdenCondicionesSalud: Ordenr1,
            CondicionesSalud: _condicionSalud1.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk1,
            OrdenClasCondicionesSalud: OrdenC1,
            ClasCondicionesSalud: _clasificacion1.text ,
            ponderacion: int.parse(_ponderacion1.text),
            fileFoto1: foto1_1,
            fileFoto2: foto1_2,
            fileFoto3: foto1_3,
            fileFoto4: foto1_4,
            fileFoto5: foto1_5,
            ClaveEtniaIndigena:
                _puebloIndigena1.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud1(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon2() async {
    if (foto2_1 != null) {
      foto2_1 = foto2_1;
    } else {
      if (_image2_1.isNull) {
        foto2_1 = "";
      } else {
        foto2_1 = Utility.base64String(_image2_1.readAsBytesSync());
      }
    }

    if (foto2_2 != null) {
      foto2_2 = foto2_2;
    } else {
      if (_image2_2.isNull) {
        foto2_2 = "";
      } else {
        foto2_2 = Utility.base64String(_image2_2.readAsBytesSync());
      }
    }

    if (foto2_3 != null) {
      foto2_3 = foto2_3;
    } else {
      if (_image2_3.isNull) {
        foto2_3 = "";
      } else {
        foto2_3 = Utility.base64String(_image2_3.readAsBytesSync());
      }
    }

    if (foto2_4 != null) {
      foto2_4 = foto2_4;
    } else {
      if (_image2_4.isNull) {
        foto2_4 = "";
      } else {
        foto2_4 = Utility.base64String(_image2_4.readAsBytesSync());
      }
    }

    if (foto2_5 != null) {
      foto2_5 = foto2_5;
    } else {
      if (_image2_5.isNull) {
        foto2_5 = "";
      } else {
        foto2_5 = Utility.base64String(_image2_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades2.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones2.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena2.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades2.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones2.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso2.text),
            talla: double.parse(_talla2.text),
            imc: imC2,
            ClaveCondicionesSalud: Ordenr2,
            OrdenCondicionesSalud: Ordenr2,
            CondicionesSalud: _condicionSalud2.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk2,
            OrdenClasCondicionesSalud: OrdenC2,
            ClasCondicionesSalud: _clasificacion2.text ,
            ponderacion: int.parse(_ponderacion2.text),
            fileFoto1: foto2_1,
            fileFoto2: foto2_2,
            fileFoto3: foto2_3,
            fileFoto4: foto2_4,
            fileFoto5: foto2_5,
            ClaveEtniaIndigena:
                _puebloIndigena2.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud2(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon3() async {
    if (foto3_1 != null) {
      foto3_1 = foto3_1;
    } else {
      if (_image3_1.isNull) {
        foto3_1 = "";
      } else {
        foto3_1 = Utility.base64String(_image3_1.readAsBytesSync());
      }
    }

    if (foto3_2 != null) {
      foto3_2 = foto3_2;
    } else {
      if (_image3_2.isNull) {
        foto3_2 = "";
      } else {
        foto3_2 = Utility.base64String(_image3_2.readAsBytesSync());
      }
    }

    if (foto3_3 != null) {
      foto3_3 = foto3_3;
    } else {
      if (_image3_3.isNull) {
        foto3_3 = "";
      } else {
        foto3_3 = Utility.base64String(_image3_3.readAsBytesSync());
      }
    }

    if (foto3_4 != null) {
      foto3_4 = foto3_4;
    } else {
      if (_image3_4.isNull) {
        foto3_4 = "";
      } else {
        foto3_4 = Utility.base64String(_image3_4.readAsBytesSync());
      }
    }

    if (foto3_5 != null) {
      foto3_5 = foto3_5;
    } else {
      if (_image3_5.isNull) {
        foto3_5 = "";
      } else {
        foto3_5 = Utility.base64String(_image3_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades3.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones3.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena3.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades3.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones3.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso3.text),
            talla: double.parse(_talla3.text),
            imc: imC3,
            ClaveCondicionesSalud: Ordenr3,
            OrdenCondicionesSalud: Ordenr3,
            CondicionesSalud: _condicionSalud3.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk3,
            OrdenClasCondicionesSalud: OrdenC3,
            ClasCondicionesSalud: _clasificacion3.text ,
            ponderacion: int.parse(_ponderacion3.text),
            fileFoto1: foto3_1,
            fileFoto2: foto3_2,
            fileFoto3: foto3_3,
            fileFoto4: foto3_4,
            fileFoto5: foto3_5,
            ClaveEtniaIndigena:
                _puebloIndigena3.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud3(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon4() async {
    if (foto4_1 != null) {
      foto4_1 = foto4_1;
    } else {
      if (_image4_1.isNull) {
        foto4_1 = "";
      } else {
        foto4_1 = Utility.base64String(_image4_1.readAsBytesSync());
      }
    }

    if (foto4_2 != null) {
      foto4_2 = foto4_2;
    } else {
      if (_image4_2.isNull) {
        foto4_2 = "";
      } else {
        foto4_2 = Utility.base64String(_image4_2.readAsBytesSync());
      }
    }

    if (foto4_3 != null) {
      foto4_3 = foto4_3;
    } else {
      if (_image4_3.isNull) {
        foto4_3 = "";
      } else {
        foto4_3 = Utility.base64String(_image4_3.readAsBytesSync());
      }
    }

    if (foto4_4 != null) {
      foto4_4 = foto4_4;
    } else {
      if (_image4_4.isNull) {
        foto4_4 = "";
      } else {
        foto4_4 = Utility.base64String(_image4_4.readAsBytesSync());
      }
    }

    if (foto4_5 != null) {
      foto4_5 = foto4_5;
    } else {
      if (_image4_5.isNull) {
        foto4_5 = "";
      } else {
        foto4_5 = Utility.base64String(_image4_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades4.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones4.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena4.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades4.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones4.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso4.text),
            talla: double.parse(_talla4.text),
            imc: imC4,
            ClaveCondicionesSalud: Ordenr4,
            OrdenCondicionesSalud: Ordenr4,
            CondicionesSalud: _condicionSalud4.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk4,
            OrdenClasCondicionesSalud: OrdenC4,
            ClasCondicionesSalud: _clasificacion4.text ,
            ponderacion: int.parse(_ponderacion4.text),
            fileFoto1: foto4_1,
            fileFoto2: foto4_2,
            fileFoto3: foto4_3,
            fileFoto4: foto4_4,
            fileFoto5: foto4_5,
            ClaveEtniaIndigena:
                _puebloIndigena4.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud4(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon5() async {
    if (foto5_1 != null) {
      foto5_1 = foto5_1;
    } else {
      if (_image5_1.isNull) {
        foto5_1 = "";
      } else {
        foto5_1 = Utility.base64String(_image5_1.readAsBytesSync());
      }
    }

    if (foto5_2 != null) {
      foto5_2 = foto5_2;
    } else {
      if (_image5_2.isNull) {
        foto5_2 = "";
      } else {
        foto5_2 = Utility.base64String(_image5_2.readAsBytesSync());
      }
    }

    if (foto5_3 != null) {
      foto5_3 = foto5_3;
    } else {
      if (_image5_3.isNull) {
        foto5_3 = "";
      } else {
        foto5_3 = Utility.base64String(_image5_3.readAsBytesSync());
      }
    }

    if (foto5_4 != null) {
      foto5_4 = foto5_4;
    } else {
      if (_image5_4.isNull) {
        foto5_4 = "";
      } else {
        foto5_4 = Utility.base64String(_image5_4.readAsBytesSync());
      }
    }

    if (foto5_5 != null) {
      foto5_5 = foto5_5;
    } else {
      if (_image5_5.isNull) {
        foto5_5 = "";
      } else {
        foto5_5 = Utility.base64String(_image5_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades5.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones5.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena5.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades5.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones5.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso5.text),
            talla: double.parse(_talla5.text),
            imc: imC5,
            ClaveCondicionesSalud: Ordenr5,
            OrdenCondicionesSalud: Ordenr5,
            CondicionesSalud: _condicionSalud5.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk5,
            OrdenClasCondicionesSalud: OrdenC5,
            ClasCondicionesSalud: _clasificacion5.text ,
            ponderacion: int.parse(_ponderacion5.text),
            fileFoto1: foto5_1,
            fileFoto2: foto5_2,
            fileFoto3: foto5_3,
            fileFoto4: foto5_4,
            fileFoto5: foto5_5,
            ClaveEtniaIndigena:
                _puebloIndigena5.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud5(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon6() async {
    if (foto6_1 != null) {
      foto6_1 = foto6_1;
    } else {
      if (_image6_1.isNull) {
        foto6_1 = "";
      } else {
        foto6_1 = Utility.base64String(_image6_1.readAsBytesSync());
      }
    }

    if (foto6_2 != null) {
      foto6_2 = foto6_2;
    } else {
      if (_image6_2.isNull) {
        foto6_2 = "";
      } else {
        foto6_2 = Utility.base64String(_image6_2.readAsBytesSync());
      }
    }

    if (foto6_3 != null) {
      foto6_3 = foto6_3;
    } else {
      if (_image6_3.isNull) {
        foto6_3 = "";
      } else {
        foto6_3 = Utility.base64String(_image6_3.readAsBytesSync());
      }
    }

    if (foto6_4 != null) {
      foto6_4 = foto6_4;
    } else {
      if (_image6_4.isNull) {
        foto6_4 = "";
      } else {
        foto6_4 = Utility.base64String(_image6_4.readAsBytesSync());
      }
    }

    if (foto6_5 != null) {
      foto6_5 = foto6_5;
    } else {
      if (_image6_5.isNull) {
        foto6_5 = "";
      } else {
        foto6_5 = Utility.base64String(_image6_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades6.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones6.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena6.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades6.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones6.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso6.text),
            talla: double.parse(_talla6.text),
            imc: imC6,
            ClaveCondicionesSalud: Ordenr6,
            OrdenCondicionesSalud: Ordenr6,
            CondicionesSalud: _condicionSalud6.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk6,
            OrdenClasCondicionesSalud: OrdenC6,
            ClasCondicionesSalud: _clasificacion6.text ,
            ponderacion: int.parse(_ponderacion6.text),
            fileFoto1: foto6_1,
            fileFoto2: foto6_2,
            fileFoto3: foto6_3,
            fileFoto4: foto6_4,
            fileFoto5: foto6_5,
            ClaveEtniaIndigena:
                _puebloIndigena6.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud6(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon7() async {
    if (foto7_1 != null) {
      foto7_1 = foto7_1;
    } else {
      if (_image7_1.isNull) {
        foto7_1 = "";
      } else {
        foto7_1 = Utility.base64String(_image7_1.readAsBytesSync());
      }
    }

    if (foto7_2 != null) {
      foto7_2 = foto7_2;
    } else {
      if (_image7_2.isNull) {
        foto7_2 = "";
      } else {
        foto7_2 = Utility.base64String(_image7_2.readAsBytesSync());
      }
    }

    if (foto7_3 != null) {
      foto7_3 = foto7_3;
    } else {
      if (_image7_3.isNull) {
        foto7_3 = "";
      } else {
        foto7_3 = Utility.base64String(_image7_3.readAsBytesSync());
      }
    }

    if (foto7_4 != null) {
      foto7_4 = foto7_4;
    } else {
      if (_image7_4.isNull) {
        foto7_4 = "";
      } else {
        foto7_4 = Utility.base64String(_image7_4.readAsBytesSync());
      }
    }

    if (foto7_5 != null) {
      foto7_5 = foto7_5;
    } else {
      if (_image7_5.isNull) {
        foto7_5 = "";
      } else {
        foto7_5 = Utility.base64String(_image7_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades8.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones8.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena8.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades7.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones7.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso7.text),
            talla: double.parse(_talla7.text),
            imc: imC7,
            ClaveCondicionesSalud: Ordenr7,
            OrdenCondicionesSalud: Ordenr7,
            CondicionesSalud: _condicionSalud7.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk7,
            OrdenClasCondicionesSalud: OrdenC7,
            ClasCondicionesSalud: _clasificacion7.text ,
            ponderacion: int.parse(_ponderacion7.text),
            fileFoto1: foto7_1,
            fileFoto2: foto7_2,
            fileFoto3: foto7_3,
            fileFoto4: foto7_4,
            fileFoto5: foto7_5,
            ClaveEtniaIndigena:
                _puebloIndigena7.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud7(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon8() async {
    if (foto8_1 != null) {
      foto8_1 = foto8_1;
    } else {
      if (_image8_1.isNull) {
        foto8_1 = "";
      } else {
        foto8_1 = Utility.base64String(_image8_1.readAsBytesSync());
      }
    }

    if (foto8_2 != null) {
      foto8_2 = foto8_2;
    } else {
      if (_image8_2.isNull) {
        foto8_2 = "";
      } else {
        foto8_2 = Utility.base64String(_image8_2.readAsBytesSync());
      }
    }

    if (foto8_3 != null) {
      foto8_3 = foto8_3;
    } else {
      if (_image8_3.isNull) {
        foto8_3 = "";
      } else {
        foto8_3 = Utility.base64String(_image8_3.readAsBytesSync());
      }
    }

    if (foto8_4 != null) {
      foto8_4 = foto8_4;
    } else {
      if (_image8_4.isNull) {
        foto8_4 = "";
      } else {
        foto8_4 = Utility.base64String(_image8_4.readAsBytesSync());
      }
    }

    if (foto8_5 != null) {
      foto8_5 = foto8_5;
    } else {
      if (_image8_5.isNull) {
        foto8_5 = "";
      } else {
        foto8_5 = Utility.base64String(_image8_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades8.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones8.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena8.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades8.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones8.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso8.text),
            talla: double.parse(_talla8.text),
            imc: imC8,
            ClaveCondicionesSalud: Ordenr8,
            OrdenCondicionesSalud: Ordenr8,
            CondicionesSalud: _condicionSalud8.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk8,
            OrdenClasCondicionesSalud: OrdenC8,
            ClasCondicionesSalud: _clasificacion8.text ,
            ponderacion: int.parse(_ponderacion8.text),
            fileFoto1: foto8_1,
            fileFoto2: foto8_2,
            fileFoto3: foto8_3,
            fileFoto4: foto8_4,
            fileFoto5: foto8_5,
            ClaveEtniaIndigena:
                _puebloIndigena8.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud8(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon9() async {
    if (foto9_1 != null) {
      foto9_1 = foto9_1;
    } else {
      if (_image9_1.isNull) {
        foto9_1 = "";
      } else {
        foto9_1 = Utility.base64String(_image9_1.readAsBytesSync());
      }
    }

    if (foto9_2 != null) {
      foto9_2 = foto9_2;
    } else {
      if (_image9_2.isNull) {
        foto9_2 = "";
      } else {
        foto9_2 = Utility.base64String(_image9_2.readAsBytesSync());
      }
    }

    if (foto9_3 != null) {
      foto9_3 = foto9_3;
    } else {
      if (_image9_3.isNull) {
        foto9_3 = "";
      } else {
        foto9_3 = Utility.base64String(_image9_3.readAsBytesSync());
      }
    }

    if (foto9_4 != null) {
      foto9_4 = foto9_4;
    } else {
      if (_image9_4.isNull) {
        foto9_4 = "";
      } else {
        foto9_4 = Utility.base64String(_image9_4.readAsBytesSync());
      }
    }

    if (foto9_5 != null) {
      foto9_5 = foto9_5;
    } else {
      if (_image9_5.isNull) {
        foto9_5 = "";
      } else {
        foto9_5 = Utility.base64String(_image9_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades9.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones9.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena9.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades9.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones9.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso9.text),
            talla: double.parse(_talla9.text),
            imc: imC9,
            ClaveCondicionesSalud: Ordenr9,
            OrdenCondicionesSalud: Ordenr9,
            CondicionesSalud: _condicionSalud9.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk9,
            OrdenClasCondicionesSalud: OrdenC9,
            ClasCondicionesSalud: _clasificacion9.text ,
            ponderacion: int.parse(_ponderacion9.text),
            fileFoto1: foto9_1,
            fileFoto2: foto9_2,
            fileFoto3: foto9_3,
            fileFoto4: foto9_4,
            fileFoto5: foto9_5,
            ClaveEtniaIndigena:
                _puebloIndigena9.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud9(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  actRenglon10() async {
    if (foto10_1 != null) {
      foto10_1 = foto10_1;
    } else {
      if (_image10_1.isNull) {
        foto10_1 = "";
      } else {
        foto10_1 = Utility.base64String(_image10_1.readAsBytesSync());
      }
    }

    if (foto10_2 != null) {
      foto10_2 = foto10_2;
    } else {
      if (_image10_2.isNull) {
        foto10_2 = "";
      } else {
        foto10_2 = Utility.base64String(_image10_2.readAsBytesSync());
      }
    }

    if (foto10_3 != null) {
      foto10_3 = foto10_3;
    } else {
      if (_image10_3.isNull) {
        foto10_3 = "";
      } else {
        foto10_3 = Utility.base64String(_image10_3.readAsBytesSync());
      }
    }

    if (foto10_4 != null) {
      foto10_4 = foto10_4;
    } else {
      if (_image10_4.isNull) {
        foto10_4 = "";
      } else {
        foto10_4 = Utility.base64String(_image10_4.readAsBytesSync());
      }
    }

    if (foto10_5 != null) {
      foto10_5 = foto10_5;
    } else {
      if (_image10_5.isNull) {
        foto10_5 = "";
      } else {
        foto10_5 = Utility.base64String(_image10_5.readAsBytesSync());
      }
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

    _OrdenCapacidades = List<CapacidadesDiferentes>();
    var categories1 =
        await CategoryService().readOrdenCapacidadesDif(_discapacidades10.text);
    categories1.forEach((category) {
      setState(() {
        var categoryModel2 = CapacidadesDiferentes();
        categoryModel2.Orden = category['Orden'];
        _OrdenCapacidades.add(categoryModel2);
      });
    });

    _OrdenAdicciones = List<AdiccionesModel>();
    var categories2 =
        await CategoryService().readOrdenAdicciones(_adicciones10.text);
    categories2.forEach((category) {
      setState(() {
        var categoryModel3 = AdiccionesModel();
        categoryModel3.Orden = category['Orden'];
        _OrdenAdicciones.add(categoryModel3);
      });
    });

    _OrdenPuebloIndigena = List<PuebloIndigenaModel>();
    var categories3 =
        await CategoryService().readOrdenPuebloIndigena(_puebloIndigena10.text);
    categories3.forEach((category) {
      setState(() {
        var categoryModel4 = PuebloIndigenaModel();
        categoryModel4.Orden = category['Orden'];
        _OrdenPuebloIndigena.add(categoryModel4);
      });
    });

    Salud_PertenenciaIndigenenaTablaModel BModel =
        Salud_PertenenciaIndigenenaTablaModel(
            folio: int.parse(widget.folio),
            ClaveCapacidadDiferente: _discapacidades10.text.substring(0, 1),
            OrdenCapacidadDiferente:
                _OrdenCapacidades.map((e) => e.Orden).first,
            CapacidadDiferente: CapacidadesD.trimLeft(),
            ClaveAdiccion: _adicciones10.text.substring(0, 1),
            OrdenAdiccion: _OrdenAdicciones.map((e) => e.Orden).first,
            Adiccion: Adicciones.trimLeft(),
            peso: double.parse(_peso10.text),
            talla: double.parse(_talla10.text),
            imc: imC10,
            ClaveCondicionesSalud: Ordenr10,
            OrdenCondicionesSalud: Ordenr10,
            CondicionesSalud: _condicionSalud10.text.trimLeft().trimRight(),
            ClaveClasCondicionesSalud: Pk10,
            OrdenClasCondicionesSalud: OrdenC10,
            ClasCondicionesSalud: _clasificacion10.text ,
            ponderacion: int.parse(_ponderacion10.text),
            fileFoto1: foto10_1,
            fileFoto2: foto10_2,
            fileFoto3: foto10_3,
            fileFoto4: foto10_4,
            fileFoto5: foto10_5,
            ClaveEtniaIndigena:
                _puebloIndigena10.text.substring(0, 2).trimRight(),
            OrdenEtniaIndigena: _OrdenPuebloIndigena.map((e) => e.Orden).first,
            EtniaIndigena: Pueblo.trimLeft());

    await DbHelper()
        .upDateSalud10(BModel)
        .then((salud_pertenenciaIndigenenaTablaModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Infraestructura_Vivienda(widget.folio);
      }));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
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
                      } else {
                        actRenglon1();
                        actRenglon2();
                        actRenglon3();
                        actRenglon4();
                        actRenglon5();
                        actRenglon6();
                        actRenglon7();
                        actRenglon8();
                        actRenglon9();

                        Navigator.of(context).push(MaterialPageRoute<Null>(
                            builder: (BuildContext context) {
                          return new Infraestructura_Vivienda(widget.folio);
                        }));
                      }
                    } else {
                      actRenglon1();
                      actRenglon2();
                      actRenglon3();
                      actRenglon4();
                      actRenglon5();
                      actRenglon6();
                      actRenglon7();
                      actRenglon8();

                      Navigator.of(context).push(MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                        return new Infraestructura_Vivienda(widget.folio);
                      }));
                    }
                  } else {
                    actRenglon1();
                    actRenglon2();
                    actRenglon3();
                    actRenglon4();
                    actRenglon5();
                    actRenglon6();
                    actRenglon7();

                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Infraestructura_Vivienda(widget.folio);
                    }));
                  }
                } else {
                  actRenglon1();
                  actRenglon2();
                  actRenglon3();
                  actRenglon4();
                  actRenglon5();
                  actRenglon6();

                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return new Infraestructura_Vivienda(widget.folio);
                  }));
                }
              } else {
                actRenglon1();
                actRenglon2();
                actRenglon3();
                actRenglon4();
                actRenglon5();

                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new Infraestructura_Vivienda(widget.folio);
                }));
              }
            } else {
              actRenglon1();
              actRenglon2();
              actRenglon3();
              actRenglon4();

              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new Infraestructura_Vivienda(widget.folio);
              }));
            }
          } else {
            actRenglon1();
            actRenglon2();
            actRenglon3();

            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Infraestructura_Vivienda(widget.folio);
            }));
          }
        } else {
          actRenglon1();
          actRenglon2();

          Navigator.of(context)
              .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
            return new Infraestructura_Vivienda(widget.folio);
          }));
        }
      } else {
        actRenglon1();

        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new Infraestructura_Vivienda(widget.folio);
        }));
      }
    }
  }

  insertDatos() async {
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
                        renglon1();
                        renglon2();
                        renglon3();
                        renglon4();
                        renglon5();
                        renglon6();
                        renglon7();
                        renglon8();
                        renglon9();
                        renglon10();
                      } else {
                        renglon1();
                        renglon2();
                        renglon3();
                        renglon4();
                        renglon5();
                        renglon6();
                        renglon7();
                        renglon8();
                        renglon9();
                        Navigator.of(context).push(MaterialPageRoute<Null>(
                            builder: (BuildContext context) {
                          return new Infraestructura_Vivienda(widget.folio);
                        }));
                      }
                    } else {
                      renglon1();
                      renglon2();
                      renglon3();
                      renglon4();
                      renglon5();
                      renglon6();
                      renglon7();
                      renglon8();
                      Navigator.of(context).push(MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                        return new Infraestructura_Vivienda(widget.folio);
                      }));
                    }
                  } else {
                    renglon1();
                    renglon2();
                    renglon3();
                    renglon4();
                    renglon5();
                    renglon6();
                    renglon7();
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Infraestructura_Vivienda(widget.folio);
                    }));
                  }
                } else {
                  renglon1();
                  renglon2();
                  renglon3();
                  renglon4();
                  renglon5();
                  renglon6();
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return new Infraestructura_Vivienda(widget.folio);
                  }));
                }
              } else {
                renglon1();
                renglon2();
                renglon3();
                renglon4();
                renglon5();
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new Infraestructura_Vivienda(widget.folio);
                }));
              }
            } else {
              renglon1();
              renglon2();
              renglon3();
              renglon4();
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new Infraestructura_Vivienda(widget.folio);
              }));
            }
          } else {
            renglon1();
            renglon2();
            renglon3();
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Infraestructura_Vivienda(widget.folio);
            }));
          }
        } else {
          renglon1();
          renglon2();
          Navigator.of(context)
              .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
            return new Infraestructura_Vivienda(widget.folio);
          }));
        }
      } else {
        renglon1();
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return new Infraestructura_Vivienda(widget.folio);
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salud / Pertenencia Indigena'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        Escolaridad_SeguridadSocialTabla(widget.folio)),
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
                            dataRowHeight: 170,
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
                              DataColumn(
                                  label: Text(
                                      'Ponderación \n 1 AL 4( 1,2 ES LEVE Y 3,  4 ES GRAVE)')),
                              DataColumn(
                                  label: Text(
                                      'Documento \n OBLIGATORIO CUANDO LA PONDERACIÓN SEA 3 O 4')),
                              DataColumn(label: Text('Pueblo Indigena')),
                              DataColumn(label: Text('Incompleto')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(getTextDataTable(
                                    controller: _nombre1, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades1,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones1,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso1,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla1,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC1(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC1();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud1,
                                                hintName: 'Condiciones Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked1Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion1,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked1Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion1,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto1_1 != null ||
                                                        _image1_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage1_1),
                                            Container(
                                                child: foto1_2 != null ||
                                                        _image1_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage1_2),
                                            Container(
                                                child: foto1_3 != null ||
                                                        _image1_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage1_3),
                                            Container(
                                                child: foto1_4 != null ||
                                                        _image1_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage1_4),
                                            Container(
                                                child: foto1_5 != null ||
                                                        _image1_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage1_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena1,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto1,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto1 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(getTextDataTable(
                                    controller: _nombre2, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades2,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones2,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso2,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla2,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC2(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC2();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud2,
                                                hintName: 'Condiciones Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked2Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion2,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked2Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion2,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto2_1 != null ||
                                                        _image2_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage2_1),
                                            Container(
                                                child: foto2_2 != null ||
                                                        _image2_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage2_2),
                                            Container(
                                                child: foto2_3 != null ||
                                                        _image2_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage2_3),
                                            Container(
                                                child: foto2_4 != null ||
                                                        _image2_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage2_4),
                                            Container(
                                                child: foto2_5 != null ||
                                                        _image2_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage2_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena2,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto2,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto2 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(getTextDataTable(
                                    controller: _nombre3, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades3,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones3,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso3,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla3,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC3(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC3();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud3,
                                                hintName: 'Condiciones Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked3Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion3,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked3Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion3,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto3_1 != null ||
                                                        _image3_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage3_1),
                                            Container(
                                                child: foto3_2 != null ||
                                                        _image3_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage3_2),
                                            Container(
                                                child: foto3_3 != null ||
                                                        _image3_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage3_3),
                                            Container(
                                                child: foto3_4 != null ||
                                                        _image3_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage3_4),
                                            Container(
                                                child: foto3_5 != null ||
                                                        _image3_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage3_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena3,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto3,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto3 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(getTextDataTable(
                                    controller: _nombre4, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades4,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones4,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso4,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla4,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC4(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC4();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud4,
                                                hintName: 'Condiciones Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked4Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion4,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked4Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion4,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto1_1 != null ||
                                                        _image1_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage1_1),
                                            Container(
                                                child: foto4_2 != null ||
                                                        _image4_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage4_2),
                                            Container(
                                                child: foto4_3 != null ||
                                                        _image4_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage4_3),
                                            Container(
                                                child: foto4_4 != null ||
                                                        _image4_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage4_4),
                                            Container(
                                                child: foto4_5 != null ||
                                                        _image4_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage4_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena4,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto4,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto4 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(getTextDataTable(
                                    controller: _nombre5, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades5,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones5,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso5,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla5,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC5(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC5();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud5,
                                                hintName: 'Condiciones Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked5Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion5,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked5Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion5,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto5_1 != null ||
                                                        _image5_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage5_1),
                                            Container(
                                                child: foto5_2 != null ||
                                                        _image5_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage5_2),
                                            Container(
                                                child: foto5_3 != null ||
                                                        _image5_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage5_3),
                                            Container(
                                                child: foto5_4 != null ||
                                                        _image5_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage5_4),
                                            Container(
                                                child: foto5_5 != null ||
                                                        _image5_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage5_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena5,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto5,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto5 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(getTextDataTable(
                                    controller: _nombre6, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades6,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones6,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso6,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla6,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC6(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC6();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud6,
                                                hintName: 'Condiciones Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked6Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion6,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked6Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion6,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: Container(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto6_1 != null ||
                                                        _image6_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage6_1),
                                            Container(
                                                child: foto6_2 != null ||
                                                        _image6_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage6_2),
                                            Container(
                                                child: foto6_3 != null ||
                                                        _image6_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage6_3),
                                            Container(
                                                child: foto6_4 != null ||
                                                        _image6_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage6_4),
                                            Container(
                                                child: foto6_5 != null ||
                                                        _image6_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage6_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena6,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto6,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto6 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(getTextDataTable(
                                    controller: _nombre7, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades7,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones7,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso7,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla7,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC7(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC7();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud7,
                                                hintName:
                                                    'Condiciones de Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked7Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion7,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked7Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion7,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto7_1 != null ||
                                                        _image7_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage7_1),
                                            Container(
                                                child: foto7_2 != null ||
                                                        _image7_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage7_2),
                                            Container(
                                                child: foto7_3 != null ||
                                                        _image7_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage7_3),
                                            Container(
                                                child: foto7_4 != null ||
                                                        _image7_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage7_4),
                                            Container(
                                                child: foto7_5 != null ||
                                                        _image7_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage7_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena7,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto7,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto7 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('8')),
                                DataCell(getTextDataTable(
                                    controller: _nombre8, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades8,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones8,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso8, hintName: 'Peso (kg)')),
                                DataCell(getTextDataTable(
                                  controller: _talla8,
                                  hintName: 'Talla (cm)',
                                )),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC8(),
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC8();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud8,
                                                hintName:
                                                    'Condiciones de Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked8Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion8,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked8Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion8,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto8_1 != null ||
                                                        _image8_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage8_1),
                                            Container(
                                                child: foto8_2 != null ||
                                                        _image8_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage8_2),
                                            Container(
                                                child: foto8_3 != null ||
                                                        _image8_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage8_3),
                                            Container(
                                                child: foto8_4 != null ||
                                                        _image8_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage8_4),
                                            Container(
                                                child: foto8_5 != null ||
                                                        _image8_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage8_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena8,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto8,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto8 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('9')),
                                DataCell(getTextDataTable(
                                    controller: _nombre9, hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades9,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones9,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso9,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla9,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC9(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC9();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud9,
                                                hintName:
                                                    'Condiciones de Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked9Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion9,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked9Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion9,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Container(
                                                child: foto9_1 != null ||
                                                        _image9_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage9_1),
                                            Container(
                                                child: foto9_2 != null ||
                                                        _image9_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage9_2),
                                            Container(
                                                child: foto9_3 != null ||
                                                        _image9_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage9_3),
                                            Container(
                                                child: foto9_4 != null ||
                                                        _image9_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage9_4),
                                            Container(
                                                child: foto9_5 != null ||
                                                        _image9_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage9_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena9,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto9,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto9 = value;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ]),
                              DataRow(cells: [
                                DataCell(Text('10')),
                                DataCell(getTextDataTable(
                                    controller: _nombre10,
                                    hintName: 'Nombres')),
                                DataCell(getSearchField(
                                    controller: _discapacidades10,
                                    suggestions: _Discapacidades.map(
                                        (discapacidad) => SearchFieldListItem(
                                            discapacidad.CapacidadDiferente,
                                            item: discapacidad)).toList(),
                                    hintName: 'Capacidades Diferentes')),
                                DataCell(getSearchField(
                                    controller: _adicciones10,
                                    suggestions: _Adicciones.map((adiccion) =>
                                        SearchFieldListItem(adiccion.Adiccion,
                                            item: adiccion)).toList(),
                                    hintName: 'Adicciones')),
                                DataCell(getTextDataTable(
                                    controller: _peso10,
                                    hintName: 'Peso (kg)',
                                    inputType: TextInputType.number)),
                                DataCell(getTextDataTable(
                                    controller: _talla10,
                                    hintName: 'Talla (cm)',
                                    inputType: TextInputType.number)),
                                DataCell(
                                  Container(
                                    margin: EdgeInsets.only(bottom: 45),
                                    width: 300,
                                    child: TextField(
                                      controller: IMC10(),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: Colors.blue,
                                                style: BorderStyle.solid),
                                          ),
                                          fillColor: Colors.grey[120],
                                          filled: true,
                                          labelText:
                                              'Presionar para calcular IMC'),
                                      onTap: () async {
                                        setState(() {
                                          IMC10();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _condicionSalud10,
                                                hintName:
                                                    'Condiciones de Salud',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Condiciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Condiciones[
                                                                            index]
                                                                        .value = !_Condiciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Condiciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Condiciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Condiciones[
                                                                          index]
                                                                      .CondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked10Cond,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            genTextExpand(
                                                controller: _clasificacion10,
                                                hintName: 'Clasificación',
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
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              30.0),
                                                        ),
                                                      ),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                            builder: (context,
                                                                setstate) {
                                                          return SizedBox(
                                                            height: 500,
                                                            child: ListView
                                                                .builder(
                                                              itemCount:
                                                                  _Clasificaciones
                                                                      .length,
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      InkWell(
                                                                onTap: () {
                                                                  setstate(() {
                                                                    _Clasificaciones[
                                                                            index]
                                                                        .value = !_Clasificaciones[
                                                                            index]
                                                                        .value;
                                                                  });
                                                                },
                                                                child: ListTile(
                                                                  leading:
                                                                      Checkbox(
                                                                          value: _Clasificaciones[index]
                                                                              .value,
                                                                          onChanged:
                                                                              (checked) {
                                                                            setstate(() {
                                                                              _Clasificaciones[index].value = checked;
                                                                            });
                                                                          }),
                                                                  title: Text(_Clasificaciones[
                                                                          index]
                                                                      .ClasCondicionesSalud
                                                                      .toString()),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                      }),
                                            ),
                                            ElevatedButton(
                                                onPressed: addChecked10Clas,
                                                child: Text('Agregar')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getTextDataTable(
                                  controller: _ponderacion10,
                                  hintName: 'Ponderación',
                                )),
                                DataCell(
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10.0),
                                            Container(
                                                child: foto10_1 != null ||
                                                        _image10_1 != null
                                                    ? Text(
                                                        'Imagen 1 Seleccionada')
                                                    : Text(
                                                        'Imagen 1 No Seleccionada')),
                                            botonFoto(funcion: getImage10_1),
                                            Container(
                                                child: foto10_2 != null ||
                                                        _image10_2 != null
                                                    ? Text(
                                                        'Imagen 2 Seleccionada')
                                                    : Text(
                                                        'Imagen 2 No Seleccionada')),
                                            botonFoto(funcion: getImage10_2),
                                            Container(
                                                child: foto10_3 != null ||
                                                        _image10_3 != null
                                                    ? Text(
                                                        'Imagen 3 Seleccionada')
                                                    : Text(
                                                        'Imagen 3 No Seleccionada')),
                                            botonFoto(funcion: getImage10_3),
                                            Container(
                                                child: foto10_4 != null ||
                                                        _image10_4 != null
                                                    ? Text(
                                                        'Imagen 4 Seleccionada')
                                                    : Text(
                                                        'Imagen 4 No Seleccionada')),
                                            botonFoto(funcion: getImage10_4),
                                            Container(
                                                child: foto10_5 != null ||
                                                        _image10_5 != null
                                                    ? Text(
                                                        'Imagen 5 Seleccionada')
                                                    : Text(
                                                        'Imagen 5 No Seleccionada')),
                                            botonFoto(funcion: getImage10_5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(getSearchField(
                                  controller: _puebloIndigena10,
                                  suggestions: _PueblosIndigenas.map((pueblo) =>
                                      SearchFieldListItem(pueblo.EtniaIndigena,
                                          item: pueblo)).toList(),
                                  hintName: 'Pueblo Indigena',
                                )),
                                DataCell(
                                  ListTile(
                                    title: Text('Incompleto'),
                                    leading: Radio<Check>(
                                      value: Check.incompleto,
                                      groupValue: _incompleto10,
                                      onChanged: (Check value) {
                                        setState(() {
                                          _incompleto10 = value;
                                        });
                                      },
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
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: insertDatos,
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
                    label: Text(
                      'Continuar',
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
