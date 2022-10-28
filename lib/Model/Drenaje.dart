class Drenaje {
  String folio;
  int claveServSanitario;
  String ordenServSanitario;
  String servSanitario;
  String otroSanitario;

  Drenaje(
      {this.folio,
      this.claveServSanitario,
      this.ordenServSanitario,
      this.servSanitario,
      this.otroSanitario});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'claveServSanitario': claveServSanitario,
      'ordenServSanitario': ordenServSanitario,
      'servSanitario': servSanitario,
      'otroSanitario': otroSanitario
    };
    return map;
  }

  Drenaje.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    claveServSanitario = map['claveServSanitario'];
    ordenServSanitario = map['ordenServSanitario'];
    servSanitario = map['servSanitario'];
    otroSanitario = map['otroSanitario'];
  }
}
