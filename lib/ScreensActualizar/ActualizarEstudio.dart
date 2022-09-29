import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/TablaFolios.dart';
import 'package:esn/ScreensActualizar/AlimentacionActualizar.dart';
import 'package:esn/ScreensActualizar/AportacionesEconomicasActualizar.dart';
import 'package:esn/ScreensActualizar/ApoyosEnEspecieActualizar.dart';
import 'package:esn/ScreensActualizar/Caracteristicas_CasaActualizar.dart';
import 'package:esn/ScreensActualizar/DatosGeneralesActualizar.dart';


import 'package:esn/ScreensActualizar/DocumentosActualizar.dart';
import 'package:esn/ScreensActualizar/EquipamientoActualizar.dart';import 'package:esn/ScreensActualizar/Escolaridad_SeguridadSocialActualizar.dart';import 'package:esn/ScreensActualizar/EstructuraFamiliarActualizar.dart';
import 'package:esn/ScreensActualizar/FotografiaActualizar.dart';
import 'package:esn/ScreensActualizar/Infraestructura_ViviendaActualizar.dart';
import 'package:esn/ScreensActualizar/RemesasActualizar.dart';
import 'package:esn/ScreensActualizar/ResolucionActualizar.dart';
import 'package:esn/ScreensActualizar/Salud_PertenenciaIndigenaActualizar.dart';
import 'package:esn/ScreensActualizar/ServicioCombustibleActualizar.dart';
import 'package:esn/ScreensActualizar/ServiciosDrenajeActualizar.dart';
import 'package:esn/ScreensActualizar/ServiciosLuzActualizar.dart';
import 'package:esn/ScreensActualizar/ServiciosAguaActualizar.dart';
import 'package:flutter/material.dart';
import 'package:esn/ScreensActualizar/ServiciosBanioActualizar.dart';

class ActualizarEstudio extends StatefulWidget {
  String folio;

  ActualizarEstudio(this.folio);

  @override
  State<ActualizarEstudio> createState() => _ActualizarEstudioState();
}

class _ActualizarEstudioState extends State<ActualizarEstudio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 19,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Actualizar Estudio'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => TablaFolios()),
                        (Route<dynamic> route) => false);
              },
            ),
            bottom: TabBar(
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 17),
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home),child: Text('Datos Generales')),
                Tab(icon: Icon(Icons.bathroom_outlined), child: Text('Servicio Baño')),
                Tab(icon: Icon(Icons.flashlight_on_outlined), child: Text('Servicio Luz')),
                Tab(icon: Icon(Icons.water_damage_outlined), child: Text('Servicio Agua')),
                Tab(icon: Icon(Icons.water_damage_outlined), child: Text('Servicio Drenaje')),
                Tab(icon: Icon(Icons.gas_meter_outlined), child: Text('Servicio Gas')),
                Tab(icon: Icon(Icons.family_restroom_outlined), child: Text('Estructura Familiar')),
                Tab(icon: Icon(Icons.school_outlined ), child: Text('Escolaridad y Seguridad Social')),
                Tab(icon: Icon(Icons.health_and_safety_outlined), child: Text('Salud')),
                Tab(icon: Icon(Icons.holiday_village_outlined), child: Text('Infraestura de Vivienda')),
                Tab(icon: Icon(Icons.holiday_village_outlined), child: Text('Caracteristicas Casa')),
                Tab(icon: Icon(Icons.phone_android_outlined), child: Text('Equipamiento')),
                Tab(icon: Icon(Icons.attach_money_outlined ), child: Text('Aportaciones Económicas')),
                Tab(icon: Icon(Icons.attach_money_outlined ), child: Text('Apoyos en Especie')),
                Tab(icon: Icon(Icons.attach_money_outlined ), child: Text('Remesas')),
                Tab(icon: Icon(Icons.food_bank_outlined ), child: Text('Alimentación')),
                Tab(icon: Icon(Icons.document_scanner_outlined ), child: Text('Documentos')),
                Tab(icon: Icon(Icons.check_box_outlined ), child: Text('Resolución')),
                Tab(icon: Icon(Icons.camera_alt_outlined ), child: Text('Fotografia')),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DatosGeneralesActualizar(widget.folio),
              ServiciosBaniosActualizar(widget.folio),
              ServiciosLuzActualizar(widget.folio),
              ServiciosAguaActualizar(widget.folio),
              ServiciosDrenajeActualizar(widget.folio),
              ServiciosCombustibleActualizar(widget.folio),
              EstructuraFamiliarActualizar(widget.folio),
              Escolaridad_SeguridadSocialActualizar(widget.folio),
              Salud_PertenenciaIndigenaActualizar(widget.folio),
              Infraestructura_ViviendaActualizar(widget.folio),
              Caracteristicas_CasaActualizar(widget.folio),
              EquipamientoActualizar(widget.folio),
              AportacionesEconomicasActualizar(widget.folio),
              ApoyosEnEspecieActualizar(widget.folio),
              RemesasActualizar(widget.folio),
              AlimentacionActualizar(widget.folio),
              DocumentosActualizar(widget.folio),
              ResolucionActualizar(widget.folio),
              FotografiaActualizar(widget.folio),
            ],
          ),
        )
    );
  }
}
