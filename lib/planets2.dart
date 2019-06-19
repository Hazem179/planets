import 'package:flutter/material.dart';

class Planet2 extends StatefulWidget {
  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planet2> {
  int val1 = 0;
  handleval(int value) {
    setState(() {
      val1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 120.0),
          child: Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Image.asset(
                      "assets/earth.png",
                      width: 29,
                      height: 29,
                    ),
                  ),
                  new Radio<int>(
                      activeColor: Colors.blue[300],
                    value: 2,
                    groupValue: val1,
                    onChanged: handleval,
                  ),
                  new Text(
                    "Earth",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/mars.png",
                width: 31,
                height: 31,
              ),
              new Radio<int>(
                activeColor: Colors.red,
                value: 3,
                groupValue: val1,
                onChanged: handleval,
              ),
              new Text(
                "Mars",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
