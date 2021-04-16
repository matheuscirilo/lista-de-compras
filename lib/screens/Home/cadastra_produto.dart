import 'package:flutter/material.dart';

class CadastrarProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        leading:         
          IconButton(
            icon: const Icon(
              Icons.menu
            ),
            onPressed: () { 

            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        title: const Text('Novo Produto'),
      ),

      body: Row(
        children: [
          
          SizedBox(
            height: 30,
          ),
              
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome do Produto',
            ),
          ),
          
          SizedBox(
            height: 30,
          ),
              
          Row(
            children: [

              Column(
                children: [

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Quantidade',
                    ),
                  ),

                SizedBox(
                  height: 30,
                ),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Unidade',
                    ),
                  ),
                
                 ],

                ),
                  
                Column(
                  children: [
                    
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Preço',
                      ),
                    ),
                
                    SizedBox(
                      height: 30,
                    ),

                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Categoria',
                      ),
                    ),
                    ],
                  ),
              
                ],
              
            ),
              
              FlatButton(
                onPressed: () { 
                  Navigator.push(
                  context, 
                  MaterialPageRoute(builder: 
                  (contect)=>CadastrarProduto()
                  )
                  ); 
                },
                child: 
                  Text(
                    'ADICIONAR'
                  ),
              )
          ]
      )
    );
  }
}