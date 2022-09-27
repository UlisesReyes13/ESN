import 'package:esn/Comm/genTextConcepto.dart';
import 'package:esn/Comm/genTextEquipamiento.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/Comm/genTextAportaciones.dart';
import 'package:esn/Model/AportacionSemanal.dart';
import 'package:esn/Model/EgresoSemanal.dart';
import 'package:esn/Screens/ApoyosEnEspecie.dart';
import 'package:esn/Screens/Equipamiento.dart';
import 'package:flutter/material.dart';
import 'package:esn/Comm/genTextField.dart';

import '../Comm/comHelper.dart';
import '../DatabaseHandler/DbHelper.dart';

class AportacionesEconomicas extends StatefulWidget {

  String folio;

  AportacionesEconomicas(this.folio);

  @override
  State<AportacionesEconomicas> createState() => _AportacionesEconomicasState();
}


class _AportacionesEconomicasState extends State<AportacionesEconomicas> {
  final _padre = TextEditingController();
  final _madre = TextEditingController();
  final _hijos = TextEditingController();
  final _prospera = TextEditingController();
  final _adultosProspera = TextEditingController();
  final _becas = TextEditingController();
  final _otros = TextEditingController();
  final _pension = TextEditingController();
  final _totalSemanalS = TextEditingController();
  final _totalMensualS = TextEditingController();

  final _vivienda = TextEditingController();
  final _alimentacion = TextEditingController();
  final _luz = TextEditingController();
  final _gas = TextEditingController();
  final _agua = TextEditingController();
  final _telefono = TextEditingController();
  final _transporte = TextEditingController();
  final _atencionMedica = TextEditingController();
  final _otrosGastos = TextEditingController();
  final _celular = TextEditingController();
  final _educacion = TextEditingController();
  final _totalSemanalE = TextEditingController();
  final _totalMensualE = TextEditingController();
  static double Suma;
  static double SumaM;
  static double SumaES;
  static double SumaEM;

  SumaApoyoS() {
    String padre = _padre.text;
    String madre = _madre.text;
    String hijos = _hijos.text;
    String prospera = _prospera.text;
    String adultosProspera = _adultosProspera.text;
    String becas = _becas.text;
    String otros = _otros.text;
    String pension = _pension.text;
    if(padre.isEmpty ){
      padre = "0.0";
    }
    if (madre.isEmpty){
      madre = "0.0";
    }
    if(hijos.isEmpty){
      hijos = "0.0";
    }
    if (prospera.isEmpty ){
      prospera = "0.0";
    }
    if(adultosProspera.isEmpty){
      adultosProspera = "0.0";
    }
    if (becas.isEmpty){
      becas = "0.0";
    }
    if(otros.isEmpty){
      otros = "0.0";
    }
    if (pension.isEmpty){
      pension = "0.0";
    }
    double apoyoS = double.parse(padre) + double.parse(madre) + double.parse(hijos)
        + double.parse(prospera) + double.parse(adultosProspera) + double.parse(becas)
        + double.parse(otros) + double.parse(pension);

    String i = apoyoS.toStringAsFixed(2);
    final _ApoyoS = TextEditingController.fromValue(TextEditingValue(text: i));
    Suma = double.parse(i);
    return _ApoyoS;
  }

  SumaApoyoM() {
    String padre = _padre.text;
    String madre = _madre.text;
    String hijos = _hijos.text;
    String prospera = _prospera.text;
    String adultosProspera = _adultosProspera.text;
    String becas = _becas.text;
    String otros = _otros.text;
    String pension = _pension.text;
    if(padre.isEmpty){
      padre = "0.0";
    }
    if (madre.isEmpty){
      madre = "0.0";
    }
    if(hijos.isEmpty){
      hijos = "0.0";
    }
    if (prospera.isEmpty){
      prospera = "0.0";
    }
    if(adultosProspera.isEmpty){
      adultosProspera = "0.0";
    }
    if (becas.isEmpty){
      becas = "0.0";
    }
    if(otros.isEmpty){
      otros = "0.0";
    }
    if (pension.isEmpty){
      pension = "0.0";
    }
    double apoyoS = double.parse(padre) + double.parse(madre) + double.parse(hijos)
        + double.parse(prospera) + double.parse(adultosProspera) + double.parse(becas)
        + double.parse(otros) + double.parse(pension);

    double apoyoM = (apoyoS/7) * 30.4;

    String i = apoyoM.toStringAsFixed(2);
    final _ApoyosM = TextEditingController.fromValue(TextEditingValue(text: i));
    SumaM = double.parse(i);
    return _ApoyosM;
  }

