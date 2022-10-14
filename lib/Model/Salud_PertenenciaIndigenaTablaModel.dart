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
  String fileFoto1;
  String fileFoto2;
  String fileFoto3;
  String fileFoto4;
  String fileFoto5;

  //Pueblo indigena
  String ClaveEtniaIndigena;
  String OrdenEtniaIndigena;
  String EtniaIndigena;

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
      'fileFoto1' : fileFoto1,
      'fileFoto2' : fileFoto2,
      'fileFoto3' : fileFoto3,
      'fileFoto4' : fileFoto4,
      'fileFoto5' : fileFoto5,

      //Pueblo indigena
      'ClaveEtniaIndigena' : ClaveEtniaIndigena,
      'OrdenEtniaIndigena' : OrdenEtniaIndigena,
      'EtniaIndigena' : EtniaIndigena
      };
      return map;
      }


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
      this.fileFoto1,
      this.fileFoto2,
      this.fileFoto3,
      this.fileFoto4,
      this.fileFoto5,
      this.ClaveEtniaIndigena,
      this.OrdenEtniaIndigena,
      this.EtniaIndigena});

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
        fileFoto1 = map['fileFoto1'];
        fileFoto2 = map['fileFoto2'];
        fileFoto3 = map['fileFoto3'];
        fileFoto4 = map['fileFoto4'];
        fileFoto5 = map['fileFoto5'];

        //Pueblo indigena
        ClaveEtniaIndigena = map['ClaveEtniaIndigena'];
        OrdenEtniaIndigena = map['OrdenEtniaIndigena'];
        EtniaIndigena = map['EtniaIndigena'];
    }
}