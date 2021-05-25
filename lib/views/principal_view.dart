import 'package:covid19_api/controllers/principal_controller.dart';
import 'package:flutter/material.dart';
import 'package:covid19_api/views/components/card.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  DadosController _controller = DadosController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 em tempo real'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.network(
              'https://culturenojhome.files.wordpress.com/2019/04/earth-icon.gif?w=372',
              width: double.infinity,
              height: 250,
            ),
            // Deverá substituir o campo abaixo com uma variável de controle:
            DadosCard(
              confirmados: _controller.confirmados,
              mortes: _controller.mortes,
              recuperados: _controller.recuperados,
            ),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    _controller.buscar();
                  });
                },
                child: Text("Atualizar os dados")),
          ],
        ),
      ),
    );
  }
}
