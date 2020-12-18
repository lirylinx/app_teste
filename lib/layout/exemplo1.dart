import 'package:flutter/material.dart';




// Widget linha = Row (
//   mainAxisAlignment : MainAxisAlignment.spaceEvenly,
//   children: [
//   Expanded(child:   Image.asset('images/lake.jpg'),),
//   Expanded(child:   Image.asset('images/lake.jpg'),),
//   Expanded(child:   Image.asset('images/lake.jpg'),),

//   ],
// );



Widget coluna = Column (
  mainAxisAlignment : MainAxisAlignment.spaceEvenly,
  children: [
  Expanded(child:   Image.asset('images/lake.jpg'),),
  Expanded(child:   Image.asset('images/lake.jpg'), flex: 2,),
  Expanded(child:   Image.asset('images/lake.jpg'),),

  ],
);

// compactar widgets
Widget estrelas = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),

  ],
);


final ratings = Container (
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      estrelas,
      Text(
        '170 Avaliacoes',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20
        ),
      )
    ],
  )
);



final descTextStyle = TextStyle(
   color: Colors.black,
   fontWeight: FontWeight.w800,
   fontFamily: 'Roboto',
   letterSpacing: 0.5,
   fontSize: 18,
   height: 2
);


final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container( 
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            Text('PREP:'),
            Text('25 min')
          ],
        ),
         Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            Text('COOK:'),
            Text('1 HR')
          ],
        ),
         Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            Text('FEEDS:'),
            Text('4-6')
          ],
        ),
      ],
    )
  )
);



final leftColumn  = Container (
  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      tituloTexto,
      subtituloTexto,
      ratings,
      iconList
    ]
  ),
);


final tituloTexto = Text("Titulo");
final subtituloTexto = Text("subtitulo");


final layoutDemo = Center(
  child: Container(
    margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
    height: 600,
    child: Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 440,
            child: leftColumn
          ),
          mainImage
        ],
      )
    ),
  )
);


final mainImage = Container(
  child:  Expanded(child:   Image.asset('images/berries.jpg'),),
);