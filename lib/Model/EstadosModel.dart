class EstadosModel {
  String Estado;

  EstadosModel({this.Estado});

  Map<String, dynamic> toMap(){
    return {
      'Estado' : Estado
    };
  }

  EstadosModel.fromMap(Map<String, dynamic> map){
    Estado = map['Estado'];
  }
}