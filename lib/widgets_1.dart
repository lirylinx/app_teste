import 'package:flutter/material.dart';

class MinhaAppBar extends StatelessWidget {
  MinhaAppBar({ this.title });

  final Widget title;

  @override
  Widget build( BuildContext context ) {
    return Container (
      height: 56.0,
      padding: const EdgeInsets.symmetric( horizontal: 8.0 ),
      decoration: BoxDecoration( color: Colors.blue[500] ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu de navegacao',
            onPressed: null,
          ),

          Expanded(
            child: title,
          ),
        IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Procurar',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}


class MinhaScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MinhaAppBar(
            title: Text('Titulo exemplo',
            style: Theme.of( context ).primaryTextTheme.headline6
          ),
          ),
          Expanded(
            child: Center(
              child: Text('Ola Mundo')
            ),
          ),
        ],
      ),
    );
  }
}


class TutorialHome extends StatelessWidget {
  @override
  Widget build  ( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu Navegacao",
          onPressed: null,
        ),
        title: Text('Exemplo titulo'),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'procurar',
            onPressed: null,
          ),
        ],
      ),

      body: Center(
        child: Mybutton(),
      ),

      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon( Icons.add ),
        onPressed: null,
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  const Mybutton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('botao foi tocado');
      },
      child: Container (
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage')
        ),
      ),
    );
  }
}



// Widget com estado 
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row (
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: Text('Incrementar'),
        ),
        Text('Count: $_counter')
      ],
    );
  }
}