import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treinamento1/models/Lista.dart';
import 'package:treinamento1/screens/Home/add_nova_lista.dart';
import 'package:treinamento1/screens/Home/lista_controller.dart';

class SuasListas extends StatefulWidget {
  static String tag = 'suas_listas';

  @override
  _SuasListasState createState() => _SuasListasState();
}

class _SuasListasState extends State<SuasListas> {
  _buildList(ListaController listaController) {
    return ListView.builder(
      itemCount: listaController.listas.length,
      itemBuilder: (context, index) {
        return _buildItem(
          listaController.listas[index],
        );
      },
    );
  }

  _buildItem(Lista lista) {
    return ListTile(title: Text(lista.nome));
  }

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
      body: Consumer<ListaController>(
        builder: (context, listaController, widget) {
          return _buildList(listaController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (contect) => AddNovaLista()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 29,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