  SumaEgresoS() {
    String vivienda = _vivienda.text;
    String alimentacion = _alimentacion.text;
    String luz = _luz.text;
    String gas = _gas.text;
    String agua = _agua.text;
    String telefono = _telefono.text;
    String transporte = _transporte.text;
    String atencionMedica = _atencionMedica.text;
    String otrosGastos = _otrosGastos.text;
    String celular = _celular.text;
    String educacion = _educacion.text;

    if(vivienda == "" ){
      vivienda = "0.0";
    }
    if (alimentacion.isEmpty){
      alimentacion = "0.0";
    }
    if(luz.isEmpty){
      luz = "0.0";
    }
    if (gas.isEmpty){
      gas = "0.0";
    }
    if(agua.isEmpty){
      agua = "0.0";
    }
    if (telefono.isEmpty){
      telefono = "0.0";
    }
    if(transporte.isEmpty){
      transporte = "0.0";
    }
    if (atencionMedica.isEmpty){
      atencionMedica = "0.0";
    }
    if (otrosGastos.isEmpty){
      otrosGastos = "0.0";
    }
    if (celular.isEmpty){
      celular = "0.0";
    }
    if (educacion.isEmpty){
      educacion = "0.0";
    }
    double egresoS = double.parse(vivienda) + double.parse(alimentacion) + double.parse(luz)
        + double.parse(gas) + double.parse(agua) + double.parse(telefono)
        + double.parse(transporte) + double.parse(atencionMedica) + double.parse(otrosGastos)
        + double.parse(celular) + double.parse(educacion) ;

    String i = egresoS.toStringAsFixed(2);
    final _EgresoS = TextEditingController.fromValue(TextEditingValue(text: i));
    SumaES = double.parse(i);
    return _EgresoS;
  }

  SumaEgresoM() {
    String vivienda = _vivienda.text;
    String alimentacion = _alimentacion.text;
    String luz = _luz.text;
    String gas = _gas.text;
    String agua = _agua.text;
    String telefono = _telefono.text;
    String transporte = _transporte.text;
    String atencionMedica = _atencionMedica.text;
    String otrosGastos = _otrosGastos.text;
    String celular = _celular.text;
    String educacion = _educacion.text;

    if(vivienda.isEmpty){
      vivienda = "0.0";
    }
    if (alimentacion.isEmpty){
      alimentacion = "0.0";
    }
    if(luz.isEmpty){
      luz = "0.0";
    }
    if (gas.isEmpty){
      gas = "0.0";
    }
    if(agua.isEmpty){
      agua = "0.0";
    }
    if (telefono.isEmpty){
      telefono = "0.0";
    }
    if(transporte.isEmpty){
      transporte = "0.0";
    }
    if (atencionMedica.isEmpty){
      atencionMedica = "0.0";
    }
    if (otrosGastos.isEmpty){
      otrosGastos = "0.0";
    }
    if (celular.isEmpty){
      celular = "0.0";
    }
    if (educacion.isEmpty){
      educacion = "0.0";
    }
    double egresoS = double.parse(vivienda) + double.parse(alimentacion) + double.parse(luz)
        + double.parse(gas) + double.parse(agua) + double.parse(telefono)
        + double.parse(transporte) + double.parse(atencionMedica) + double.parse(otrosGastos)
        + double.parse(celular) + double.parse(educacion);

    double EgresoM = (egresoS/7) * 30.4;

    String i = EgresoM.toStringAsFixed(2);
    final _EgresoM = TextEditingController.fromValue(TextEditingValue(text: i));
    SumaEM = double.parse(i);
    return _EgresoM;
  }



