import 'package:flutter/material.dart';



class LayoutTutorial extends StatelessWidget {
  const LayoutTutorial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, world 2!',
        textDirection: TextDirection.ltr,
      ),
  );
  }
}

Widget layoutExemplo1 = Container(
        padding: const EdgeInsets.all(32),
        child:  Row(
          children: [
            Expanded(
              // 1
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 2
                  Container(
                    padding: const EdgeInsets.only(bottom:  8),
                    child: Text('Oeschinen Lake Campground', style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.grey[500]),)
                ],
              ),
            ),
    FavoriteWidget()
          ],
        ),
      );


      Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
  FavoriteWidget()
    ],
  ),
);



Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column (
    mainAxisSize:  MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color ),
      Container (
        margin: const EdgeInsets.only(top : 8 ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          )
        )
      )
    ],
  );
}




Widget buttonSection (Color color){
  return  Container (
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),

    ],
  )
);
}


Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
  ),
);


class LayoutMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  Color color = Theme.of ( context). primaryColor;

      return MaterialApp(
        title: 'app',
        home: Scaffold(
          appBar: AppBar(
            title: Text(' Flutter layout'),
          ),
          body: Column(
            children: [
              Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover
              ),
              layoutExemplo1,
              buttonSection(color),
              textSection
            ]
          )
        )
      );
  
  }


}


class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(

            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon( Icons.star ) : Icon ( Icons.star_border)),
            color: Colors.red[500],
            onPressed: _togleFavorite,
                      ),
                    ),
                    SizedBox(
                      width: 18,
                      child: Container(
                        child: Text('$_favoriteCount'),
                      ),
                    ),
                  ],
                );
              }
            

void _togleFavorite() {
  setState( () {
    if ( _isFavorited ) {
      _favoriteCount -= 1;
      _isFavorited = false ; 
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
                
  }
}
