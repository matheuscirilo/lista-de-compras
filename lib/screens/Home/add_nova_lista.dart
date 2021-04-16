import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treinamento1/models/Lista.dart';
import 'package:treinamento1/screens/Home/lista_controller.dart';
import 'package:treinamento1/screens/Home/suas_listas.dart';

class AddNovaLista extends StatefulWidget {
  AddNovaLista({
    Key key,
  }) : super(key: key);

  @override
  _AddNovaListaState createState() => _AddNovaListaState();
}

class _AddNovaListaState extends State<AddNovaLista> {
  TextEditingController nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          title: const Text('Suas Listas'),
        ),
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: nome,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nova Lista',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            onPressed: () {
              final lista = Lista(this.nome.text);
              Provider.of<ListaController>(context, listen: false).add(lista);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SuasListas()));
            },
            child: Text('CRIAR'),
          )
        ])));
  }
}
