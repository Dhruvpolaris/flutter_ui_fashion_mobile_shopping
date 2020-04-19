import 'package:flutter/material.dart';

class CircularListItem extends StatelessWidget {
  final String imgUrl;
  final String imgtext;

  CircularListItem(this.imgUrl, this.imgtext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:15,right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          image: DecorationImage(
              image: AssetImage(imgUrl), fit: BoxFit.cover)),
      height: 100.0,
      width: 80.0,
      child: Center(
        child: Text(
          imgtext,
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
