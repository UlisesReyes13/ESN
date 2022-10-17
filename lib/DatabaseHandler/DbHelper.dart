import 'dart:developer';

import 'package:esn/Model/Agua.dart';
import 'package:esn/Model/AlimentacionModel.dart';
import 'package:esn/Model/AportacionSemanal.dart';
import 'package:esn/Model/ApoyoEnEspecieModel.dart';
import 'package:esn/Model/CaracteristicasCasa.dart';
import 'package:esn/Model/DispoModel.dart';
import 'package:esn/Model/Drenaje.dart';
import 'package:esn/Model/EgresoSemanal.dart';
import 'package:esn/Model/EquipamientoModel.dart';
import 'package:esn/Model/EscolaridadSeguridadSocial.dart';
import 'package:esn/Model/EstadoCasaConstruccionModel.dart';
import 'package:esn/Model/EstructuraFamiliarModel.dart';
import 'package:esn/Model/FotoModel.dart';
import 'package:esn/Model/Gas.dart';
import 'package:esn/Model/Luz.dart';
import 'package:esn/Model/NombreAsentamiento.dart';
import 'package:esn/Model/RemesasModel.dart';
import 'package:esn/Model/ResolucionBALModel.dart';
import 'package:esn/Model/ResolucionModel.dart';
import 'package:esn/Model/SaludPerteneciaIndigenaModel.dart';
import 'package:esn/Model/Salud_PertenenciaIndigenaTablaModel.dart';
import 'package:esn/Model/UserModel.dart';
import 'package:esn/Model/banio.dart';
import 'package:esn/Screens/ApoyosEnEspecie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'package:esn/Model/DatosGeneralesModel.dart';

import '../Model/CodigoPostalModel.dart';
import '../Model/ComunidadesModel.dart';
import '../Model/DocumentosModel.dart';

class DbHelper {
  static Database _db;

  static const String DB_Name = 'encuesta.db';
  static const String Table_User = 'usuario';
  static const String Table_Data = 'datosGenerales';
  static const String Table_Servicios = 'servicios';
  static const String Table_DatosFamiliares = 'estructuraFailiar';
  static const String Table_Escolaridad = 'escolaridadSeguridadSocial';
  static const String Table_Salud = 'saludPertenenciaIndigena';
  static const String Table_Vivienda = 'estadoDeLaCasaYConstruccion';
  static const String Table_Casa = 'caracteristicas_Casa';
  static const String Table_Equipamiento = 'equipamiento';
  static const String Table_AportacionSemanalM = 'aportacionSemanalS';
  static const String Table_EgresoSemanalM = 'aportacionSemanalM';
  static const String Table_ApoyoEspecie = 'apoyoEnEspecie';
  static const String Table_Remesas = 'remesas';
  static const String Table_Documentos = 'documentos';
  static const String Table_Alimentacion = 'alimentacion';
  static const String Table_Resolucion = 'resolucion';
  static const String Table_ResolucionBAL = 'resolucionBAL';
  static const String Table_Fotografia = 'fotografia';

  static const int Version = 3;


  static const String C_idUsuario = 'idUsuario';
  static const String C_NombreUsuario = 'nombreUsuario';
  static const String C_Nombre = 'nombre';
  static const String C_ApellidoP = 'apellidoP';
  static const String C_ApellidoM = 'apellidoM';
  static const String C_Rol = 'rol';
  static const String C_Password = 'password';

  static const String Table_Dispositivo = 'dispositivo';
  static const String C_Dispositivo = 'dispositivo';

  static const String C_FolioDisp = 'folioDisp';

  static const String C_Folio = 'folio';
  static const String C_FechaCaptura = 'fechaCaptura';
  static const String C_Calle = 'calle';
  static const String C_EntreCalles = 'entreCalles';
  static const String C_ClaveGrupo = 'claveGrupo';
  static const String C_Grupo = 'grupo';
  static const String C_NoExt = 'noExt';
  static const String C_NoInt = 'noInt';
  static const String C_Fecha = 'fecha';
  static const String C_Localidad = 'localidad';
  static const String C_Telefono = 'telefono';
  static const String C_CP = 'claveCodigoPostal';
  static const String C_ClaveEstado = 'claveEstado';
  static const String C_Estado = 'estado';
  static const String C_ClaveComunidad = 'claveComunidad';
  static const String C_NombreComunidad = 'nombreComunidad';

  static const String C_ClaveMunicipio = 'claveMunicipio';
  static const String C_Municipio = 'municipio';

  static const String C_ClaveTipoAsentamiento = 'claveTipoAsentamiento';
  static const String C_OrdenTipoAsentamiento = 'ordenTipoAsentamiento';
  static const String C_TipoAsentamiento = 'tipoAsentamiento';

  static const String C_ClaveAsentamiento = 'claveAsentamiento';
  static const String C_NombreAsentamiento = 'nombreAsentamiento';

  static const String C_ClaveTipoVialidad = 'claveTipoVialidad';
  static const String C_OrdenTipoVialidad = 'ordenTipoVialidad';
  static const String C_TipoVialidad = 'tipoVialidad';

  //Tabla Servicios
  static const String C_pk_bano = 'pk_bano';
  static const String C_int_orden_bano = 'int_orden_bano';
  static const String C_txt_desc_bano = 'txt_desc_bano';
  static const String C_ClaveServAgua = 'claveServAgua';
  static const String C_OrdenServAgua = 'ordenServAgua';
  static const String C_ServAgua = 'servAgua';
  static const String C_ClaveServGas = 'claveServGas';
  static const String C_OrdenServGas = 'ordenServGas';
  static const String C_ServGas = 'servGas';
  static const String C_ClaveServLuz = 'claveServLuz';
  static const String C_OrdenServLuz = 'ordenServLuz';
  static const String C_ServLuz = 'servLuz';
  static const String C_ClaveServSanitario = 'claveServSanitario';
  static const String C_OrdenServSanitario = 'ordenServSanitario';
  static const String C_ServSanitario = 'servSanitario';

  //Tabla estructura Familiar
  static const String C_Nombres = 'nombre';
  static const String C_PrimerApellido = 'primerApellido';
  static const String C_SegundoApellido = 'segundoApellido';
  static const String C_ClaveSexo = 'claveSexo';
  static const String C_OrdenSexo = 'ordenSexo';
  static const String C_Sexo = 'sexo';
  static const String C_FechaNacimiento = 'fechaNacimiento';
  static const String C_ClaveEntidad = 'claveEntidad';
  static const String C_EntidadNacimiento = 'entidadNacimiento';
  static const String C_ClaveEstadoCivil = 'claveEstadoCivil';
  static const String C_OrdenEstadoCivil = 'ordenEstadoCivil';
  static const String C_EstadoCivil = 'estadoCivil';
  static const String C_ClaveParentesco = 'claveParentesco';
  static const String C_OrdenParentesco = 'OrdenParentesco';
  static const String C_Parentesco = 'parentesco';
  static const String C_IngresoSemanal = 'ingresoSemanal';
  static const String C_IngresoMensual = 'ingresoMensual';

  //Tabla escolaridad seguridad social
  static const String C_ClaveEscolaridad = 'ClaveEscolaridad';
  static const String C_OrdenEscolaridad = 'OrdenEscolaridad';
  static const String C_Escolaridad = 'Escolaridad';
  static const String C_ClaveGradoEscolar = 'ClaveGradoEscolar';
  static const String C_GradoEscolar = 'GradoEscolar';
  static const String C_ClaveAsisteEscuela = 'ClaveAsisteEscuela';
  static const String C_OrdenAsisteEscuela = 'OrdenAsisteEscuela';
  static const String C_AsisteEscuela = 'AsisteEscuela';
  static const String C_ClaveOcupacion = 'ClaveOcupacion';
  static const String C_OrdenOcupacion = 'OrdenOcupacion';
  static const String C_Ocupacion = 'Ocupacion';
  static const String C_ClaveTipoEmpleo = 'ClaveTipoEmpleo';
  static const String C_OrdenTipoEmpleo = 'OrdenTipoEmpleo';
  static const String C_TipoEmpleo = 'TipoEmpleo';
  static const String C_pk_prestacioneslab = 'pk_prestacioneslab';
  static const String C_int_OrdenPrestacionesLab = 'int_OrdenPrestacionesLab';
  static const String C_txt_desc_prestacioneslab = 'txt_desc_prestacioneslab';
  static const String C_ClaveJubilacion = 'ClaveJubilacion';
  static const String C_OrdenJubilacion = 'OrdenJubilacion';
  static const String C_Jubilacion = 'Jubilacion';

  static const String C_ClaveDerechohabiencia = 'ClaveDerechohabiencia';
  static const String C_OrdenDerechohabiencia = 'OrdenDerechohabiencia';
  static const String C_Derechohabiencia = 'Derechohabiencia';
  static const String C_ClaveMotivoDerechohabiencia = 'ClaveMotivoDerechohabiencia';
  static const String C_OrdenMotivoDerechohabiencia = 'OrdenMotivoDerechohabiencia';
  static const String C_MotivoDerechohabiencia = 'MotivoDerechohabiencia';

  //Tabla Salud_Pertenencia Indigena
  //Capacidades Diferentes
  static const String C_ClaveCapacidadDiferente = 'ClaveCapacidadDiferente';
  static const String C_OrdenCapacidadDiferente = 'OrdenCapacidadDiferente';
  static const String C_CapacidadDiferente = 'CapacidadDiferente';
  //Adicciones
  static const String C_ClaveAdiccion = 'ClaveAdiccion';
  static const String C_OrdenAdiccion = 'OrdenAdiccion';
  static const String C_Adiccion = 'Adiccion';
  //Peso, Talla, IMC
  static const String C_peso = 'peso';
  static const String C_talla = 'talla';
  static const String C_imc = 'imc';
  //Condiciones de salud
  static const String C_ClaveCondicionesSalud = 'ClaveCondicionesSalud';
  static const String C_OrdenCondicionesSalud = 'OrdenCondicionesSalud';
  static const String C_CondicionesSalud = 'CondicionesSalud';
  //Clasificación Condición de salud
  static const String C_ClaveClasCondicionesSalud = 'ClaveClasCondicionesSalud';
  static const String C_OrdenClasCondicionesSalud = 'OrdenClasCondicionesSalud';
  static const String C_ClasCondicionesSalud = 'ClasCondicionesSalud';
  //Ponderación
  static const String C_ponderacion = 'ponderacion';
  //Foto
  static const String C_fileFoto = 'fileFoto';
  //Pueblo indigena
  static const String C_ClaveEtniaIndigena = 'ClaveEtniaIndigena';
  static const String C_OrdenEtniaIndigena = 'OrdenEtniaIndigena';
  static const String C_EtniaIndigena = 'EtniaIndigena';

