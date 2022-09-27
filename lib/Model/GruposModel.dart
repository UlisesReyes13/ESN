class GruposModel{
  int ClaveGrupo;
  String Grupo;


  GruposModel({this.ClaveGrupo, this.Grupo});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'ClaveGrupo': ClaveGrupo,
      'Grupo': Grupo,

    };
    return map;
  }
  GruposModel.fromMap(Map<String, dynamic> map) {
    ClaveGrupo = map['ClaveGrupo'];
    Grupo = map['Grupo'];
  }

}