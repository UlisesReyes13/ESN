class ResolucionBALModel{
  int folio;
  String tipo;
  String claveFrecuencia;
  String ordenFrecuencia;
  String frecuencia;
  String claveDuracion;
  String ordenDuracion;
  String duracion;
  String otorgarApoyo;
  String observaciones;


  ResolucionBALModel({this.folio, this.tipo,this.claveFrecuencia,this.ordenFrecuencia, this.frecuencia,this.claveDuracion,this.ordenDuracion, this.duracion, this.otorgarApoyo,
      this.observaciones});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'tipo': tipo,
      'claveFrecuencia': claveFrecuencia,
      'ordenFrecuencia': ordenFrecuencia,
      'frecuencia': frecuencia,
      'claveDuracion': claveDuracion,
      'ordenDuracion': ordenDuracion,
      'duracion': duracion,
      'otorgarApoyo': otorgarApoyo,
      'observaciones': observaciones
    };
    return map;
  }

  ResolucionBALModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    tipo = map['tipo'];
    claveFrecuencia = map['claveFrecuencia'];
    ordenFrecuencia = map['ordenFrecuencia'];
    frecuencia = map['frecuencia'];
    claveDuracion = map['claveDuracion'];
    ordenDuracion = map['ordenDuracion'];
    duracion = map['duracion'];
    otorgarApoyo = map['otorgarApoyo'];
    observaciones = map['observaciones'];
  }
}