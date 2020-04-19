import 'package:flutter/material.dart';
class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic1.jpeg', fit: BoxFit.cover, height: 160.0,width: 160.0),
                SizedBox(height: 10,),
                Text('\$499',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 15.0
                ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic2.jpeg', fit: BoxFit.cover, height: 160.0,width: 160.0),
                SizedBox(height: 10,),
                Text('\$499',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 15.0
                ),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic4.jpeg', fit: BoxFit.cover, height: 160.0,width: 160.0),
                SizedBox(height: 10,),
                Text('\$499',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 15.0
                ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic3.jpeg', fit: BoxFit.cover, height: 160.0,width: 160.0),
                SizedBox(height: 10,),
                Text('\$499',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 15.0
                ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}