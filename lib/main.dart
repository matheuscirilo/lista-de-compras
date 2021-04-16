import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treinamento1/screens/Home/lista_controller.dart';
import 'package:treinamento1/screens/Home/suas_listas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ListaController>.value(
          value: ListaController(),
        ),
      ],
      child: MaterialApp(
        title: 'EasyMarket',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SuasListas(),
      ),
    );
  }
}
