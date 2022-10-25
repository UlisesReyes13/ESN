class ClasificacionModel {
  int ClaveClasCondicionesSalud;
  int OrdenClasCondicionesSalud;
  String ClasCondicionesSalud;
  bool value;

  ClasificacionModel(
      {this.ClaveClasCondicionesSalud,
      this.OrdenClasCondicionesSalud,
      this.ClasCondicionesSalud,
      this.value = false});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'ClaveClasCondicionesSalud': ClaveClasCondicionesSalud,
      'OrdenClasCondicionesSalud': OrdenClasCondicionesSalud,
      'ClasCondicionesSalud': ClasCondicionesSalud,
    };
    return map;
  }

  ClasificacionModel.fromMap(Map<String, dynamic> map) {
    ClaveClasCondicionesSalud = map['ClaveClasCondicionesSalud'];
    OrdenClasCondicionesSalud = map['OrdenClasCondicionesSalud'];
    ClasCondicionesSalud = map['ClasCondicionesSalud'];
  }
}
