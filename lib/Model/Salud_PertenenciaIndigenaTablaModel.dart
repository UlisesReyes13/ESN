class Salud_PertenenciaIndigenenaTablaModel {
  int folio;

  //Capacidades Diferente
  String ClaveCapacidadDiferente;
  String OrdenCapacidadDiferente;
  String CapacidadDiferente;

  //Adicciones
  String ClaveAdiccion;
  String OrdenAdiccion;
  String Adiccion;

  //Peso, Talla, IMC
  double peso;
  double talla;
  double imc;

  //Condiciones de salud
  String ClaveCondicionesSalud;
  String OrdenCondicionesSalud;
  String CondicionesSalud;

  //Clasificación Condición de salud
  String ClaveClasCondicionesSalud;
  String OrdenClasCondicionesSalud;
  String ClasCondicionesSalud;

  //Ponderación
  int ponderacion;

  //Foto
  String fileFoto;

  //Pueblo indigena
  String ClaveEtniaIndigena;
  String OrdenEtniaIndigena;
  String EtniaIndigena;

  Salud_PertenenciaIndigenenaTablaModel({
      this.folio,
      this.ClaveCapacidadDiferente,
      this.OrdenCapacidadDiferente,
      this.CapacidadDiferente,
      this.ClaveAdiccion,
      this.OrdenAdiccion,
      this.Adiccion,
      this.peso,
      this.talla,
      this.imc,
      this.ClaveCondicionesSalud,
      this.OrdenCondicionesSalud,
      this.CondicionesSalud,
      this.ClaveClasCondicionesSalud,
      this.OrdenClasCondicionesSalud,
      this.ClasCondicionesSalud,
      this.ponderacion,
      this.fileFoto,
      this.ClaveEtniaIndigena,
      this.OrdenEtniaIndigena,
      this.EtniaIndigena});


    Map<String,dynamic> toMap(){
      var map = <String, dynamic>{
        'folio' : folio,

        //Capacidades Diferente
        'ClaveCapacidadDiferente' : ClaveCapacidadDiferente,
        'OrdenCapacidadDiferente' : OrdenCapacidadDiferente,
        'CapacidadDiferente' : CapacidadDiferente,

      //Adicciones
      'ClaveAdiccion' : ClaveAdiccion,
      'OrdenAdiccion' : OrdenAdiccion,
      'Adiccion' : Adiccion,

      //Peso, Talla, IMC
      'peso' : peso,
      'talla' : talla,
      'imc' : imc,

      //Condiciones de salud
      'ClaveCondicionesSalud' : ClaveCondicionesSalud,
      'OrdenCondicionesSalud' : OrdenCondicionesSalud,
      'CondicionesSalud' : CondicionesSalud,

      //Clasificación Condición de salud
      'ClaveClasCondicionesSalud' : ClaveClasCondicionesSalud,
      'OrdenClasCondicionesSalud' : OrdenClasCondicionesSalud,
      'ClasCondicionesSalud' : ClasCondicionesSalud,

      //Ponderación
      'ponderacion' : ponderacion,

      //Foto
      'fileFoto' : fileFoto,

      //Pueblo indigena
      'ClaveEtniaIndigena' : ClaveEtniaIndigena,
      'OrdenEtniaIndigena' : OrdenEtniaIndigena,
      'EtniaIndigena' : EtniaIndigena
      };
      return map;
      }

      Salud_PertenenciaIndigenenaTablaModel.fromMap(Map<String, dynamic> map){
        folio = map['folio'];
        //Capacidades Diferentes
        ClaveCapacidadDiferente = map['ClaveCapacidadDiferente'];
        OrdenCapacidadDiferente = map['OrdenCapacidadDiferente'];
        CapacidadDiferente = map['CapacidadDiferente'];

        //Adicciones
        ClaveAdiccion = map['ClaveAdiccion'];
        OrdenAdiccion = map['OrdenAdiccion'];
        Adiccion = map['Adiccion'];

        //Peso, Talla, IMC
        peso = map['peso'];
        talla = map['talla'];
        imc = map['imc'];

        //Condiciones de salud
        ClaveCondicionesSalud = map['ClaveCondicionesSalud'];
        OrdenCondicionesSalud = map['OrdenCondicionesSalud'];
        CondicionesSalud = map['CondicionesSalud'];

        //Clasificación Condición de salud
        ClaveClasCondicionesSalud = map['ClaveClasCondicionesSalud'];
        OrdenClasCondicionesSalud = map['OrdenClasCondicionesSalud'];
        ClasCondicionesSalud = map['ClasCondicionesSalud'];

        //Ponderación
        ponderacion = map['ponderacion'];

        //Foto
        fileFoto = map['fileFoto'];

        //Pueblo indigena
        ClaveEtniaIndigena = map['ClaveEtniaIndigena'];
        OrdenEtniaIndigena = map['OrdenEtniaIndigena'];
        EtniaIndigena = map['EtniaIndigena'];
    }
}