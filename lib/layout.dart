
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout{

  static Scaffold getcontent(BuildContext context, content){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 229, 229, 1),
        title: const Text('Novo Produto'),
        leading:         
          IconButton(
            icon: const Icon(
              Icons.menu
            ),
            onPressed: () { 

            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
      ),
      body: content,
    );

  }

}