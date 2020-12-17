import 'package:flutter/material.dart';

class Produto {
  const Produto({this.nome});
  final String nome;
}

typedef void CartChangedCallback(Produto produto, bool naCarinha);

class ShoppingListaItem extends StatelessWidget {
  ShoppingListaItem({this.produto, this.naCarinha, this.naCarinhaAlterado})
      : super(key: ObjectKey(produto));

  final Produto produto;
  final bool naCarinha;
  final CartChangedCallback naCarinhaAlterado;

  Color _getColor(BuildContext context) {
    // O tema depende do BuildContext porque diferentes partes
    // da árvore pode ter temas diferentes.
    // O BuildContext indica onde a construção está
    // ocorrendo e, portanto, qual tema usar.

    return naCarinha ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!naCarinha) return null;

    return TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        naCarinhaAlterado(produto, naCarinha);
      },
      leading: CircleAvatar(
          backgroundColor: _getColor(context)
          ),
      title: Text(produto.nome, style: _getTextStyle(context)),
    );
  }
}



// wiget Pai
// Armazenar estado durante a vida util do aplicativo
class ShoppingLista extends StatefulWidget {
  ShoppingLista( { Key key,  this.produtos }) : super( key: key);

  final List<Produto> produtos;

  @override
  _ShoppingListaState createState() => _ShoppingListaState();
}



class _ShoppingListaState extends State<ShoppingLista> {
  Set <Produto> _shoppingCarinha = Set<Produto> ();

  void _handleCarinhaAlterado ( Produto produto, bool naCarinha ) {
    setState( () {
      // Quando um usuário muda o que está no carrinho, você precisa mudar 
      // _shoppingCart dentro de uma chamada setState para acionar uma reconstrução. 
      // A estrutura então chama build, abaixo, 
      // que atualiza a aparência visual do aplicativo

      if ( !naCarinha ) _shoppingCarinha.add( produto );
      else _shoppingCarinha.remove( produto );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text ('Shopping Lista'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.produtos.map(( Produto produto ) {
          return ShoppingListaItem(
            produto: produto,
            naCarinha: _shoppingCarinha.contains( produto ),
            naCarinhaAlterado: _handleCarinhaAlterado,
          );
        }).toList(),
      ),
    );
  }
}


void shopping_main() {
  runApp(
    MaterialApp(
      title: 'Shopping App',
      home: ShoppingLista(
        produtos: <Produto>[
          Produto(nome: 'ovos'),
                    Produto(nome: 'chocolate'),
          Produto(nome: 'manteiga'),

        ],
      )
    )
  );
}