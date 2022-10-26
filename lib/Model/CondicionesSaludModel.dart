class CondicioneSaludModel{
  String CondicionesSalud;
  bool value;

  CondicioneSaludModel({this.CondicionesSalud, this.value = false});

  Map<String, dynamic> toMap(){
    return {
      'CondicionesSalud' : CondicionesSalud
    };
  }

  CondicioneSaludModel.fromMap(Map<String, dynamic> map){
    CondicionesSalud = map['CondicionesSalud'];
  }

  @override
  String toString() => CondicionesSalud;
}