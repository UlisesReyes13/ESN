class CondicioneSaludModel{
  String Orden;
  String Ponderacion;
  String CondicionesSalud;
  bool value;

  CondicioneSaludModel({this.Orden,this.Ponderacion,this.CondicionesSalud, this.value = false});

  Map<String, dynamic> toMap(){
    return {
      'Orden' : Orden,
      'Ponderacion' : Ponderacion,
      'CondicionesSalud' : CondicionesSalud
    };
  }

  CondicioneSaludModel.fromMap(Map<String, dynamic> map){
    Orden = map['Orden'];
    Ponderacion = map['Ponderacion'];
    CondicionesSalud = map['CondicionesSalud'];
  }

  @override
  String toString() => CondicionesSalud;
}