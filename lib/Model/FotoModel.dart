class FotoModel{
  int folio;
  String fileFoto;

  FotoModel({this.folio, this.fileFoto});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'fileFoto': fileFoto,

    };
    return map;
  }

  FotoModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    fileFoto = map['fileFoto'];

  }
}