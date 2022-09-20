import 'package:esn/DatabaseHandler/DbHelper.dart';
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
    return await _repository.readData('tb_Parentescos');
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

  readCategoriesFrecuancia() async {
    return await _repository.readData('tb_Frecuencias');
  }
  
  readCategoriesDuraciones() async {
    return await _repository.readData('tb_Duraciones');
  }

  readCategoriesCodigoPostal() async{
    return await _repository.readData('tb_CPs');
  }

  readCategoriesCodigoPostal2(String CP) async{
    return await _repository.readCodigoPostal("tb_CPs" , CodigoPostalModel(ClaveCP: int.parse(CP)));
  }

}