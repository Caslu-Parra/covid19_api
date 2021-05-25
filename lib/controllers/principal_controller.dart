import 'package:covid19_api/models/principal_model.dart';

class DadosController {
  int confirmados = 0;
  int mortes = 0 ;
  int recuperados = 0;

  // Método de que busca as informaçõess no model.
  Future<void> buscar() async {
   // Instanciar um obj do tipo resereço:
    var res = DadosModel();

    // Chamando o método do model:
    res = await DadosModel.obterDados();

    confirmados = res.confirmados;
    mortes = res.mortes;
    recuperados = res.recuperados;

  }
}
