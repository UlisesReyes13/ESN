class ApoyoEnEspecieModel{
  int folio;
  String folioDispo;
  int claveApoyo;
  int ordenApoyo;
  String apoyo;
  String proporcionadoPor;
  int claveFrecuencia;
  int ordenFrecuencia;
  String frecuencia;


  ApoyoEnEspecieModel({
      this.folio,
      this.folioDispo,
      this.claveApoyo,
      this.ordenApoyo,
      this.apoyo,
      this.proporcionadoPor,
      this.claveFrecuencia,
      this.ordenFrecuencia,
      this.frecuencia});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'folioDispo': folioDispo,
      'claveApoyo': claveApoyo,
      'ordenApoyo': ordenApoyo,
      'apoyo': apoyo,
      'proporcionadoPor': proporcionadoPor,
      'claveFrecuencia': claveFrecuencia,
      'frecuencia': frecuencia,
    };
    return map;
  }

  ApoyoEnEspecieModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    folioDispo = map['folioDispo'];
    claveApoyo = map['claveApoyo'];
    ordenApoyo = map['ordenApoyo'];
    apoyo = map['apoyo'];
    proporcionadoPor = map['proporcionadoPor'];
    claveFrecuencia = map['claveFrecuencia'];
    frecuencia = map['frecuencia'];
  }

}