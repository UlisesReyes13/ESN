class RemesasModel{
  int folio;
  String dineroOtrosPaises;
  String frecuencia;

  RemesasModel({this.folio, this.dineroOtrosPaises, this.frecuencia});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'dineroOtrosPaises': dineroOtrosPaises,
      'frecuencia': frecuencia,

    };
    return map;
  }

  RemesasModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    dineroOtrosPaises = map['dineroOtrosPaises'];
    frecuencia = map['frecuencia'];

  }

}