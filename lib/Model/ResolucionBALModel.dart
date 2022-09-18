class ResolucionBALModel{
  int folio;
  String tipo;
  String frecuencia;
  String duracion;
  String otorgarApoyo;
  String observaciones;


  ResolucionBALModel({this.folio, this.tipo, this.frecuencia, this.duracion, this.otorgarApoyo,
      this.observaciones});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'tipo': tipo,
      'frecuencia': frecuencia,
      'duracion': duracion,
      'otorgarApoyo': otorgarApoyo,
      'observaciones': observaciones
    };
    return map;
  }

  ResolucionBALModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    tipo = map['tipo'];
    frecuencia = map['frecuencia'];
    duracion = map['duracion'];
    otorgarApoyo = map['otorgarApoyo'];
    observaciones = map['observaciones'];
  }
}