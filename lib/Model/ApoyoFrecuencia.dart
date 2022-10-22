class ApoyoFrecuencia{

  int ClaveFrecuencia;
  int OrdenFrecuencia;
  String Frecuencia;

  ApoyoFrecuencia({this.ClaveFrecuencia, this.OrdenFrecuencia, this.Frecuencia});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'ClaveFrecuencia': ClaveFrecuencia,
      'OrdenFrecuencia': OrdenFrecuencia,
      'Frecuencia': Frecuencia,

    };
    return map;
  }
  ApoyoFrecuencia.fromMap(Map<String, dynamic> map) {
    ClaveFrecuencia = map['ClaveFrecuencia'];
    OrdenFrecuencia = map['OrdenFrecuencia'];
    Frecuencia = map['Frecuencia'];

  }
}
