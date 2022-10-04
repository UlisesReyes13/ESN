class DatosGeneralesModel {

  int folio ;
  String fechaCaptura;
  String calle ;
  String entreCalles ;

  int claveGrupo;
  String grupo ;

  String noExt ;
  String noInt ;
  String fecha ;
  String localidad;
  String telefono;
  int claveCodigoPostal;
  int claveEstado;
  String estado;

  int claveComunidad;
  String nombreComunidad;

  int claveMunicipio;
  String municipio;
  int claveAsentamiento;
  String nombreAsentamiento;

  int claveTipoAsentamiento;
  int ordentipoAsentamiento;
  String tipoAsentamiento;

  int claveTipoVialidad;
  int ordentipovialidad;
  String tipoVialidad;

  String folioDisp;

  DatosGeneralesModel({
    this.folioDisp,
      this.folio,
      this.fechaCaptura,
      this.calle,
      this.entreCalles,
      this.claveGrupo,
      this.grupo,
      this.noExt,
      this.noInt,
      this.fecha,
      this.localidad,
      this.telefono,
      this.claveCodigoPostal,
      this.claveEstado,
      this.estado,
      this.claveComunidad,
      this.nombreComunidad,

      this.claveMunicipio,
      this.municipio,

      this.claveAsentamiento,
      this.nombreAsentamiento,

      this.claveTipoAsentamiento,
      this.ordentipoAsentamiento,
      this.tipoAsentamiento,

      this.claveTipoVialidad,
      this.ordentipovialidad,
      this.tipoVialidad
      });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folioDisp' : folioDisp,

      'folio': folio,
      'fechaCaptura': fechaCaptura,
      'calle': calle,
      'entreCalles': entreCalles,
      'claveGrupo': claveGrupo,
      'grupo': grupo,
      'noExt': noExt,
      'noInt': noInt,
      'fecha': fecha,
      'localidad': localidad,
      'telefono': telefono,
      'claveCodigoPostal': claveCodigoPostal,
      'claveEstado': claveEstado,
      'estado': estado,
      'claveComunidad': claveComunidad,
      'nombreComunidad': nombreComunidad,

      'claveMunicipio': claveMunicipio,
      'municipio': municipio,

      'claveAsentamiento': claveAsentamiento,
      'nombreAsentamiento': nombreAsentamiento,


      'claveTipoAsentamiento': claveTipoAsentamiento,
      'ordentipoAsentamiento': ordentipoAsentamiento,
      'tipoAsentamiento': tipoAsentamiento,

      'claveTipoVialidad': claveTipoVialidad,
      'ordentipovialidad': ordentipovialidad,
      'tipoVialidad': tipoVialidad

    };
    return map;
  }

  DatosGeneralesModel.fromMap(Map<String, dynamic> map) {

    folioDisp = map['folioDisp'];
    folio = map['folio'];
    fechaCaptura = map['fechaCaptura'];
    calle = map['calle'];
    entreCalles = map['entreCalles'];
    claveGrupo = map['claveGrupo'];
    grupo = map['grupo'];
    noExt = map['noExt'];
    noInt = map['noInt'];
    fecha = map['fecha'];
    localidad = map['localidad'];
    telefono = map['telefono'];
    claveCodigoPostal = map['claveCodigoPostal'];
    claveEstado = map['claveEstado'];
    estado = map['estado'];
    claveComunidad = map['claveComunidad'];
    nombreComunidad = map['nombreComunidad'];

    claveMunicipio = map['claveMunicipio'];
    municipio = map['municipio'];

    claveAsentamiento = map['claveAsentamiento'];
    nombreAsentamiento = map['nombreAsentamiento'];


    claveTipoAsentamiento = map['claveTipoAsentamiento'];
    ordentipoAsentamiento = map['ordentipoAsentamiento'];
    tipoAsentamiento = map['tipoAsentamiento'];

    claveTipoVialidad = map['claveTipoVialidad'];
    ordentipovialidad = map['ordentipovialidad'];
    tipoVialidad = map['tipoVialidad'];



  }
}