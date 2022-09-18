class AportacionSemanal{
  int folio;
  double padre;
  double madre;
  double hijos;
  double prospera;
  double adultosMayoresProspera;
  double becas;
  double otros;
  double pension;
  double totalSemanal;
  double totalMensual;

  AportacionSemanal({
      this.folio,
      this.padre,
      this.madre,
      this.hijos,
      this.prospera,
      this.adultosMayoresProspera,
      this.becas,
      this.otros,
      this.pension,
      this.totalSemanal,
      this.totalMensual});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'padre': padre,
      'madre': madre,
      'hijos': hijos,
      'prospera': prospera,
      'adultosMayoresProspera': adultosMayoresProspera,
      'becas': becas,
      'otros': otros,
      'pension': pension,
      'totalSemanal': totalSemanal,
      'totalMensual': totalMensual
    };
    return map;
  }

  AportacionSemanal.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    padre = map['padre'];
    madre = map['madre'];
    hijos = map['hijos'];
    prospera = map['prospera'];
    adultosMayoresProspera = map['adultosMayoresProspera'];
    becas = map['becas'];
    otros = map['otros'];
    pension = map['pension'];
    totalSemanal = map['totalSemanal'];
    totalMensual = map['totalMensual'];
  }
}