  //Tabla Estado de la casa y construcion
  static const String C_ClaveTipoVivienda = 'ClaveTipoVivienda';
  static const String C_OrdenTipoVivienda = 'OrdenTipoVivienda';
  static const String C_TipoVivienda = 'TipoVivienda';
  static const String C_ClaveTipoPiso = 'ClaveTipoPiso';
  static const String C_OrdenTipoPiso = 'OrdenTipoPiso';
  static const String C_TipoPiso = 'TipoPiso';
  static const String C_ClaveTenencia = 'ClaveTenencia';
  static const String C_OrdenTenencia = 'OrdenTenencia';
  static const String C_Tenencia = 'Tenencia';
  static const String C_ClaveTecho = 'ClaveTecho';
  static const String C_OrdenTecho = 'OrdenTecho';
  static const String C_Techo = 'Techo';
  static const String C_ClaveTipoMuro = 'ClaveTipoMuro';
  static const String C_OrdenTipoMuro = 'OrdenTipoMuro';
  static const String C_TipoMuro = 'TipoMuro';

  //Tabla Estado de la casa y construcion
  static const String C_numCuartos = 'numCuartos';
  static const String C_cuartosDormir = 'cuartosDormir';
  static const String C_cocinaSeparada = 'cocinaSeparada';
  static const String C_cuartoBanioExclusivo = 'cuartoBanioExclusivo';

  //Tabla Equipamiento
  static const String C_pk_equipamientosRefri = 'pk_equipamientosRefri';
  static const String C_txt_desc_equipamientosRefri = 'txt_desc_equipamientosRefri';
  static const String C_tieneRefri = 'tieneRefri';
  static const String C_sirveRefri = 'sirveRefri';
  static const String C_pk_equipamientosEstufa = 'pk_equipamientosEstufa';
  static const String C_txt_desc_equipamientosEstufa = 'txt_desc_equipamientosEstufa';
  static const String C_tieneEstufa = 'tieneEstufa';
  static const String C_sirveEstufa = 'sirveEstufa';
  static const String C_pk_equipamientosVideoDVDBlueRay = 'pk_equipamientosVideoDVDBlueRay';
  static const String C_txt_desc_equipamientosVideoDVDBlueRay = 'txt_desc_equipamientosVideoDVDBlueRay';
  static const String C_tieneVideoDVDBlueRay = 'tieneVideoDVDBlueRay';
  static const String C_sirveVideoDVDBlueRay = 'sirveVideoDVDBlueRay';
  static const String C_pk_equipamientosLavadora = 'pk_equipamientosLavadora';
  static const String C_txt_desc_equipamientosLavadora = 'txt_desc_equipamientosLavadora';
  static const String C_tieneLavadora = 'tieneLavadora';
  static const String C_sirveLavadora = 'sirveLavadora';
  static const String C_pk_equipamientosLicuadora = 'pk_equipamientosLicuadora';
  static const String C_txt_desc_equipamientosLicuadora = 'txt_desc_equipamientosLicuadora';
  static const String C_tieneLicuadora = 'tieneLicuadora';
  static const String C_sirveLicuadora = 'sirveLicuadora';
  static const String C_pk_equipamientosTelevision = 'pk_equipamientosTelevision';
  static const String C_txt_desc_equipamientosTelevision = 'txt_desc_equipamientosTelevision';
  static const String C_tieneTelevision = 'tieneTelevision';
  static const String C_sirveTelevision = 'sirveTelevision';
  static const String C_pk_equipamientosRadio = 'pk_equipamientosRadio';
  static const String C_txt_desc_equipamientosRadio = 'txt_desc_equipamientosRadio';
  static const String C_tieneRadio = 'tieneRadio';
  static const String C_sirveRadio = 'sirveRadio';
  static const String C_pk_equipamientosSala = 'pk_equipamientosSala';
  static const String C_txt_desc_equipamientosSala = 'txt_desc_equipamientosSala';
  static const String C_tieneSala = 'tieneSala';
  static const String C_sirveSala = 'sirveSala';
  static const String C_pk_equipamientosComedor = 'pk_equipamientosComedor';
  static const String C_txt_desc_equipamientosComedor = 'txt_desc_equipamientosComedor';
  static const String C_tieneComedor = 'tieneComedor';
  static const String C_sirveComedor = 'sirveComedor';
  static const String C_pk_equipamientosAutoMovil = 'pk_equipamientosAutoMovil';
  static const String C_txt_desc_equipamientosAutoMovil = 'txt_desc_equipamientosAutoMovil';
  static const String C_tieneAutoMovil = 'tieneAutoMovil';
  static const String C_sirveAutoMovil = 'sirveAutoMovil';
  static const String C_pk_equipamientosCama = 'pk_equipamientosCama';
  static const String C_txt_desc_equipamientosCama = 'txt_desc_equipamientosCama';
  static const String C_tieneCama = 'tieneCama';
  static const String C_sirveCama = 'sirveCama';
  static const String C_pk_equipamientosCelular = 'pk_equipamientosCelular';
  static const String C_txt_desc_equipamientosCelular = 'txt_desc_equipamientosCelular';
  static const String C_tieneCelular = 'tieneCelular';
  static const String C_sirveCelular = 'sirveCelular';
  static const String C_pk_equipamientosMotocicleta = 'pk_equipamientosMotocicleta';
  static const String C_txt_desc_equipamientosMotocicleta = 'txt_desc_equipamientosMotocicleta';
  static const String C_tieneMotocicleta = 'tieneMotocicleta';
  static const String C_sirveMotocicleta = 'sirveMotocicleta';
  static const String C_pk_equipamientosComputadora = 'pk_equipamientosComputadora';
  static const String C_txt_desc_equipamientosComputadora = 'txt_desc_equipamientosComputadora';
  static const String C_tieneComputadora = 'tieneComputadora';
  static const String C_sirveComputadora = 'sirveComputadora';
  static const String C_pk_equipamientosHorno = 'pk_equipamientosHorno';
  static const String C_txt_desc_equipamientosHorno = 'txt_desc_equipamientosHorno';
  static const String C_tieneHorno = 'tieneHorno';
  static const String C_sirveHorno = 'sirveHorno';
  static const String C_pk_equipamientosTelefono = 'pk_equipamientosTelefono';
  static const String C_txt_desc_equipamientosTelefono = 'txt_desc_equipamientosTelefono';
  static const String C_tieneTelefono = 'tieneTelefono';
  static const String C_sirveTelefono = 'sirveTelefono';
  static const String C_CondicionesGenerales = 'CondicionesGenerales';

  //Tabla Aportacion Semanal
  static const String C_padre = 'padre';
  static const String C_madre = 'madre';
  static const String C_hijos = 'hijos';
  static const String C_prospera = 'prospera';
  static const String C_adultosMayoresProspera = 'adultosMayoresProspera';
  static const String C_becas = 'becas';
  static const String C_otros = 'otros';
  static const String C_pension = 'pension';
  static const String C_totalSemanal = 'totalSemanal';
  static const String C_totalMensual = 'totalMensual';

  //Tabla EgresoSemanalM
  static const String C_vivienda = 'vivienda';
  static const String C_alimentacion = 'alimentacion';
  static const String C_luz = 'luz';
  static const String C_gas = 'gas';
  static const String C_agua = 'agua';
  static const String C_telefono = 'telefono';
  static const String C_transporte = 'transporte';
  static const String C_atencionMedica = 'atencionMedica';
  static const String C_otrosGastos = 'otrosGastos';
  static const String C_celular = 'celular';
  static const String C_educacion = 'educacion';
  static const String C_EtotalSemanal = 'totalSemanal';
  static const String C_EtotalMensual = 'totalMensual';

  //Tabla Apoyo en especie
  static const String C_tipoApoyo = 'tipoApoyo';
  static const String C_quienProporciona = 'quienProporciona';
  static const String C_frecuenciaApoyo = 'frecuenciaApoyo';

  //Tabla Remesas
  static const String C_dineroOtrosPaises = 'dineroOtrosPaises';
  static const String C_ClaveFrecuencia= 'claveFrecuenciaApoyo';
  static const String C_OrdenFrecuencia= 'ordenFrecuenciaApoyo';
  static const String C_frecuencia= 'frecuencia';

  //Tabla Documentos
  static const String C_curp = 'curp';
  static const String C_actaNacimiento= 'actaNacimiento';
  static const String C_comprobanteDomicilio = 'comprobanteDomicilio';
  static const String C_ine = 'ine';

  //Tabla Alimentacion
  static const String C_pregunta1 = 'pregunta1';
  static const String C_pregunta2 = 'pregunta2';
  static const String C_pregunta3 = 'pregunta3';
  static const String C_pregunta4 = 'pregunta4';
  static const String C_pregunta5 = 'pregunta5';
  static const String C_pregunta6 = 'pregunta6';
  static const String C_pregunta7 = 'pregunta7';
  static const String C_pregunta8 = 'pregunta8';
  static const String C_pregunta9 = 'pregunta9';
  static const String C_pregunta10 = 'pregunta10';
  static const String C_pregunta11 = 'pregunta11';
  static const String C_pregunta12 = 'pregunta12';

  //Tabla Resolucion
  static const String C_puntaje = 'puntaje';
  static const String C_escalaNecesidad = 'escalaNecesidad';
  static const String C_inseguridadAlimenticia = 'inseguridadAlimenticia';
  static const String C_clasificacionPobresa = 'clasificacionPobresa';

//Tabla ResolucionBAL
  static const String C_tipo = 'tipo';
  static const String C_frecuenciaR = 'frecuencia';
  static const String C_duracion = 'duracion';
  static const String C_otorgarApoyo = 'otorgarApoyo';
  static const String C_observaciones= 'observaciones';

