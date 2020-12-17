import 'package:flutter/material.dart';

import 'layout/exemplo.dart';



void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        title: 'app',
        home: Scaffold(
          appBar: AppBar(
            title: Text(' Flutter layout Demo'),
          ),
          body: Column(
            children: [
              layoutExemplo1,
            ]
          )
        )
      );
  
  }
}