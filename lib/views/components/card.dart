import 'package:flutter/material.dart';

class DadosCard extends StatelessWidget {
  final int confirmados;
  final int mortes;
  final int recuperados;

  const DadosCard({Key key, this.confirmados, this.mortes, this.recuperados})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total de recuperados: $recuperados",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text("Total de mortes: $mortes"),
                  Text("Total Confirmados: $confirmados"),
                ],
              )
            ],
          ),
          // CardAcaba ai
        )));
  }
}
