class RemesasModel{
  int folio;
  String claveFrecuenciaApoyo ;
  String ordenFrecuenciaApoyo;
  String dineroOtrosPaises;
  String frecuencia;

  RemesasModel({this.folio,this.claveFrecuenciaApoyo,this.ordenFrecuenciaApoyo, this.dineroOtrosPaises, this.frecuencia});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'claveFrecuenciaApoyo': claveFrecuenciaApoyo,
      'ordenFrecuenciaApoyo': ordenFrecuenciaApoyo,
      'dineroOtrosPaises': dineroOtrosPaises,
      'frecuencia': frecuencia,

    };
    return map;
  }

  RemesasModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    claveFrecuenciaApoyo = map['claveFrecuenciaApoyo'];
    ordenFrecuenciaApoyo = map['ordenFrecuenciaApoyo'];
    dineroOtrosPaises = map['dineroOtrosPaises'];
    frecuencia = map['frecuencia'];
  }

}