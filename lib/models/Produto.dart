import 'dart:math';

class Produto {
  String nomeProduto;
  int quantidade;
  int unidade;
  int preco;
  String observacao;
  int id = Random().nextInt(10000000);

  Produto(this.nomeProduto, this.observacao, this.preco, this.quantidade, this.unidade);

}