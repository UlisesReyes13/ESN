class DocumentosModel{
  int folio;
  String curp;
  String actaNacimiento;
  String comprobanteDomicilio;
  String ine;

  DocumentosModel({this.folio, this.curp, this.actaNacimiento,
      this.comprobanteDomicilio, this.ine});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'curp': curp,
      'actaNacimiento': actaNacimiento,
      'comprobanteDomicilio': comprobanteDomicilio,
      'ine': ine
    };
    return map;
  }

  DocumentosModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    curp = map['curp'];
    actaNacimiento = map['actaNacimiento'];
    comprobanteDomicilio = map['comprobanteDomicilio'];
    ine = map['ine'];
  }

}