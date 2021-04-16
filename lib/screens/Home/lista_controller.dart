import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:treinamento1/models/Lista.dart';

class ListaController extends ChangeNotifier {
  List<Lista> _listas = [
  ];

  UnmodifiableListView<Lista> get listas => UnmodifiableListView(_listas);

  void add(Lista lista) {
    _listas.add(lista);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

}
