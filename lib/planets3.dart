import 'package:flutter/material.dart';

class Planets3 extends StatefulWidget {
  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planets3> {
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
          padding: const EdgeInsets.only(right: 105.0),
          child: Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:2.0),
                    child: Image.asset(
                      "assets/jupiter.png",
                      width: 36,
                      height: 36,
                    ),
                  ),
                  new Radio<int>(
                    activeColor: Colors.deepOrange[200],
                    value: 2,
                    groupValue: val1,
                    onChanged: handleval,
                  ),
                  new Text(
                    "Jupiter",
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
                "assets/saturn.png",
            height: 25,
              ),
              new Radio<int>(
       activeColor: Colors.yellow[300],
                value: 3,
                groupValue: val1,
                onChanged: handleval,
              ),
              new Text(
                "Saturn",
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
