class Luz {
  String folio;
  int claveServLuz;
  String ordenServLuz;
  String servLuz;
  String otroLuz;

  Luz(
      {this.folio,
      this.claveServLuz,
      this.ordenServLuz,
      this.servLuz,
      this.otroLuz});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'claveServLuz': claveServLuz,
      'ordenServLuz': ordenServLuz,
      'servLuz': servLuz,
      'otroLuz': otroLuz
    };
    return map;
  }

  Luz.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    claveServLuz = map['claveServLuz'];
    ordenServLuz = map['ordenServLuz'];
    servLuz = map['servLuz'];
    otroLuz = map['otroLuz'];
  }
}
