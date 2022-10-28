class Agua {
  String folio;
  int claveServAgua;
  String ordenServAgua;
  String servAgua;
  String otroAgua;

  Agua(
      {this.folio,
      this.claveServAgua,
      this.ordenServAgua,
      this.servAgua,
      this.otroAgua});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'claveServAgua': claveServAgua,
      'ordenServAgua': ordenServAgua,
      'servAgua': servAgua,
      'otroAgua': otroAgua
    };
    return map;
  }

  Agua.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    claveServAgua = map['claveServAgua'];
    ordenServAgua = map['ordenServAgua'];
    servAgua = map['servAgua'];
    otroAgua = map['otroAgua'];
  }
}
