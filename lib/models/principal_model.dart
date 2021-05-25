import 'dart:convert';
import 'package:http/http.dart';

class DadosModel {
  final int confirmados;
  final int mortes;
  final int recuperados;

  DadosModel({this.confirmados, this.mortes, this.recuperados});

  factory DadosModel.fromJson(Map json) {
    return DadosModel(
    confirmados: json['TotalConfirmed'],
    mortes: json['TotalDeaths'],
    recuperados: json['TotalRecovered'],
    );
  }

// Método para buscar enderecos:
  static Future<DadosModel> obterDados() async {
    var url = Uri.parse('https://api.covid19api.com/world/total');
    // Chamada assíncrona:
    var resposta = await get(url);

    var json = jsonDecode(resposta.body);

    return DadosModel.fromJson(json);
  }
}
