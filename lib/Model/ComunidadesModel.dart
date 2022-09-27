class ComunidadesModel{
  int pk_Comunidad;
  String Comunidad;


  ComunidadesModel({this.pk_Comunidad, this.Comunidad});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'pk_Comunidad': pk_Comunidad,
      'Comunidad': Comunidad,

    };
    return map;
  }

  ComunidadesModel.fromMap(Map<String, dynamic> map) {
    pk_Comunidad = map['pk_Comunidad'];
    Comunidad = map['Comunidad'];
  }

}