class ResolucionModel{
  int folio;
  String puntaje;
  String escalaNecesidad;
  String inseguridadAlimenticia;
  String clasificacionPobresa;

  ResolucionModel({this.folio, this.puntaje, this.escalaNecesidad,
    this.inseguridadAlimenticia, this.clasificacionPobresa
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'puntaje': puntaje,
      'escalaNecesidad': escalaNecesidad,
      'inseguridadAlimenticia': inseguridadAlimenticia,
      'clasificacionPobresa': clasificacionPobresa
    };
    return map;
  }

  ResolucionModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    puntaje = map['puntaje'];
    escalaNecesidad = map['escalaNecesidad'];
    inseguridadAlimenticia = map['inseguridadAlimenticia'];
    clasificacionPobresa = map['clasificacionPobresa'];
  }
}