class EstructuraFamilarModel {
  int folio;
  String nombre;
  String primerApellido;
  String segundoApellido;
  String claveSexo;
  String ordenSexo;
  String sexo;
  String fechaNacimiento;
  String claveEntidad;
  String entidadNacimiento;
  String claveestadoCivil;
  String ordenEstadoCivil;
  String estadoCivil;
  String claveParentesco;
  String ordenParentesco;
  String parentesco;
  int ingresoSemanal;
  int ingresoMensual;


  EstructuraFamilarModel({
    this.folio,
    this.nombre,
    this.primerApellido,
    this.segundoApellido,
    this. claveSexo,
    this. ordenSexo,
    this.sexo,
    this.fechaNacimiento,
    this.claveEntidad,
    this.entidadNacimiento,
    this.claveestadoCivil,
    this.ordenEstadoCivil,
    this.estadoCivil,
    this.claveParentesco,
    this.ordenParentesco,
    this.parentesco,
    this.ingresoSemanal,
    this.ingresoMensual});
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'folio': folio,
      'nombre': nombre,
      'primerApellido': primerApellido,
      'segundoApellido': segundoApellido,
      'claveSexo': claveSexo,
      'ordenSexo': ordenSexo,
      'sexo': sexo,
      'fechaNacimiento': fechaNacimiento,
      'claveEntidad': claveEntidad,
      'entidadNacimiento': entidadNacimiento,
      'claveestadoCivil': claveestadoCivil,
      'ordenEstadoCivil': ordenEstadoCivil,
      'estadoCivil': estadoCivil,
      'claveParentesco': claveParentesco,
      'ordenParentesco': ordenParentesco,
      'parentesco': parentesco,
      'ingresoSemanal': ingresoSemanal,
      'ingresoMensual': ingresoMensual
    };
    return map;
  }

  EstructuraFamilarModel.fromMap(Map<String, dynamic> map) {
    folio = map['folio'];
    nombre = map['nombre'];
    primerApellido = map['primerApellido'];
    segundoApellido = map['segundoApellido'];
    claveSexo = map['claveSexo'];
    ordenSexo = map['ordenSexo'];
    sexo = map['sexo'];
    fechaNacimiento = map['fechaNacimiento'];
    claveEntidad = map['claveEntidad'];
    entidadNacimiento = map['entidadNacimiento'];
    claveestadoCivil = map['claveestadoCivil'];
    ordenEstadoCivil = map['ordenEstadoCivil'];
    estadoCivil = map['estadoCivil'];
    claveParentesco = map['claveParentesco'];
    ordenParentesco = map['ordenParentesco'];
    parentesco = map['parentesco'];
    ingresoSemanal = map['ingresoSemanal'];
    ingresoMensual = map['ingresoMensual'];
  }
}