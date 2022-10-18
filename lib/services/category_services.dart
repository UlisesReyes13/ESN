import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/ComunidadesModel.dart';
import 'package:esn/Model/CodigoPostalModel.dart';

class CategoryService {
  DbHelper _repository;
  CategoryService(){
    _repository = DbHelper();
  }

  readCtegoriesNomAsen() async {
    return await _repository.readData('Asentamientos');
  }

  readCtegoriesTipoVialidad() async {
    return await _repository.readData('TiposVialidad');
  }

  readTipoAsenta(String Asienta) async {
    return await _repository.readOrdenTipoAsenta(Asienta);
  }

  readTipoVialidad(String Vialidad) async {
    return await _repository.readOrdenTipoVialidad(Vialidad);
  }

  readOrdenEstado(String Estado) async {
    return await _repository.readOrdenEstado(Estado);
  }

  readOrdenEstadoCivil(String Civil) async {
    return await _repository.readOrdenEstadosCivil(Civil);
  }

  readOrdenParentesco(String Parentesco) async {
    return await _repository.readOrdenParentesco(Parentesco);
  }

  readOrdenEscolaridad(String escolaridad) async {
    return await _repository.readOrdenEscolaridad(escolaridad);
  }

  readOrdenGrado(String grado) async {
    return await _repository.readOrdenGrado(grado);
  }

  readOrdenOcupacion(String Ocupacion) async {
    return await _repository.readOrdenOcupacion(Ocupacion);
  }

  readOrdenTipoEmpl(String TipoEmpleo) async {
    return await _repository.readOrdenTipoEmpleo(TipoEmpleo);
  }

  readOrdenDerecho(String derecho) async {
    return await _repository.readOrdenDerechoA(derecho);
  }

  readOrdenMotivoDerecho(String motivoDerecho) async {
    return await _repository.readOrdenMotivoDerecho(motivoDerecho);
  }

  readOrdencasa(String casa) async {
    return await _repository.readOrdenCasa(casa);
  }

  readOrdenPiso(String piso) async {
    return await _repository.readOrdenPiso(piso);
  }

  readOrdenTenencia(String tenencia) async {
    return await _repository.readOrdenTenencia(tenencia);
  }

  readOrdenTecho(String techo) async {
    return await _repository.readOrdenTecho(techo);
  }

  readOrdenMuro(String muro) async {
    return await _repository.readOrdenMuros(muro);
  }

  readCtegoriesMunicipios() async {
    return await _repository.readData('tb_Municipios');
  }

  readCtegoriesTipoAsentamiento() async {
    return await _repository.readData('TiposAsentamiento');
  }

  readCategoriesEstadosCiviles() async {
    return await _repository.readData('tb_EstadosCiviles');
  }

  readCategoriesParentesco() async {
    return await _repository.readParentesco();
  }

  Folio() async {
    return await _repository.readFolio('datosGenerales');
  }

  readCategoriesEcolaridades() async {
    return await _repository.readData('tb_Escolaridades');
  }

  readCategoriesDerechohabiencias() async {
    return await _repository.readData('tb_Derechohabiencias');
  }

  readCategoriesMotivoDerechohabiencias() async {
    return await _repository.readData('tb_MotivoDerechohabiencias');
  }
  
  readCategoriesTipoEmpleos() async {
    return await _repository.readData('tb_TipoEmpleos');
  }

  readCategoriesOcupaciones() async {
    return await _repository.readData('tb_Ocupaciones');
  }

  readCategoriesGradosEscolares() async {
    return await _repository.readData('tb_GradosEscolares');
  }

  readCategoriesDiscapacidades() async {
    return await _repository.readData('tb_CapacidadesDiferentes');
  }

  readCategoriesCondicionesSalud() async{
    return await _repository.readData('tb_CondicionesSalud');
  }

  readCategoriesAdicciones() async{
    return await _repository.readData('tb_Adicciones');
  }

  readCategoriesPuebloIndigena() async {
    return await _repository.readData('tb_EtniasIndigenas');
  }

  readCategoriesTipoVivienda() async {
    return await _repository.readData('tb_TipoVivienda');
  }

  readCategoriesTipoPiso() async{
    return await _repository.readData('tb_TipoPisos');
  }

  readCategoriesTipoTenencia() async {
    return await _repository.readData('tb_Tenencias');
  }

  readCategoriesTipoTecho() async{
    return await _repository.readData('tb_Techos');
  }

  readCategoriesTipoMuro() async {
    return await _repository.readData('tb_TiposMuro');
  }

  readCategoriesEstados() async{
    return await _repository.readData('tb_Estados');
  }

  readCategoriesCodigoPostal() async{
    return await _repository.readCp();
  }

  readCategoriesCodigoPostal2(String CP) async{
    return await _repository.readCodigoPostal("tb_CPs" , CodigoPostalModel(ClaveCP: int.parse(CP)));
  }

  readCategoriesComunidades() async{
    return await _repository.readData('tb_Comunidades');
  }

