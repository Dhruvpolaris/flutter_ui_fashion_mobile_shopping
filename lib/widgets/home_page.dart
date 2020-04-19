import 'package:flutter/material.dart';
import '../details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/pic4.jpeg',
                fit: BoxFit.cover,
                height: 400,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Louis W. & A.P.C.',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 40.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: 17.0),
                    Text(
                      'Drop a Chic Selection of Outerware',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      'for 2019 Spring/Summer',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 175.0,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage(),
                        ));
                      },
                      elevation: 0.0,
                      mini: true,
                      backgroundColor: Colors.white,
                      child: Center(
                          child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/pic5.jpeg',
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 110),
                child: Column(
                  children: <Widget>[
                    Text(
                      'New Visuals',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 35.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'For "P.O.W.A" ',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 35.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      );
  }
}