class EstadosModel {
  String Estados;

  EstadosModel({this.Estados});

  Map<String, dynamic> toMap(){
    return {
      'Estados' : Estados
    };
  }

  EstadosModel.fromMap(Map<String, dynamic> map){
    Estados = map['Estados'];
  }
}