  // Tabla fotografia
  static const String C_FileFoto = 'fileFoto';




  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getExternalStorageDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {

    await db.execute("CREATE TABLE $Table_User ( $C_idUsuario INTEGER not null primary key AUTOINCREMENT , $C_NombreUsuario TEXT, $C_Nombre TEXT, $C_ApellidoP TEXT,$C_ApellidoM TEXT,$C_Rol TEXT,$C_Password TEXT);");
    await db.execute("CREATE TABLE $Table_Data ($C_Folio INTEGER not null Primary key AUTOINCREMENT ,$C_FolioDisp TEXT,$C_FechaCaptura TEXT, $C_Calle TEXT, $C_EntreCalles TEXT,$C_ClaveGrupo int, $C_Grupo TEXT,$C_NoExt TEXT,$C_NoInt TEXT,$C_Fecha TEXT,$C_Localidad TEXT,$C_Telefono TEXT,$C_CP TEXT,$C_ClaveEstado TEXT,$C_Estado TEXT, $C_ClaveComunidad int , $C_NombreComunidad TEXT, $C_ClaveMunicipio TEXT,$C_Municipio TEXT,$C_ClaveAsentamiento TEXT,$C_NombreAsentamiento TEXT ,$C_ClaveTipoAsentamiento TEXT, $C_OrdenTipoAsentamiento TEXT, $C_TipoAsentamiento TEXT, $C_ClaveTipoVialidad TEXT, $C_OrdenTipoVialidad TEXT, $C_TipoVialidad TEXT);");
    await db.execute("CREATE TABLE $Table_Servicios ($C_Folio int, $C_FolioDisp TEXT,$C_pk_bano TEXT , $C_int_orden_bano TEXT, $C_txt_desc_bano TEXT, $C_ClaveServAgua TEXT, $C_OrdenServAgua TEXT, $C_ServAgua TEXT, $C_ClaveServGas TEXT, $C_OrdenServGas TEXT, $C_ServGas TEXT, $C_ClaveServLuz TEXT, $C_OrdenServLuz TEXT, $C_ServLuz TEXT, $C_ClaveServSanitario TEXT, $C_OrdenServSanitario TEXT, $C_ServSanitario TEXT);");
    await db.execute("CREATE TABLE $Table_DatosFamiliares ($C_Folio int, $C_FolioDisp TEXT,$C_Nombres TEXT, $C_PrimerApellido TEXT, $C_SegundoApellido TEXT,$C_ClaveSexo TEXT, $C_OrdenSexo TEXT, $C_Sexo TEXT, $C_FechaNacimiento TEXT, $C_ClaveEntidad TEXT, $C_EntidadNacimiento TEXT,$C_ClaveEstadoCivil TEXT ,$C_OrdenEstadoCivil TEXT,$C_EstadoCivil TEXT,$C_ClaveParentesco Text, $C_OrdenParentesco TEXT , $C_Parentesco TEXT, $C_IngresoSemanal int, $C_IngresoMensual int);");
    await db.execute("CREATE TABLE $Table_Escolaridad ($C_Folio int,$C_FolioDisp TEXT, $C_ClaveEscolaridad TEXT, $C_OrdenEscolaridad TEXT, $C_Escolaridad TEXT,$C_ClaveGradoEscolar TEXT,$C_GradoEscolar TEXT,$C_ClaveAsisteEscuela TEXT,$C_OrdenAsisteEscuela TEXT,$C_AsisteEscuela TEXT,$C_ClaveOcupacion TEXT,$C_OrdenOcupacion TEXT,$C_Ocupacion TEXT,$C_ClaveTipoEmpleo TEXT,$C_OrdenTipoEmpleo TEXT,$C_TipoEmpleo TEXT,$C_pk_prestacioneslab TEXT,$C_int_OrdenPrestacionesLab TEXT,$C_txt_desc_prestacioneslab TEXT,$C_ClaveJubilacion TEXT,$C_OrdenJubilacion TEXT,$C_Jubilacion TEXT,$C_ClaveDerechohabiencia TEXT,$C_OrdenDerechohabiencia TEXT,$C_Derechohabiencia TEXT,$C_ClaveMotivoDerechohabiencia TEXT,$C_OrdenMotivoDerechohabiencia TEXT,$C_MotivoDerechohabiencia TEXT);");
    await db.execute("CREATE TABLE $Table_Vivienda ($C_Folio int,$C_FolioDisp TEXT,$C_ClaveTipoVivienda TEXT,$C_OrdenTipoVivienda TEXT,$C_TipoVivienda TEXT,$C_ClaveTipoPiso TEXT,$C_OrdenTipoPiso TEXT,$C_TipoPiso TEXT,$C_ClaveTenencia TEXT,$C_OrdenTenencia TEXT,$C_Tenencia TEXT,$C_ClaveTecho TEXT,$C_OrdenTecho TEXT,$C_Techo TEXT,$C_ClaveTipoMuro TEXT,$C_OrdenTipoMuro TEXT,$C_TipoMuro TEXT);");
    await db.execute("CREATE TABLE $Table_Casa ($C_Folio int,$C_FolioDisp TEXT,$C_numCuartos TEXT ,$C_cuartosDormir TEXT,$C_cocinaSeparada TEXT,$C_cuartoBanioExclusivo TEXT);");
    await db.execute("CREATE TABLE $Table_Equipamiento ($C_Folio int,$C_FolioDisp TEXT,$C_pk_equipamientosRefri TEXT, $C_txt_desc_equipamientosRefri TEXT, $C_tieneRefri TEXT, $C_sirveRefri TEXT, $C_pk_equipamientosEstufa TEXT, $C_txt_desc_equipamientosEstufa TEXT, $C_tieneEstufa TEXT, $C_sirveEstufa TEXT, $C_pk_equipamientosVideoDVDBlueRay TEXT, $C_txt_desc_equipamientosVideoDVDBlueRay TEXT, $C_tieneVideoDVDBlueRay TEXT, $C_sirveVideoDVDBlueRay TEXT, $C_pk_equipamientosLavadora TEXT, $C_txt_desc_equipamientosLavadora TEXT, $C_tieneLavadora TEXT, $C_sirveLavadora TEXT, $C_pk_equipamientosLicuadora TEXT, $C_txt_desc_equipamientosLicuadora TEXT, $C_tieneLicuadora TEXT, $C_sirveLicuadora TEXT, $C_pk_equipamientosTelevision TEXT, $C_txt_desc_equipamientosTelevision TEXT, $C_tieneTelevision TEXT, $C_sirveTelevision TEXT, $C_pk_equipamientosRadio TEXT, $C_txt_desc_equipamientosRadio TEXT, $C_tieneRadio TEXT, $C_sirveRadio TEXT, $C_pk_equipamientosSala TEXT, $C_txt_desc_equipamientosSala TEXT, $C_tieneSala TEXT, $C_sirveSala TEXT, $C_pk_equipamientosComedor TEXT, $C_txt_desc_equipamientosComedor TEXT, $C_tieneComedor TEXT, $C_sirveComedor TEXT, $C_pk_equipamientosAutoMovil TEXT, $C_txt_desc_equipamientosAutoMovil TEXT, $C_tieneAutoMovil TEXT, $C_sirveAutoMovil TEXT, $C_pk_equipamientosCama TEXT, $C_txt_desc_equipamientosCama TEXT, $C_tieneCama TEXT, $C_sirveCama TEXT, $C_pk_equipamientosCelular TEXT, $C_txt_desc_equipamientosCelular TEXT, $C_tieneCelular TEXT, $C_sirveCelular TEXT, $C_pk_equipamientosMotocicleta TEXT, $C_txt_desc_equipamientosMotocicleta TEXT, $C_tieneMotocicleta TEXT, $C_sirveMotocicleta TEXT, $C_pk_equipamientosComputadora TEXT, $C_txt_desc_equipamientosComputadora TEXT, $C_tieneComputadora TEXT, $C_sirveComputadora TEXT, $C_pk_equipamientosHorno TEXT, $C_txt_desc_equipamientosHorno TEXT, $C_tieneHorno TEXT, $C_sirveHorno TEXT, $C_pk_equipamientosTelefono TEXT, $C_txt_desc_equipamientosTelefono TEXT, $C_tieneTelefono TEXT, $C_sirveTelefono TEXT, $C_CondicionesGenerales TEXT );");
    await db.execute("CREATE TABLE $Table_AportacionSemanalM ($C_Folio int,$C_FolioDisp TEXT,$C_padre double,$C_madre double,$C_hijos double,$C_prospera double,$C_adultosMayoresProspera double,$C_becas double,$C_otros double,$C_pension double,$C_totalSemanal double,$C_totalMensual double);");
    await db.execute("CREATE TABLE $Table_EgresoSemanalM ($C_Folio int,$C_FolioDisp TEXT,$C_vivienda double,$C_alimentacion double,$C_luz double,$C_gas double,$C_agua double,$C_telefono double,$C_transporte double,$C_atencionMedica double,$C_otrosGastos double,$C_celular double,$C_educacion double,$C_EtotalSemanal double,$C_EtotalMensual double);");
    await db.execute("CREATE TABLE $Table_ApoyoEspecie ($C_Folio int,$C_FolioDisp TEXT,$C_tipoApoyo TEXT,$C_quienProporciona TEXT,$C_frecuenciaApoyo TEXT);");
    await db.execute("CREATE TABLE $Table_Remesas ($C_Folio int,$C_FolioDisp TEXT, $C_dineroOtrosPaises TEXT,$C_ClaveFrecuencia Text ,$C_OrdenFrecuencia,$C_frecuencia TEXT);");
    await db.execute("CREATE TABLE $Table_Documentos ($C_Folio int ,$C_FolioDisp TEXT,$C_curp TEXT, $C_actaNacimiento TEXT, $C_comprobanteDomicilio TEXT,$C_ine TEXT);");
    await db.execute("CREATE TABLE $Table_Alimentacion ($C_Folio int ,$C_FolioDisp TEXT,$C_pregunta1 TEXT, $C_pregunta2 TEXT, $C_pregunta3 TEXT,$C_pregunta4 TEXT, $C_pregunta5 TEXT, $C_pregunta6 TEXT, $C_pregunta7 TEXT, $C_pregunta8 TEXT, $C_pregunta9 TEXT, $C_pregunta10 TEXT, $C_pregunta11 TEXT, $C_pregunta12 TEXT);");
    await db.execute("CREATE TABLE $Table_Resolucion ($C_Folio int,$C_FolioDisp TEXT,$C_puntaje TEXT, $C_escalaNecesidad TEXT,$C_inseguridadAlimenticia TEXT,$C_clasificacionPobresa TEXT);");
    await db.execute("CREATE TABLE $Table_ResolucionBAL ($C_Folio int,$C_FolioDisp TEXT,$C_tipo TEXT,claveFrecuencia TEXT,ordenFrecuencia TEXT ,$C_frecuenciaR TEXT,claveDuracion TEXT, ordenDuracion TEXT,$C_duracion TEXT, $C_otorgarApoyo TEXT,$C_observaciones TEXT);");
    await db.execute("CREATE TABLE $Table_Fotografia ($C_Folio int , $C_FolioDisp TEXT,$C_FileFoto TEXT);");
    await db.execute("CREATE TABLE $Table_Dispositivo ($C_Dispositivo TEXT);");
    //Tabla de salud_ pertenencia
    await db.execute("CREATE TABLE $Table_Salud ($C_Folio int, $C_FolioDisp TEXT,$C_ClaveCapacidadDiferente TEXT, $C_OrdenCapacidadDiferente TEXT, $C_CapacidadDiferente TEXT, $C_ClaveAdiccion TEXT, $C_OrdenAdiccion TEXT, $C_Adiccion TEXT, $C_peso double, $C_talla double, $C_imc double, $C_ClaveCondicionesSalud TEXT, $C_OrdenCondicionesSalud TEXT, $C_CondicionesSalud TEXT, $C_ClaveClasCondicionesSalud TEXT, $C_OrdenClasCondicionesSalud TEXT, $C_ClasCondicionesSalud TEXT, $C_ponderacion TEXT, $C_fileFoto TEXT, $C_ClaveEtniaIndigena TEXT,$C_OrdenEtniaIndigena TEXT, $C_EtniaIndigena TEXT);");
/*

    //NOMBRE ASENTAMIENTO
    await db.execute("CREATE TABLE Asentamientos (NombreAsentamientos TEXT);");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('1 HEROES DE LEON');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('2 FRACCIONAMIENTO DEL MORAL DOS');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('3 TIERRAS PRIETAS');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('4 JARDINES DE LAS LOMAS DE MEDINA');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('5 PASEO DE LA PRESA');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('6 REAL DE MARICHES');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('7 BALCONES DE JOYA');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('8 SAN IGNACIÓN');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('9 PASO DE LA MESA');");
    await db.execute("INSERT INTO Asentamientos (NombreAsentamientos) VALUES ('10 LOS ANGELES EL PEDERNAL');");

    //Tabla TiposVialidad
    await db.execute("CREATE TABLE TiposVialidad (TipoVialidad TEXT);");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('1 1 AMPLIACION');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('2 2 ANDADOR');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('3 3 AVENIDA');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('4 4 BOULEVARD');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('5 5 CALLE');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('6 6 CALLEJON');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('7 7 CALZADA');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('8 8 CERRADA');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('9 9 CIRCUITO');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('10 10 CIRCUNVALACION');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('11 11 CONTINUACION');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('12 12 CORREDOR');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('13 13 DIAGONAL');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('14 14 EJE VIAL');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('15 15 PASAJE');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('16 16 PEATONAL');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('17 17 PERIFERICO');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('18 18 PRIVADA');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('19 19 PROLONGACION');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('20 20 RETORNO');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('21 21 VIADUCTO');");
    await db.execute("INSERT INTO TiposVialidad (TipoVialidad) VALUES ('22 22 NINGUNO');");

    //Tabla estados
    await db.execute("CREATE TABLE tb_Estados (Estado TEXT);");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('1 1 Aguascalientes');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('2 2 Baja California');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('3 3 Baja California Sur');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('4 4 Campeche');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('5 5 Coahuila De Zaragoza');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('6 6 Colima');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('7 7 Chiapas');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('8 8 Chihuahua');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('9 9 Ciudad de Mexico');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('10 10 Durango');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('11 11 Guanajuato');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('12 12 Guerrero');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('13 13 Hidalgo');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('14 14 Jalisco');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('15 15 México');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('16 16 Michoacán de Ocampo');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('17 17 Morelos');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('18 18 Nayarit');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('19 19 Nuevo Leon');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('20 20 Oaxaca');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('21 21 Puebla');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('22 22 Queretaro');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('23 23 Quintana Roo');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('24 24 San Luis Potosí');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('25 25 Sinaloa');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('26 26 Sonora');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('27 27 Tabasco');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('28 28 Tamaulipas');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('29 29 Tlaxcala');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('30 30 Veracruz De Ignacio De La Llave');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('31 31 Yucatan');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('32 32 Zacatecas');");
    await db.execute("INSERT INTO  tb_Estados (Estado) VALUES ('33 33 Extranjero');");

    //Tabla MUNICIPIOS
    await db.execute("CREATE TABLE tb_Municipios(Municipio TEXT)");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('1 Manuel Doblado');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('2 Ojuelos de Jalisco');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('3 Romita');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('4 Salamanca');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('5 Huejuquilla el Alto');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('6 Ocampo');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('7 Silao de la Victoria');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('8 Huanímaro');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('9 San Miguel de Allende');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('10 San Diego de la Unión');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('11 Pénjamo');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('12 San Felipe');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('13 Tierra Blanca');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('14 Cuerámaro');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('15 Jerécuaro');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('16 Irapuato');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('17 Tepatitlán de Morelos');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('18 San Pedro Tlaquepaque');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('19 Dolores Hidalgo Cuna de la Independencia Nacional');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('20 Lagos de Moreno');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('21 Guanajuato');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('22 León');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('23 Purísima del Rincón');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('24 Doctor Mora');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('25 Unión de San Antonio');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('26 Poncitlán');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('27 Abasolo');");
    await db.execute("INSERT INTO tb_Municipios (Municipio) VALUES ('28 San Francisco del Rincón');");

    //TABLA TIPOS ASENTAMIENTO
    await db.execute("CREATE TABLE TiposAsentamiento (TipoAsentamiento TEXT);");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('1 1 AEREOPUERTO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('2 2 AMPLIACION');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('3 3 BARRIO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('4 4 CANTON');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('5 5 CIUDAD');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('6 6 INDUSTRIAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('7 7 COLONIA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('8 8 CONDOMINIO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('9 9 CONJUNTO HABITACIONAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('10 10 CORREDOR INDUSTRIAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('11 11 COTO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('12 12 CUARTEL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('13 13 EJIDO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('14 14 EX HACIENDA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('15 15 FRACCION');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('16 16 FRACCIONAMIENTO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('17 17 GRANJA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('18 18 HACIENDA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('19 19 INGENIO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('20 20 MANZANA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('21 21 PARAJE');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('22 22 PARQUE INDUSTRIAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('23 23 PRIVADA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('24 24 PROLONGACION');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('25 25 PUEBLO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('26 26 PUERTO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('27 27 RANCHERIA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('28 28 RANCHO');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('29 29 REGION');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('30 30 RESIDENCIAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('31 31 RINCONADA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('32 32 SECCION');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('33 33 SECTOR');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('34 34 SUPERMANZANA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('35 35 UNIDAD');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('36 36 UNIDADES HABITACIONALES');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('37 37 VILLA');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('38 38 ZONA FEDERAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('39 39 ZONA INDUSTRIAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('40 40 ZONA MILITAR');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('41 41 ZONA NAVAL');");
    await db.execute("INSERT INTO TiposAsentamiento (TipoAsentamiento) VALUES('42 42 NINGUNO');");

    //Tabla estados civiles
    await db.execute("CREATE TABLE tb_EstadosCiviles (EstadoCivil TEXT);");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('1 1 Soltero(a)');");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('2 2 Casado(a)');");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('3 3 Divorciado(a)');");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('4 4 Viudo(a)');");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('5 5 Unión libre');");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('6 6 Madre Soltera');");
    await db.execute("INSERT INTO tb_EstadosCiviles (EstadoCivil) VALUES ('7 7 Padre Soltero');");

    //Tabla parentescos
    await db.execute("CREATE TABLE tb_Parentescos (Parentesco TEXT);");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('1 10 Cuñado(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('2 2 Hijo(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('3 3 Nieto(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('4 8 Hermano(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('5 11 Yerno');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('6 0 Titular');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('7 13 Tio(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('8 14 Primo(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('9 4 Bisnieto(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('10 15 Otro');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('11 12 Nuera');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('12 1 Cónyuge');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('13 5 Padre');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('14 9 Sobrino(a)');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('15 6 Madre');");
    await db.execute("INSERT INTO  tb_Parentescos (Parentesco) VALUES ('16 7 Suegro(a)');");

    //Tabla de Escolaridades
    await db.execute("CREATE TABLE tb_Escolaridades (Escolaridad TEXT);");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('1 1 N/A');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('2 2 Analfabeto');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('3 3 Alfabeto');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('4 4 Preescolar');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('5 5 Primaria');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('6 6 Secundaria');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('7 7 Preparatoria');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('8 8 Carrera técnica con primaria completa');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('9 9 Carrera técnica con secundaria completa');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('10 10 Carrera técnica con preparatoria completa');");
    await db.execute("INSERT INTO tb_Escolaridades (Escolaridad) VALUES ('11 11 Licenciatura');");

    //Tabla Grados escolares
    await db.execute("CREATE TABLE tb_GradosEscolares (GradoEscolar TEXT);");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('1 0');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('2 1');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('3 2');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('4 3');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('5 4');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('6 5');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('7 6');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('8 7');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('9 8');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('10 9');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('11 10');");
    await db.execute("INSERT INTO tb_GradosEscolares (GradoEscolar) VALUES ('12 11');");

    //Tabla Derechohabiencia
    await db.execute("CREATE TABLE tb_Derechohabiencias (Derechohabiencia TEXT);");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('1 1 Seguro Popular');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('2 2 IMSS');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('3 3 ISSSTE');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('4 4 Pemex, Defensa o Marina');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('5 5 Clinica u Hospitalidad Privada');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('6 6 A ninguna');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('7 7 Otra');");
    await db.execute("INSERT INTO tb_Derechohabiencias (Derechohabiencia) VALUES ('8 8 N/A');");

    //Tabla MotivoDerechohabiencia
    await db.execute("CREATE TABLE tb_MotivoDerechohabiencias (MotivoDerechohabiencia TEXT);");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('1 1 N/A');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('2 2 Prestación en el trabajo');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('3 3 Jubilación');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('4 4 Invalidez');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('5 5 Algún familiar en el hogar');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('6 6 Muerte del asegurado');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('7 7 Ser estudiante');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('8 8 Contratación propia');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('9 9 Algún familiar de otro hogar');");
    await db.execute("INSERT INTO tb_MotivoDerechohabiencias (MotivoDerechohabiencia) VALUES ('10 10 OtroApoyo del gobierno');");

    //Tabla Ocupaciones
    await db.execute("CREATE TABLE tb_Ocupaciones (Ocupacion TEXT);");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('1 1 N/A');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('2 2 Albañil');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('3 3 Artesano');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('4 4 Ayudante de algún oficio');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('5 5 Ayudante en negocio familiar sin retribución');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('6 6 Ayudante en negocio no familiar sin retribución');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('7 7 Chofer');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('8 8 Ejidatario o Comunero');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('9 9 Empleado del gobierno');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('10 10 Empleado del sector privado');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('11 11 Empleado doméstico');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('12 12 Jornalero agrícola');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('13 13 Miembro de un grupo de productores');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('14 14 Miembro de una cooperativa');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('15 15 Obrero');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('16 16 Patrón de un negocio');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('17 17 Profesionista independiente');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('18 18 Promotor de desarrollo humano');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('19 19 Trabajador por cuenta propia');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('20 20 Vendedor ambulante');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('21 21 Otra ocupación');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('22 22 Desempleado');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('23 23 Pescador');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('24 24 Ama de Casa');");
    await db.execute("INSERT INTO tb_Ocupaciones (Ocupacion) VALUES ('25 25 Estudiante');");
*/
    //Tabla TiposEmpleado
    //await db.execute("CREATE TABLE tb_TipoEmpleos (Orden TEXT, TipoEmpleo TEXT);");
    //await db.execute("INSERT INTO tb_TipoEmpleos (Orden, TipoEmpleo) VALUES ('1', 1 N/A');");
    //await db.execute("INSERT INTO tb_TipoEmpleos (Orden, TipoEmpleo) VALUES ('2', 2 Asalariado');");
    //await db.execute("INSERT INTO tb_TipoEmpleos (Orden, TipoEmpleo) VALUES ('3', 3 Propio con sueldo asignado / independiente con pago');");
    //await db.execute("INSERT INTO tb_TipoEmpleos (Orden, TipoEmpleo) VALUES ('4', 4 Propio sin sueldo asignado / independiente sin pago');");
/*
    //Tabla de Discpacidades
    await db.execute("CREATE TABLE tb_CapacidadesDiferentes (CapacidadDiferente TEXT);");
    await db.execute("INSERT INTO tb_CapacidadesDiferentes (CapacidadDiferente) VALUES ('1 0 N/A');");
    await db.execute("INSERT INTO tb_CapacidadesDiferentes (CapacidadDiferente) VALUES ('2 1 Sensoriales y de Comunicación');");
    await db.execute("INSERT INTO tb_CapacidadesDiferentes (CapacidadDiferente) VALUES ('3 2 Motrices');");
    await db.execute("INSERT INTO tb_CapacidadesDiferentes (CapacidadDiferente) VALUES ('4 3 Aprendizaje y comportamiento');");
    await db.execute("INSERT INTO tb_CapacidadesDiferentes (CapacidadDiferente) VALUES ('5 4 Más de 1 discapacidad');");

    //Tabla de Adicciones
    await db.execute("CREATE TABLE tb_Adicciones (Adiccion TEXT);");
    await db.execute("INSERT INTO tb_Adicciones (Adiccion) VALUES ('1 0 N/A');");
    await db.execute("INSERT INTO tb_Adicciones (Adiccion) VALUES ('2 1 Tabaquismo');");
    await db.execute("INSERT INTO tb_Adicciones (Adiccion) VALUES ('3 2 Alcoholismo');");
    await db.execute("INSERT INTO tb_Adicciones (Adiccion) VALUES ('4 3 Drogadicción');");
    await db.execute("INSERT INTO tb_Adicciones (Adiccion) VALUES ('5 4 Otra');");

    //Tabla de Pueblo Indigena
    await db.execute("CREATE TABLE tb_EtniasIndigenas (EtniaIndigena TEXT);");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('1 0 N/A');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('2 1 Aketeko');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('3 2 Amuzgo');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('4 3 Awaketeko');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('5 4 Apayapaneco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('6 5 Cora');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('7 6 Cucapá');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('8 7 Cuicateco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('9 8 Chatino');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('10 9 Chichimeco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('11 10 Chinanteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('12 11 Chochotelco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('13 12 Chontal Oaxaca');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('14 13 Chontal Tabasco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('15 14 Chuj');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('16 15 Ch''ol');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('17 16 Guarijìo');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('18 17 Huasteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('19 18 Huave');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('20 19 Huichol');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('21 20 Ixcateco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('22 21 Ixil');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('23 22 Jakalteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('24 23 Kaqchikel');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('25 24 Kickapoo');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('26 25 Killiwa');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('27 26 Kumial');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('28 27 Ku''ahl');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('29 28 k''iche''');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('30 29 Lacandón');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('31 30 Mam');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('32 31 Matlatzinaca');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('33 32 Maya');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('34 33 Mayo');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('35 34 Mazahua');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('36 35 Mazateco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('37 36 Mixe');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('38 37 Mixteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('39 38 Náhuatl');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('40 39 Oluteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('41 40 Otomí');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('42 41 Paipal');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('43 42 Pame');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('44 43 Pápago');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('45 44 Pima');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('46 45 Popoloca');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('47 46 Popoluca');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('48 47 Qato''k');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('49 48 Qánjobál');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('50 49 Qéchi''');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('51 50 Sayulteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('52 51 Seri');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('53 52 Tarahumara');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('54 53 Tarasco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('55 54 Teko');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('56 55 Tepehua');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('57 56 Tepehuano Norte');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('58 57 Tepehuano Sur');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('59 58 Texistepequeño');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('60 59 Tojolabal');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('61 60 Totonaco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('62 61 Triqui');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('63 62 Tlahuica');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('64 63 Tlapaneco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('65 64 Tseltal');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('66 65 Tsotsil');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('67 66 Yaqui');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('68 67 Zapoteco');");
    await db.execute("INSERT INTO tb_EtniasIndigenas (EtniaIndigena) VALUES ('69 68 Zoque');");

    //Tabla de tipo de vivienda
    await db.execute("CREATE TABLE tb_TipoVivienda (TipoVivienda TEXT);");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('1 1 Unifamiliar');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('2 2 Dúplex');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('3 3 Compartida');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('4 4 Otra');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('5 5 Independiente');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('6 6 U. habitacional');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('7 7 Vecindad');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('8 8 Anexo a casa	');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('9 9 Vivienda móvil');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('10 10 Refugio');");
    await db.execute("INSERT INTO tb_TipoVivienda (TipoVivienda) VALUES ('11 11 N/A');");

    //Tabla de tipo de piso
    await db.execute("CREATE TABLE tb_TipoPisos (TipoPiso TEXT);");
    await db.execute("INSERT INTO tb_TipoPisos (TipoPiso) VALUES ('1 1 Madera, duela');");
    await db.execute("INSERT INTO tb_TipoPisos (TipoPiso) VALUES ('2 2 Mosaico, vinil');");
    await db.execute("INSERT INTO tb_TipoPisos (TipoPiso) VALUES ('3 3 Cemento o firme');");
    await db.execute("INSERT INTO tb_TipoPisos (TipoPiso) VALUES ('4 4 Tierra');");
    await db.execute("INSERT INTO tb_TipoPisos (TipoPiso) VALUES ('5 5 Otro');");

    //Tabla de tipo de tenencia
    await db.execute("CREATE TABLE tb_Tenencias (Tenencia TEXT);");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('1 1 Propia');");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('2 2 Rentada');");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('3 3 Pagándose');");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('4 4 Prestada');");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('5 5 Asentamiento irregular');");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('6 6 Otro');");
    await db.execute("INSERT INTO tb_Tenencias (Tenencia) VALUES ('7 7 N/A');");

    //Tabla de tipo de techo
    await db.execute("CREATE TABLE tb_Techos (Techo TEXT);");
    await db.execute("INSERT INTO tb_Techos (Techo) VALUES ('1 1 Concreto, losa o viguetas');");
    await db.execute("INSERT INTO tb_Techos (Techo) VALUES ('2 2 Lámina de cartón');");
    await db.execute("INSERT INTO tb_Techos (Techo) VALUES ('3 3 Lámina asbesto, metálica');");
    await db.execute("INSERT INTO tb_Techos (Techo) VALUES ('4 4 Madera, teja');");
    await db.execute("INSERT INTO tb_Techos (Techo) VALUES ('5 5 Paja o palma');");
    await db.execute("INSERT INTO tb_Techos (Techo) VALUES ('6 6 Otros');");

    //Tabla de tipo de muro
    await db.execute("CREATE TABLE tb_TiposMuro (TipoMuro TEXT);");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('1 1 MADERA');");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('2 2 ADOBE');");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('3 3 LADRILLO, TABIQUE');");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('4 4 LAMINA METALICA, ASBESTO');");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('5 5 DESHECHOS, CARTON');");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('6 6 CARRIZO, BAMBU');");
    await db.execute("INSERT INTO tb_TiposMuro (TipoMuro) VALUES ('7 7 OTROS');");

    // Inserts de Comunidades
    await db.execute("CREATE TABLE tb_Comunidades(pk_Comunidad int NOT NULL,Comunidad nvarchar(255) NULL);");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (1, 'LA LADERA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (2, 'CUEVAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (3, 'EL MOLINO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (4, 'NUEVO JESUS DEL MONTE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (5, 'LOMA ALTA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (6, 'JEREZ DEL DORADO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (7, 'PLAN LIBERTADOR');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (8, 'LA SANDIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (9, 'Hacienda los Otates');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (10, 'SAN JOSE DE MONTES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (11, 'EL PENITENTE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (12, 'RANCHO SECO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (13, 'SANTA ANA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (14, 'RODRÌGUEZ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (15, 'El Aro');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (16, 'VOLUNTARIADO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (17, 'CAPULIN DE LA CUESTA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (18, 'BELÉN DE GAVIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (19, 'DESARROLLO EL POTRERO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (20, 'ALBARRADONES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (21, 'SANTA CLARA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (22, 'PUERTO ALTO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (23, 'AGUAS BUENAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (24, 'CARRIZO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (25, 'Rinconada de Ibarrilla');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (26, 'PURISIMA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (27, 'RIVERA DE LA PRESA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (28, 'La Noria');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (29, 'NUEVA SAN NICOLÁS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (30, 'PARROQUIA DE OCOTLA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (31, 'LOMAS DE MEDINA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (32, 'LA SARTENEJA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (33, 'ARPEROS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (34, 'SAN JUAN BOSCO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (35, 'COLONIAS NUEVO MEXICO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (36, 'PUERTA DE SAN GERMA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (37, 'VILLAS DE LEO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (38, 'VILLAS DE LA LUZ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (39, 'SAUCES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (40, 'CAYETANA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (41, 'LA ESCONDIDA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (42, 'GUADALUPE DE JALPA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (43, 'SAN ISIDRO LABRADOR II');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (44, 'EL PEDERNAL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (45, 'MONTE DE HOYOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (46, 'RANCHITO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (47, 'Lomas de las Teresas');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (48, 'MANZANALES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (49, 'SANTA ROSA DE LIMA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (50, 'OCAMPO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (51, 'URBI');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (52, 'Ipala');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (53, 'Loma Dorada');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (54, 'SAN JORGE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (55, 'LOMAS DE ECHEVESTE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (56, 'OJOS DE RANA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (57, 'LAS AMÉRICAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (58, 'Los Romeros');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (59, 'ARBOLEDAS DE SEÑORA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (60, 'ANAYA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (61, 'El Mármol');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (62, 'HACIENDA ARRIBA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (63, 'San Tadeo');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (64, 'LOS PINOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (65, 'SAN CRISTOBAL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (66, 'COLORADITAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (67, 'Arboledas de San José');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (68, 'LOZA DE LOS PADRES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (69, 'VALLE DEL REAL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (70, 'El Mezquitillo');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (71, 'SITIO MARAVILLAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (72, 'ESTACIO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (73, 'SALTO DEL AHOGADO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (74, 'LA PATIÑA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (75, 'EL JAGUEY');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (76, 'El Carme');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (77, 'EL COLORADO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (78, 'San José de la presa');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (79, 'NACIMIENTO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (80, 'CAÑADA DE SOTOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (81, 'OJUELOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (82, 'SAN ISIDRO OJO DE AGUA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (83, 'BRISAS DEL CAMPESTRE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (84, 'SANTA BARBARA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (85, 'Vista Hermosa');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (86, 'LA QUEMADA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (87, 'PUERTA DE SAN JUA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (88, 'SAN RAFAEL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (89, 'LA TRINIDAD');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (90, 'CUERAMARO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (91, 'SAN ANDRÉS DEL CUBO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (92, 'PASEOS DEL MOLINO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (93, 'PRESITA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (94, 'LA RAZA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (95, 'PARROQUIA SAN JUAN DIE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (96, 'NUEVO AMANECER');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (97, 'SAN NICOLAS III');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (98, 'Monte Grande');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (99, 'LOMAS DEL MIRADOR');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (100, 'CANTERA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (101, 'Loma De Los Sauces');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (102, 'BARRETOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (103, 'LOMAS DE LA TRINIDAD');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (104, 'LAS TROJES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (105, 'LOS LOPEZ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (106, 'SAN FELIPE DE JESÚS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (107, 'SAN PABLO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (108, 'COECILLO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (109, 'EL NOVILLO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (110, 'LA CARMONA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (111, 'SAN JOSE DEL TORREO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (112, 'SAN JUAN DE ABAJO.');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (113, 'PASEO DE LAS TORRES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (114, 'BRISAS DEL VERGEL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (115, 'ESPERANZA DE ALFARO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (116, 'LÁZARO CÁRDENAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (117, 'VILLAS DE SANTA JULIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (118, 'ERMITA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (119, 'LA CEJA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (120, 'LOMAS DE GUADALUPE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (121, 'SAN JOSE DE LOS SAPOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (122, 'LA SARDINA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (123, 'SAN JOSE DE RIVERA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (124, 'BRISAS DE SAN FRANCISCO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (125, 'TEPETATE DEL GALLO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (126, 'Observatorio I');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (127, 'PRADERA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (128, 'GUADALUPE VICTORIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (129, 'Emiliano Zapata');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (130, 'POTRERO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (131, '20 DE NOVIEMBRE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (132, 'SANTA REGINA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (133, 'GUANAJAL (POTRERILLOS)');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (134, 'MARIANO LEAL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (135, 'EL COPETE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (136, 'GRANJAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (137, 'Industrial');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (138, 'SAN CARLOS LA RONCHA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (139, 'LOS RAMÍREZ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (140, 'SAN ANTONIO DE LAS GARZAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (141, 'PARQUES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (142, 'VALLE HERMOSO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (143, 'LA CAMPIÑA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (144, 'CAMALEÓ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (145, 'SAN MARTI');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (146, 'Los Hernández');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (147, 'SANTO DOMIN');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (148, 'LA ARCINA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (149, 'SOPEÑA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (150, 'PUERTA DE LA RESERVA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (151, 'EL TOMATE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (152, 'NAPOLES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (153, 'SAUCILLO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (154, 'SAN JOSE DEL PARAISO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (155, 'TINAJA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (156, 'BALCONES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (157, 'PILETAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (158, 'LA TAPONA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (159, 'REAL DEL CASTILLO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (160, 'LA CINTA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (161, 'LA PALMA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (162, 'SAN JOSE DEL CALICHE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (163, 'REFUGIO DE LOS SAUCES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (164, 'JACALES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (165, 'VALLE DE SAN JOSÉ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (166, 'FAMILIAS SUELTAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (167, 'AZTECA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (168, 'JOYAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (169, 'LA GAVIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (170, 'LA LABORCITA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (171, 'LOS NICOLASES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (172, 'SAN JUDAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (173, 'CUMBRES DE LA GLORIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (174, 'HACIENDA SAN JOSÉ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (175, 'PLAN DE AYALA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (176, 'El Capricho');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (177, 'TIERRAS BLANCAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (178, 'LOS BARCOS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (179, 'SANTA CRUZ MARAVILLAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (180, 'SAN JUAN DE OTATES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (181, 'SAN JOSE DEL POTRERO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (182, 'LA ALDEA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (183, 'SAN PEDRO DEL MONTE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (184, 'SAN ROQUE DE MONTES');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (185, 'León I');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (186, 'COLINAS DEL CARME');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (187, 'ARANJUEZ');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (188, 'PRESIDENTES DE MEXICO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (189, 'AMPLIACION MEDINA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (190, 'EL PANAL');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (191, 'SAN IGNACIO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (192, 'LOMA DE FRIAS');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (193, 'LA ESTANCIA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (194, 'SANTA FE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (195, 'SAN JOSE DEL TANQUE');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (196, 'NUEVO LINDERO');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (197, 'SAN JOSE DE IBARRA');");
    await db.execute("INSERT INTO tb_Comunidades (pk_Comunidad, Comunidad) VALUES (198, 'SAN ISIDRO DE JEREZ');");

    // Inserts de Grupos
    await db.execute("CREATE TABLE tb_Grupos(ClaveGrupo int NOT NULL,Grupo nvarchar(255) NULL);");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (1, 'La Ladera');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (2, 'CUEVAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (3, 'EL MOLINO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (4, 'NUEVO JESUS DEL MONTE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (5, 'Loma Alta');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (6, 'JEREZ DEL DORADO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (7, 'Plan Libertador');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (8, 'LA SANDIA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (9, 'Hacienda los Otates');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (10, 'SAN JOSE DE MONTES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (11, 'El Penitente');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (12, 'Rancho Seco');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (13, 'Rodrìguez');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (14, 'El Aro');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (15, 'Voluntariado');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (16, 'CAPULIN DE LA CUESTA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (17, 'Belén de Gavia');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (18, 'Desarrollo el Potrero');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (19, 'Albarradones');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (20, 'SANTA CLARA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (21, 'Puerto Alto');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (22, 'AGUAS BUENAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (23, 'Carrizo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (24, 'Rinconada de Ibarrilla');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (25, 'Purisima');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (26, 'Rivera de la Presa');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (27, 'La Noria');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (28, 'Nueva San Nicolás');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (29, 'Parroquia de Ocotla');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (30, 'Lomas de Medina');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (31, 'La Sarteneja');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (32, 'Arperos');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (33, 'SAN JUAN BOSCO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (34, 'Colonias Nuevo Mexico');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (35, 'PUERTA DE SAN GERMA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (36, 'Villas de Leo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (37, 'Villas de la Luz');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (38, 'SANTA ANA DEL CONDE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (39, 'Sauces');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (40, 'Cayetana');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (41, 'La Escondida');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (42, 'GUADALUPE DE JALPA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (43, 'San Isidro Labrador II');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (44, 'El Pedernal');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (45, 'Monte de hoyos');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (46, 'Ranchito');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (47, 'Lomas de las Tresas');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (48, 'MANZANALES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (49, 'Santa Rosa de Lima');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (50, 'Ocampo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (51, 'Urbi');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (52, 'Ipala');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (53, 'Loma Dorada');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (54, 'San Jorge');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (55, 'LOMAS DE ECHEVESTE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (56, 'OJOS DE RANA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (57, 'Las Américas');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (58, 'Los Romeros');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (59, 'Arboledas de Señora');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (60, 'Anaya');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (61, 'El Mármol');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (62, 'HACIENDA ARRIBA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (63, 'San Tadeo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (64, 'LOS PINOS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (65, 'SAN CRISTOBAL');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (66, 'Coloraditas');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (67, 'Arboledas de San José');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (68, 'LOZA DE LOS PADRES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (69, 'Valle del Real');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (70, 'El Mezquitillo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (71, 'SITIO MARAVILLAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (72, 'ESTACIO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (73, 'SALTO DEL AHOGADO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (74, 'LA PATIÑA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (75, 'El Jaguey');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (76, 'El Carme');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (77, 'EL COLORADO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (78, 'San José de la presa');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (79, 'Nacimiento');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (80, 'CAÑADA DE SOTOS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (81, 'OJUELOS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (82, 'SAN ISIDRO OJO DE AGUA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (83, 'Brisas del Campestre');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (84, 'SANTA BARBARA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (85, 'Vista Hermosa');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (86, 'LA QUEMADA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (87, 'PUERTA DE SAN JUA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (88, 'SAN RAFAEL');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (89, 'LA TRINIDAD');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (90, 'CUERAMARO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (91, 'San Andrés del Cubo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (92, 'Paseos del Molino');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (93, 'Presita');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (94, 'La Raza');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (95, 'PARROQUIA SAN JUAN DIE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (96, 'NUEVO AMANECER');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (97, 'SAN NICOLAS III');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (98, 'Monte Grande');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (99, 'LOMAS DEL MIRADOR');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (100, 'CANTERA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (101, 'Loma De Los Sauces');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (102, 'Barretos');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (103, 'LOMAS DE LA TRINIDAD');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (104, 'Las Trojes');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (105, 'LOS LOPEZ');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (106, 'SAN FELIPE DE JESÚS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (107, 'San Pablo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (108, 'COECILLO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (109, 'El Novillo');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (110, 'La Carmona');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (111, 'SAN JOSE DEL TORREO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (112, 'San Juan de Abajo.');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (113, 'PASEO DE LAS TORRES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (114, 'BRISAS DEL VERGEL');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (115, 'ESPERANZA DE ALFARO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (116, 'Lázaro Cárdenas');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (117, 'VILLAS DE SANTA JULIA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (118, 'ermita');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (119, 'LA CEJA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (120, 'LOMAS DE GUADALUPE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (121, 'SAN JOSE DE LOS SAPOS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (122, 'La Sardina');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (123, 'SAN JOSE DE RIVERA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (124, 'BRISAS DE SAN FRANCISCO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (125, 'TEPETATE DEL GALLO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (126, 'Observatorio I');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (127, 'PRADERA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (128, 'GUADALUPE VICTORIA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (129, 'Emiliano Zapata');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (130, 'POTRERO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (131, '20 de Noviembre');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (132, 'SANTA REGINA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (133, 'GUANAJAL (POTRERILLOS)');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (134, 'Mariano Leal');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (135, 'El Copete');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (136, 'GRANJAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (137, 'Industrial');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (138, 'SAN CARLOS LA RONCHA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (139, 'LOS RAMÍREZ');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (140, 'SAN ANTONIO DE LAS GARZAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (141, 'Parques');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (142, 'Valle Hermoso');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (143, 'La Campiña');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (144, 'Camaleó');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (145, 'San Marti');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (146, 'Los Hernández');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (147, 'Santo Domin');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (148, 'La Arcina');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (149, 'SOPEÑA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (150, 'PUERTA DE LA RESERVA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (151, 'EL TOMATE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (152, 'Napoles');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (153, 'SAUCILLO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (154, 'SAN JOSE DEL PARAISO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (155, 'TINAJA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (156, 'Balcones');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (157, 'PILETAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (158, 'La Tapona');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (159, 'REAL DEL CASTILLO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (160, 'La Cinta');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (161, 'LA PALMA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (162, 'SAN JOSE DEL CALICHE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (163, 'Refugio de los Sauces');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (164, 'JACALES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (165, 'Valle de San José');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (166, 'Familias Sueltas');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (167, 'Azteca');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (168, 'JOYAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (169, 'LA GAVIA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (170, 'LA LABORCITA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (171, 'SAN JUDAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (172, 'Cumbres de la Gloria');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (173, 'HACIENDA SAN JOSÉ');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (174, 'LOS NICOLESES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (175, 'Plan de Ayala');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (176, 'El Capricho');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (177, 'TIERRAS BLANCAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (178, 'Los Barcos');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (179, 'SANTA CRUZ MARAVILLAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (180, 'SAN JUAN DE OTATES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (181, 'SAN JOSE DEL POTRERO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (182, '1');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (183, 'La Aldea');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (184, 'San Pedro del Monte');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (185, 'SAN ROQUE DE MONTES');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (186, 'León I');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (187, 'COLINAS DEL CARME');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (188, 'ARANJUEZ');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (189, 'PRESIDENTES DE MEXICO');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (190, 'AMPLIACION MEDINA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (191, 'El Panal');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (192, 'San Ignacio');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (193, 'LOMA DE FRIAS');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (194, 'LA ESTANCIA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (195, 'SANTA FE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (196, 'SAN JOSE DEL TANQUE');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (197, 'Nuevo Lindero');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (198, 'SAN JOSE DE IBARRA');");
    await db.execute("INSERT INTO tb_Grupos (ClaveGrupo, Grupo) VALUES (199, 'SAN ISIDRO DE JEREZ');");

    //Tabla de Condiciones de salud
    await db.execute("create table tb_CondicionesSalud(CondicionesSalud nvarchar(50) not null);");
    await db.execute("insert into  tb_CondicionesSalud values ('1 1 AFECTACIÓN CEREBRAL 2');");
    await db.execute("insert into  tb_CondicionesSalud values ('2 2 ALZHEIMER /  DEMENCIA 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('3 3 ARTRITIS / FIBROMIALGIA 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('4 4 ASPERGER 3');");
    await db.execute("insert into  tb_CondicionesSalud values ('5 5 AUTISMO 3');");
    await db.execute("insert into  tb_CondicionesSalud values ('6 6 CÁNCER 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('7 7 CIEGO 2');");
    await db.execute("insert into  tb_CondicionesSalud values ('8 8 DEPRESIÓN 4');");
    await db.execute("insert into  tb_CondicionesSalud values ('9 9 DIABETES 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('10 10 DISCAPACIDAD AUDITIVA 2');");
    await db.execute("insert into  tb_CondicionesSalud values ('11 11 DISCAPACIDAD VISUAL 2');");
    await db.execute("insert into  tb_CondicionesSalud values ('12 12 DISCAPACIDAD VOCAL 2');");
    await db.execute("insert into  tb_CondicionesSalud values ('13 13 DOWN 3');");
    await db.execute("insert into  tb_CondicionesSalud values ('14 14 EPILEPSIA 4');");
    await db.execute("insert into  tb_CondicionesSalud values ('15 15 EPOC 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('16 16 ESQUIZOFRENIA 4');");
    await db.execute("insert into  tb_CondicionesSalud values ('17 17 FALTA DE MÁS DE UN MIEMBRO 2');");
    await db.execute("insert into  tb_CondicionesSalud values ('18 18 HTA (HIPERTENSIÓN) 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('19 19 LEUCEMIA 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('20 20 LUPUS / PÚRPURA 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('21 21 OBESIDAD 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('22 22 SIDA 1');");
    await db.execute("insert into  tb_CondicionesSalud values ('23 23 TURNER 3');");
    await db.execute("insert into  tb_CondicionesSalud values ('24 24 OTRAS 0');");


    //Tabla de clasificacion
    await db.execute("create table tb_ClasCondicionesSalud(ClasCondicionesSalud nvarchar(50) not null);");
    await db.execute("insert into  tb_ClasCondicionesSalud (ClasCondicionesSalud) values ('1 1 CRÓNICO DEGENERATIVA');");
    await db.execute("insert into  tb_ClasCondicionesSalud (ClasCondicionesSalud) values ('2 2 DISCAPACIDAD');");
    await db.execute("insert into  tb_ClasCondicionesSalud (ClasCondicionesSalud) values ('3 3 TRASTORNO');");
    await db.execute("insert into  tb_ClasCondicionesSalud (ClasCondicionesSalud) values ('4 4 SINDROME');");
    await db.execute("insert into  tb_ClasCondicionesSalud (ClasCondicionesSalud) values ('0 99 OTRAS');");

    //Tabla de frecuencia
    await db.execute("CREATE TABLE tb_Frecuencias(ClaveFrecuencia int NOT NULL,OrdenFrecuencia int NOT NULL,Frecuencia nvarchar(15) NULL);");
    await db.execute("INSERT INTO tb_Frecuencias (ClaveFrecuencia, OrdenFrecuencia, Frecuencia) VALUES (1, 1, 'Diario');");
    await db.execute("INSERT INTO tb_Frecuencias (ClaveFrecuencia, OrdenFrecuencia, Frecuencia) VALUES (2, 2, 'Semanal');");
    await db.execute("INSERT INTO tb_Frecuencias (ClaveFrecuencia, OrdenFrecuencia, Frecuencia) VALUES (3, 3, 'Quincenal');");
    await db.execute("INSERT INTO tb_Frecuencias (ClaveFrecuencia, OrdenFrecuencia, Frecuencia) VALUES (4, 4, 'Mensual');");
    await db.execute("INSERT INTO tb_Frecuencias (ClaveFrecuencia, OrdenFrecuencia, Frecuencia) VALUES (5, 5, 'Anual');");
    await db.execute("INSERT INTO tb_Frecuencias (ClaveFrecuencia, OrdenFrecuencia, Frecuencia) VALUES (6, 6, 'Ninguno');");

    //Tabla Duraciones
    await db.execute("CREATE TABLE tb_Duraciones(ClaveDuracion int NOT NULL,OrdenDuracion int not null,Duracion nvarchar(10) not NULL);");
    await db.execute("insert into tb_Duraciones  values (1,1,'1 Mes');");
    await db.execute("insert into tb_Duraciones  values (2,2,'2 Mes');");
    await db.execute("insert into tb_Duraciones  values (3,3,'3 Mes');");
    await db.execute("insert into tb_Duraciones  values (4,4,'4 Mes');");
    await db.execute("insert into tb_Duraciones  values (5,5,'5 Mes');");
    await db.execute("insert into tb_Duraciones  values (6,6,'6 Mes');");
    await db.execute("insert into tb_Duraciones  values (7,7,'7 Mes');");
    await db.execute("insert into tb_Duraciones  values (8,8,'8 Mes');");
    await db.execute("insert into tb_Duraciones  values (9,9,'9 Mes');");
    await db.execute("insert into tb_Duraciones  values (10,10,'10 Mes');");
    await db.execute("insert into tb_Duraciones  values (11,11,'11 Mes');");
    await db.execute("insert into tb_Duraciones  values (12,12,'12 Mes');");
*/

    //Tabla cp
    await db.execute("CREATE TABLE tb_CPs (ClaveCP INTEGER, Asentamiento TEXT,TipoAsentamiento TEXT, Municipio TEXT, Estado TEXT, Ciudad TEXT, ClaveEstado INTEGER, Clavetipo_asenta INTEGER , ClaveMunicipio INTEGER, TipoZona TEXT, ClaveCiudad INTEGER);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP,Asentamiento,TipoAsentamiento,Municipio,Estado,Ciudad,ClaveEstado,Clavetipo_asenta,ClaveMunicipio,TipoZona,ClaveCiudad) VALUES (36000,'Guanajuato Centro','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36003,'Alameda','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36010,'Cata','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36010,'Garrapata','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36010,'Mellado','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36013,'Cerro de San Antonio','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36013,'La Gualdra','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36013,'San Luisito','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36014,'Ex-Hacienda de Durán','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");
    await db.execute("INSERT INTO tb_CPs (ClaveCP, Asentamiento, TipoAsentamiento, Municipio, Estado, Ciudad, ClaveEstado, Clavetipo_asenta, ClaveMunicipio, TipoZona, ClaveCiudad) VALUES (36014,'Ex-Hacienda de Luna','Colonia','Guanajuato','Guanajuato','Guanajuato', 11 , 9 , 15 ,'Urbano', 5);");

  }


