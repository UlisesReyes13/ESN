class ApoyoEnEspecieModel{
  int folio;
  String tipoApoyo;
  String quienProporciona;
  String frecuenciaApoyo;

  ApoyoEnEspecieModel({
      this.folio, this.tipoApoyo, this.quienProporciona, this.frecuenciaApoyo});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'tipoApoyo': tipoApoyo,
      'quienProporciona': quienProporciona,
      'frecuenciaApoyo': frecuenciaApoyo,
    };
    return map;
  }

  ApoyoEnEspecieModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    tipoApoyo = map['tipoApoyo'];
    quienProporciona = map['quienProporciona'];
    frecuenciaApoyo = map['frecuenciaApoyo'];
  }

}