  insertDatos() async {
    String padre = _padre.text;
    String madre = _madre.text;
    String hijos = _hijos.text;
    String prospera = _prospera.text;
    String adultosProspera = _adultosProspera.text;
    String becas = _becas.text;
    String otros = _otros.text;
    String pension = _pension.text;

    if(padre.isEmpty ){
      padre = "0.0";
    }
    if (madre.isEmpty){
      madre = "0.0";
    }
    if(hijos.isEmpty){
      hijos = "0.0";
    }
    if (prospera.isEmpty ){
      prospera = "0.0";
    }
    if(adultosProspera.isEmpty){
      adultosProspera = "0.0";
    }
    if (becas.isEmpty){
      becas = "0.0";
    }
    if(otros.isEmpty){
      otros = "0.0";
    }
    if (pension.isEmpty){
      pension = "0.0";
    }

    String vivienda = _vivienda.text;
    String alimentacion = _alimentacion.text;
    String luz = _luz.text;
    String gas = _gas.text;
    String agua = _agua.text;
    String telefono = _telefono.text;
    String transporte = _transporte.text;
    String atencionMedica = _atencionMedica.text;
    String otrosGastos = _otrosGastos.text;
    String celular = _celular.text;
    String educacion = _educacion.text;
    if(vivienda.isEmpty){
      vivienda = "0.0";
    }
    if (alimentacion.isEmpty){
      alimentacion = "0.0";
    }
    if(luz.isEmpty){
      luz = "0.0";
    }
    if (gas.isEmpty){
      gas = "0.0";
    }
    if(agua.isEmpty){
      agua = "0.0";
    }
    if (telefono.isEmpty){
      telefono = "0.0";
    }
    if(transporte.isEmpty){
      transporte = "0.0";
    }
    if (atencionMedica.isEmpty){
      atencionMedica = "0.0";
    }
    if (otrosGastos.isEmpty){
      otrosGastos = "0.0";
    }
    if (celular.isEmpty){
      celular = "0.0";
    }
    if (educacion.isEmpty){
      educacion = "0.0";
    }

    AportacionSemanal DModel = AportacionSemanal
      (folio: int.parse(widget.folio),
        padre: double.parse(padre.toString()),
        madre: double.parse(madre.toString()),
        hijos: double.parse(hijos.toString()),
        prospera: double.parse(prospera.toString()),
        adultosMayoresProspera: double.parse(adultosProspera.toString()),
        becas: double.parse(becas.toString()),
        otros: double.parse(otros.toString()),
        pension: double.parse(pension.toString()),
        totalSemanal: Suma,
        totalMensual: SumaM
    );


    EgresoSemanal Model = EgresoSemanal
      (folio: int.parse(widget.folio),
        vivienda: double.parse(vivienda.toString()),
        alimentacion: double.parse(alimentacion.toString()),
        luz: double.parse(luz.toString()),
        gas: double.parse(gas.toString()),
        agua: double.parse(agua.toString()),
        telefono: double.parse(telefono.toString()),
        transporte: double.parse(transporte.toString()),
        atencionMedica: double.parse(atencionMedica.toString()),
        otrosGastos: double.parse(otrosGastos.toString()),
        celular: double.parse(celular.toString()),
        educacion: double.parse(educacion.toString()),
        totalSemanal: SumaES,
        totalMensual: SumaEM
    );


    await DbHelper().saveApoyoSemanal(DModel).then((aportacionSemanal) {
      alertDialog(context, "Se registro correctamente");
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });

    await DbHelper().saveEgresoSemanal(Model).then((egresoSemanal) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new ApoyosEnEspecie(widget.folio);
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
        title: Text('Aportaciones Economicas'),
        leading: IconButton(
          icon : Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => Equipamiento(widget.folio)),
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
                getTextFolio(controller: TextEditingController.fromValue(
                    TextEditingValue(text: widget.folio)),
                ),
                getTextAportaciones(encabezado: 'Aportación Semanal'),
                Container(
                  child: Row(
                    children: [
                      SizedBox(height: 50.0),
                      getTextEquipamiento(encabezado: 'Concepto'),
                      SizedBox(width: 100.0),
                      getTextEquipamiento(encabezado: 'Importe'),
                    ],
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Padre'),
                    SizedBox(width: 134.0),
                    Expanded(child: getTextField(controller: _padre,),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Madre'),
                    SizedBox(width: 128.0),
                    Expanded(child: getTextField(controller: _madre,),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Hijos'),
                    SizedBox(width: 142.0),
                    Expanded(child: getTextField(controller: _hijos,),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'PROSPERA'),
                    SizedBox(width: 70.0),
                    Expanded(child: getTextField(controller: _prospera),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Adultos Mayores \n PROSPERA'),
                    Expanded(child: getTextField(controller: _adultosProspera,),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Becas'),
                    SizedBox(width: 133.0),
                    Expanded(child: getTextField(controller: _becas),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Otros'),
                    SizedBox(width: 140.0),
                    Expanded(child: getTextField(controller: _otros),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Pensión'),
                    SizedBox(width: 107.0),
                    Expanded(child: getTextField(controller: _pension),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Total Semanal'),
                    SizedBox(width: 56.0),
                    Expanded(child: TextField(controller: SumaApoyoS(),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                            ),
                          ),
                          fillColor: Colors.grey[120],
                          filled: true
                      ),
                      onTap: () async{
                        setState(() {
                          SumaApoyoS();
                        });;
                      }
                      ,),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Total Mensual'),
                    SizedBox(width: 56.0),
                    Expanded(child: TextField(controller: SumaApoyoM(),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                            ),
                          ),
                          fillColor: Colors.grey[120],
                          filled: true
                      ),
                      onTap: () async{
                        setState(() {
                          SumaApoyoM();
                        });;
                      }
                      ,),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),

                SizedBox(height: 50.0),
                getTextAportaciones(encabezado: 'Egreso Semanal'),
                Container(
                  child: Row(
                    children: [
                      SizedBox(height: 50.0),
                      getTextEquipamiento(encabezado: 'Concepto'),
                      SizedBox(width: 100.0),
                      getTextEquipamiento(encabezado: 'Importe'),
                    ],
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Vivienda'),
                    SizedBox(width: 107.0),
                    Expanded(child: getTextField(controller: _vivienda),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Alimentación'),
                    SizedBox(width: 53.0),
                    Expanded(child: getTextField(controller: _alimentacion),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Luz'),
                    SizedBox(width: 169.0),
                    Expanded(child: getTextField(controller: _luz),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Gas'),
                    SizedBox(width: 168.0),
                    Expanded(child: getTextField(controller: _gas),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Agua'),
                    SizedBox(width: 150.0),
                    Expanded(child: getTextField(controller: _agua),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Teléfono'),
                    SizedBox(width: 108.0),
                    Expanded(child: getTextField(controller: _telefono),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Transporte'),
                    SizedBox(width: 83.0),
                    Expanded(child: getTextField(controller: _transporte),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Atención Médica'),
                    SizedBox(width: 14.0),
                    Expanded(child: getTextField(controller: _atencionMedica),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Otros Gastos'),
                    SizedBox(width: 58.0),
                    Expanded(child: getTextField(controller: _otrosGastos),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Celular'),
                    SizedBox(width: 126.0),
                    Expanded(child: getTextField(controller: _celular),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Educación'),
                    SizedBox(width: 87.0),
                    Expanded(child: getTextField(controller: _educacion),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Total Semanal'),
                    SizedBox(width: 60.0),
                    Expanded(child: TextField(controller: SumaEgresoS(),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                            ),
                          ),
                          fillColor: Colors.grey[120],
                          filled: true
                      ),
                      onTap: () async{
                        setState(() {
                          SumaEgresoS();
                        });;
                      }
                      ,),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    getTextCocepto(concepto: 'Total Mensual'),
                    SizedBox(width: 60.0),
                    Expanded(child: TextField(controller: SumaEgresoM(),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
                            ),
                          ),
                          fillColor: Colors.grey[120],
                          filled: true
                      ),
                      onTap: () async{
                        setState(() {
                          SumaEgresoM();
                        });;
                      }
                      ,),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
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