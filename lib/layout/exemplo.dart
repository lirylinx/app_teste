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
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('42')
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
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('43'),
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

// Color color = Theme.of ( context). primaryColor;
// Widget buttonSection = Container (
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       _buildButtonColumn(color, icon, label)
//     ],
//   )
// )

