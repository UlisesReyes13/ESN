class FrecuenciaModel {
  String Frecuencia;

  FrecuenciaModel({this.Frecuencia});

  Map<String, dynamic> toMap(){
    return{
      'Frecuencia' : Frecuencia
    };
  }

  FrecuenciaModel.fromMap(Map<String, dynamic> map){
    Frecuencia = map['Frecuencia'];
  }

}