  readData(table) async {
    var connection = await db;
    return await connection.query(table);
  }

  readCp() async {
    var connection = await db;
    return await connection.rawQuery("SELECT DISTINCT ClaveCP FROM tb_CPs");
  }

  readOrdenTipoAsenta(String Asienta) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM TiposAsentamiento where tipoAsentamiento like '${Asienta}'");
  }

  readOrdenTipoVialidad(String Vialidad) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM TiposVialidad where TipoVialidad like '${Vialidad}'");
  }

  readParentesco() async {
    var connection = await db;
    return await connection.rawQuery("SELECT Parentesco FROM tb_Parentescos ORDER BY Orden");
  }

  readOrdenEstado(String Estado) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_Estados where Estado like '${Estado}'");
  }

  readOrdenEstadosCivil(String Civil) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_EstadosCiviles where EstadoCivil like '${Civil}'");
  }

  readOrdenParentesco(String Parentesco) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_Parentescos where Parentesco like '${Parentesco}'");
  }

  //

  readOrdenEscolaridad(String escolar) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_Escolaridades where Escolaridad like '${escolar}'");
  }

  readOrdenGrado(String grado) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_GradosEscolares where GradoEscolar like '${grado}'");
  }

  readOrdenOcupacion(String ocupacion) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_Ocupaciones where Ocupacion like '${ocupacion}'");
  }

  readOrdenTipoEmpleo(String tipoEmple) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_TipoEmpleos where TipoEmpleo like '${tipoEmple}'");
  }

  readOrdenDerechoA(String derecho) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_Derechohabiencias where Derechohabiencia like '${derecho}'");
  }

  readOrdenMotivoDerecho(String motivoDere) async {
    var connection = await db;
    return await connection.rawQuery("SELECT Orden  FROM tb_MotivoDerechohabiencias where MotivoDerechohabiencia like '${motivoDere}'");
  }

  readFolio(table) async {
    var connection = await db;
    return await connection.query(table, where: "folio = (select max(folio) from datosGenerales)");
  }

  readDatosGeenerales(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio}");
  }

  readServicioBanio(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio}");
  }

  readEstructura1(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) from estructuraFailiar where folio = ${folio})");
  }

  readEstructura2(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 1 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura3(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 2 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura4(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 3 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura5(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 4 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura6(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 5 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura7(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 6 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura8(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 7 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura9(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 8 from estructuraFailiar where folio = ${folio})");
  }

  readEstructura10(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 9 from estructuraFailiar where folio = ${folio})");
  }

  readEscolaridad1(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad2(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 1 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad3(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 2 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad4(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 3 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad5(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 4 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad6(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 5 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad7(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 6 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad8(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 7 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad9(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 8 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readEscolaridad10(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 9 from escolaridadSeguridadSocial where folio = ${folio})");
  }

  readCodigoPostal(table, CodigoPostalModel codigoPostalModel) async {
    var connection = await db;
    return await connection.query(table, where: "ClaveCP = ${codigoPostalModel.ClaveCP} ");
  }

  readGrupo(table, ComunidadesModel comunidadesModel) async {
    var connection = await db;
    return await connection.query(table, where: "Grupo like '${comunidadesModel.Comunidad}' ");
  }

  readEquipamiento(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readAportaciones(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readEgresos(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readApoyoEspecie(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readRemesas(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readDocumentos(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readAlimentacion(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readResolucion(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readResolucionBal(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readCasa(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  readEstadoCasa(table, folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = '${folio}' ");
  }

  Future<int> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_User, user.toMap());
    return res;
  }

  Future<int> saveDatosGenerales( DatosGeneralesModel datosGenerales)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Data, datosGenerales.toMap());
    return res;
  }

  Future<int> saveEscolaridadSocial( EscolaridadSeguridadSocial escolaridadSeguridadSocial)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Escolaridad, escolaridadSeguridadSocial.toMap());
    return res;
  }

  Future<int> saveVivienda( EstadoCasaConstruccionModel estadoCasaConstruccionModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Vivienda, estadoCasaConstruccionModel.toMap());
    return res;
  }

  Future<int> saveCasa( CaracteristicasCasa caracteristicasCasa)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Casa, caracteristicasCasa.toMap());
    return res;
  }

  Future<int> saveSalud(Salud_PertenenciaIndigenenaTablaModel indigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.insert(Table_Salud, indigenenaTablaModel.toMap());
    return res;
  }

  Future<int> saveEquipamiento( EquipamientoMovil equipamientoMovil)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Equipamiento, equipamientoMovil.toMap());
    return res;
  }

  Future<int> saveApoyoSemanal( AportacionSemanal aportacionSemanal)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_AportacionSemanalM, aportacionSemanal.toMap());
    return res;
  }

  Future<int> saveEgresoSemanal( EgresoSemanal egresoSemanal)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_EgresoSemanalM, egresoSemanal.toMap());
    return res;
  }

  Future<int> saveApoyoEnEspecie( ApoyoEnEspecieModel apoyosEnEspecie)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_ApoyoEspecie, apoyosEnEspecie.toMap());
    return res;
  }

  Future<int> saveRemesas( RemesasModel remesasModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Remesas, remesasModel.toMap());
    return res;
  }

  Future<int> saveDocumentos( DocumentosModel documentosModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Documentos, documentosModel.toMap());
    return res;
  }

  Future<int> saveAlimentacion( AlimentacionModel alimentacionModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Alimentacion, alimentacionModel.toMap());
    return res;
  }

  Future<int> saveResolucion( ResolucionModel resolucionModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Resolucion, resolucionModel.toMap());
    return res;
  }

  Future<int> saveResolucionBAL( ResolucionBALModel resolucionBALModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_ResolucionBAL, resolucionBALModel.toMap());
    return res;
  }
///////////////////////////////////////////////////////////////////////////////////
  Future<int> saveDispo(DispoModel dispoModel) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Dispositivo, dispoModel.toMap());
    return res;
  }

  readDispo(table) async {
    var connection = await db;
    return await connection.query(table);
  }
  /////////////////////////////////////


  Future<UserModel> getLoginUser(String userId, String password) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_User WHERE "
        "$C_NombreUsuario= '$userId' AND "
        "$C_Password = '$password'");

    if (res.length > 0) {
      return UserModel.fromMap(res.first);
    }

    return null;
  }


  Future<int> saveBanio(Banio banio) async{
    var dbClient = await db;
    var res = await dbClient.insert(Table_Servicios, banio.toMap());
    return res;
  }

  Future<int> saveBano(Banio banio) async{
    var dbClient = await db;
    var res = await dbClient.insert(Table_Servicios, banio.toMap());
    return res;
  }

  Future<int> upDateBanio(Banio banio) async{
    var dbClient = await db;
    var res = await dbClient.insert(Table_Servicios, banio.toMap());
    return res;
  }

  Future<int> upDateLuz(Luz luz) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Servicios, luz.toMap(),where: "folio = ${luz.folio}");
    return res;
  }

  Future<int> upDateAgua(Agua agua) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Servicios, agua.toMap(),where: "folio = ${agua.folio}");
    return res;
  }

  Future<int> upDateGas(Gas gas) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Servicios, gas.toMap(),where: "folio = ${gas.folio}");
    return res;
  }

  Future<int> upDateDrenaje(Drenaje drenaje) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Servicios, drenaje.toMap(),where: "folio = ${drenaje.folio}");
    return res;
  }

  Future<int> upDateDatosGenerales(DatosGeneralesModel datosGeneralesModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Data, datosGeneralesModel.toMap(),where: "folio = ${datosGeneralesModel.folio}");
    return res;
  }

  Future<int> upDateEstructuraFamiliar1(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar2(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 1 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar3(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 2 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar4(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 3 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar5(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 4 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar6(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 5 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar7(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 6 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar8(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 7 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar9(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 8 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEstructuraFamiliar10(EstructuraFamilarModel estructuraFamilarModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_DatosFamiliares, estructuraFamilarModel.toMap(),where: "folio = ${estructuraFamilarModel.folio} and ROWID = (select min(ROWID) + 9 from estructuraFailiar where folio = ${estructuraFamilarModel.folio})");
    return res;
  }

  Future<int> upDateEscolaridad1(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad2(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 1 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad3(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 2 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad4(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 3 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad5(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 4 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad6(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 5 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad7(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 6 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad8(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 7 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad9(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 8 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEscolaridad10(EscolaridadSeguridadSocial escolaridadSeguridadSocial) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Escolaridad, escolaridadSeguridadSocial.toMap(),where: "folio = ${escolaridadSeguridadSocial.folio} and ROWID = (select min(ROWID) + 9 from escolaridadSeguridadSocial where folio = ${escolaridadSeguridadSocial.folio})");
    return res;
  }

  Future<int> upDateEquipamiento(EquipamientoMovil equipamientoMovil) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Equipamiento, equipamientoMovil.toMap(),where: "folio = ${equipamientoMovil.folio} ");
    return res;
  }

  Future<int> upDateApoyo(AportacionSemanal aportacionSemanal) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_AportacionSemanalM, aportacionSemanal.toMap(),where: "folio = ${aportacionSemanal.folio}");
    return res;
  }

  Future<int> upDateEgreso(EgresoSemanal egresoSemanal) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_EgresoSemanalM, egresoSemanal.toMap(),where: "folio = ${egresoSemanal.folio} ");
    return res;
  }

  Future<int> upDateApoyoEspecie(ApoyoEnEspecieModel apoyoEnEspecieModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_ApoyoEspecie, apoyoEnEspecieModel.toMap(),where: "folio = ${apoyoEnEspecieModel.folio} ");
    return res;
  }

  Future<int> upDateRemesas(RemesasModel remesasModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Remesas, remesasModel.toMap(),where: "folio = ${remesasModel.folio} ");
    return res;
  }

  Future<int> upDateDocumentos(DocumentosModel documentosModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Documentos, documentosModel.toMap(),where: "folio = ${documentosModel.folio} ");
    return res;
  }

  Future<int> upDateAlimentacion(AlimentacionModel alimentacionModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Alimentacion, alimentacionModel.toMap(),where: "folio = ${alimentacionModel.folio} ");
    return res;
  }

  Future<int> upDateResolucion(ResolucionModel resolucionModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Resolucion, resolucionModel.toMap(),where: "folio = ${resolucionModel.folio} ");
    return res;
  }

  Future<int> upDateResolucionBAL(ResolucionBALModel resolucionBALModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_ResolucionBAL, resolucionBALModel.toMap(),where: "folio = ${resolucionBALModel.folio} ");
    return res;
  }

  Future<int> upDateFoto(FotoModel fotoModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Fotografia, fotoModel.toMap(),where: "folio = ${fotoModel.folio} ");
    return res;
  }

  Future<int> upDateCasa(CaracteristicasCasa caracteristicasCasa) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Casa, caracteristicasCasa.toMap(),where: "folio = ${caracteristicasCasa.folio} ");
    return res;
  }

  Future<int> upDateVivienda(EstadoCasaConstruccionModel casaConstruccionModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Vivienda, casaConstruccionModel.toMap(),where: "folio = ${casaConstruccionModel.folio} ");
    return res;
  }


  Future<int> saveEstructuraFamiliar(EstructuraFamilarModel estructuraFamilar)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_DatosFamiliares, estructuraFamilar.toMap());
    return res;
  }

  Future<int> saveFoto( FotoModel fotoModel)async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Fotografia, fotoModel.toMap());
    return res;
  }

  Future<List<DatosGeneralesModel>> datos() async{
    var dbClient = await db;

    final List<Map<String, dynamic>> datosMap = await dbClient.query('datosGenerales');

    return List.generate(datosMap.length, (i){
      return DatosGeneralesModel(
        folio : datosMap[i]['folio'],
        fecha : datosMap[i]['fecha']
      );
    });
  }

  readSaludPertenencia(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia2(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 1 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia3(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) +2 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia4(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 3 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia5(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 4 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia6(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 5 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia7(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 6 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia8(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 7 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia9(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 8 from saludPertenenciaIndigena where folio = ${folio})");
  }

  readSaludPertenencia10(table, int folio) async {
    var connection = await db;
    return await connection.query(table, where: "folio = ${folio} and ROWID = (select min(ROWID) + 9 from saludPertenenciaIndigena where folio = ${folio})");
  }

  Future<int> upDateSalud1(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud2(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 1 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud3(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 2 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud4(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 3 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud5(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 4 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud6(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 5 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud7(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 6 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud8(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 7 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud9(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 8 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }

  Future<int> upDateSalud10(Salud_PertenenciaIndigenenaTablaModel salud_pertenenciaIndigenenaTablaModel) async{
    var dbClient = await db;
    var res = await dbClient.update(Table_Salud, salud_pertenenciaIndigenenaTablaModel.toMap(),where: "folio = ${salud_pertenenciaIndigenenaTablaModel.folio} and ROWID = (select min(ROWID) + 9 from saludPertenenciaIndigena where folio = ${salud_pertenenciaIndigenenaTablaModel.folio})");
    return res;
  }
}