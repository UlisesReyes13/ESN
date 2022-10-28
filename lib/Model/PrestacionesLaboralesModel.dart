class PrestacionesLaboralesModel{
  String Pk_PrestacionesLaborales;
  String Orden_PrestacionesLaborales;
  String txt_desc_prestacioneslab;
  bool value;

  PrestacionesLaboralesModel({this.Pk_PrestacionesLaborales, this.Orden_PrestacionesLaborales, this.txt_desc_prestacioneslab, this.value = false});

  Map<String, dynamic> toMap() {
    return {
      'Pk_PrestacionesLaborales': Pk_PrestacionesLaborales,
      'Orden_PrestacionesLaborales': Orden_PrestacionesLaborales
    };
  }
  PrestacionesLaboralesModel.fromMap(Map<String, dynamic> map) {
    Pk_PrestacionesLaborales = map['Pk_PrestacionesLaborales'];
    Orden_PrestacionesLaborales = map['Orden_PrestacionesLaborales'];
  }

  @override
  String toString() => txt_desc_prestacioneslab;
}