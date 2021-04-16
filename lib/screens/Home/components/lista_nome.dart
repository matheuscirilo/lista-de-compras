import 'package:flutter/material.dart';
import 'package:treinamento1/models/Lista.dart';

class NomeLista extends StatelessWidget {
  const NomeLista({
    Key key,
    this.lista,
  }) : super(key: key);
final Lista lista;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:
        ListTile(
          title: Text(this.lista.nome),
          trailing: Icon(Icons.more_vert),
        ),
      );
  }
}