  readCategoriesClasificaciones() async{
    return await _repository.readData('tb_ClasCondicionesSalud');
  }

  readCategoriesGrupo(String comunidad) async{
    return await _repository.readGrupo("tb_Grupos" , ComunidadesModel(Comunidad: comunidad));
  }

  readDatosGeenerales(int folio) async{
    return await _repository.readDatosGeenerales("datosGenerales" , folio );
  }

  readServicioBanio(int folio) async{
    return await _repository.readDatosGeenerales("servicios" , folio );
  }

  readEstructura1(int folio) async{
    return await _repository.readEstructura1("estructuraFailiar" , folio );
  }

  readEstructura2(int folio) async{
    return await _repository.readEstructura2("estructuraFailiar" , folio );
  }

  readEstructura3(int folio) async{
    return await _repository.readEstructura3("estructuraFailiar" , folio );
  }

  readEstructura4(int folio) async{
    return await _repository.readEstructura4("estructuraFailiar" , folio );
  }

  readEstructura5(int folio) async{
    return await _repository.readEstructura5("estructuraFailiar" , folio );
  }

  readEstructura6(int folio) async{
    return await _repository.readEstructura6("estructuraFailiar" , folio );
  }

  readEstructura7(int folio) async{
    return await _repository.readEstructura7("estructuraFailiar" , folio );
  }

  readEstructura8(int folio) async{
    return await _repository.readEstructura8("estructuraFailiar" , folio );
  }

  readEstructura9(int folio) async{
    return await _repository.readEstructura9("estructuraFailiar" , folio );
  }

  readEstructura10(int folio) async{
    return await _repository.readEstructura10("estructuraFailiar" , folio );
  }

  readEscolaridad1(int folio) async{
    return await _repository.readEscolaridad1("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad2(int folio) async{
    return await _repository.readEscolaridad2("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad3(int folio) async{
    return await _repository.readEscolaridad3("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad4(int folio) async{
    return await _repository.readEscolaridad4("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad5(int folio) async{
    return await _repository.readEscolaridad5("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad6(int folio) async{
    return await _repository.readEscolaridad6("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad7(int folio) async{
    return await _repository.readEscolaridad7("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad8(int folio) async{
    return await _repository.readEscolaridad8("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad9(int folio) async{
    return await _repository.readEscolaridad9("escolaridadSeguridadSocial" , folio );
  }

  readEscolaridad10(int folio) async{
    return await _repository.readEscolaridad10("escolaridadSeguridadSocial" , folio );
  }

  readEquipamiento(int folio) async{
    return await _repository.readEquipamiento("equipamiento" , folio );
  }

  readAportaciones(int folio) async{
    return await _repository.readAportaciones("aportacionSemanalS" , folio );
  }

  readEgresos(int folio) async{
    return await _repository.readEgresos("aportacionSemanalM" , folio );
  }

  readApoyoEspecie(int folio) async{
    return await _repository.readApoyoEspecie("apoyoEnEspecie" , folio );
  }

  readRemesas(int folio) async{
    return await _repository.readRemesas("remesas" , folio );
  }

  readDocmentos(int folio) async{
    return await _repository.readDocumentos("documentos" , folio );
  }

  readAlimentacion(int folio) async{
    return await _repository.readAlimentacion("alimentacion" , folio );
  }

  readResolucion(int folio) async{
    return await _repository.readResolucion("resolucion" , folio );
  }

  readResolucionBal(int folio) async{
    return await _repository.readResolucionBal("resolucionBal" , folio );
  }

  readCasa(int folio) async{
    return await _repository.readCasa("caracteristicas_Casa" , folio );
  }

  readEstadoCasa(int folio) async{
    return await _repository.readCasa("estadoDeLaCasaYConstruccion" , folio );
  }


  readCategoriesFrecuancia() async {
    return await _repository.readData('tb_Frecuencias');
  }

  readCategoriesDuraciones() async {
    return await _repository.readData('tb_Duraciones');
  }

  readDisp() async {
    return await _repository.readDispo('dispositivo');
  }

  readSaludPertenencia(int folio) async {
    return await _repository.readSaludPertenencia('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia2(int folio) async {
    return await _repository.readSaludPertenencia2('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia3(int folio) async {
    return await _repository.readSaludPertenencia3('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia4(int folio) async {
    return await _repository.readSaludPertenencia4('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia5(int folio) async {
    return await _repository.readSaludPertenencia5('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia6(int folio) async {
    return await _repository.readSaludPertenencia6('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia7(int folio) async {
    return await _repository.readSaludPertenencia7('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia8(int folio) async {
    return await _repository.readSaludPertenencia8('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia9(int folio) async {
    return await _repository.readSaludPertenencia9('saludPertenenciaIndigena' , folio);
  }
  readSaludPertenencia10(int folio) async {
    return await _repository.readSaludPertenencia10('saludPertenenciaIndigena' , folio);
  }



}