
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';



class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
      final _sugestao = <WordPair>[];
    final _biggerFont = TextStyle( fontSize: 18.0 );
  final _saved = Set<WordPair>();     // NEW
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text('Gerador de Nome'),
    actions: [
      IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
    ],
  ),
  body: _buildSugestao(),
);

  }

  Widget _buildSugestao() {


    return ListView.builder(
      padding: EdgeInsets.all( 16.0 ),
      itemBuilder: ( context, i) {
        if ( i.isOdd) return Divider();
        final index = i ~/ 2;
        if ( index >= _sugestao.length ) {
          _sugestao.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_sugestao[index]);
      }
    );
  }

  Widget _buildRow (WordPair pair) {
        final alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),

      onTap: () {
        setState(() {
          if ( alreadySaved ) {
            _saved.remove( pair );
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: ( BuildContext context ) {
          final tiles = _saved.map(
            (WordPair pair ) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Sugestoes Salvas')
            ),
            body: ListView(children: divided)
          );
        }
      )
    );
  }
}