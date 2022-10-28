class Gas {
  String folio;
  int claveServGas;
  String ordenServGas;
  String servGas;
  String otroGas;

  Gas(
      {this.folio,
      this.claveServGas,
      this.ordenServGas,
      this.servGas,
      this.otroGas});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'claveServGas': claveServGas,
      'ordenServGas': ordenServGas,
      'servGas': servGas,
      'otroGas': otroGas
    };
    return map;
  }

  Gas.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    claveServGas = map['claveServGas'];
    ordenServGas = map['ordenServGas'];
    servGas = map['servGas'];
    otroGas = map['otroGas'];
  }
}
