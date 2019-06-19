import 'package:flutter/material.dart';

class Planets4 extends StatefulWidget {
  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planets4> {
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
            padding: const EdgeInsets.only(left:8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:2.0),
                    child: Image.asset(
                      "assets/uranus.png",
                      width: 29,
                      height: 29,
                    ),
                  ),
                  new Radio<int>(
                    activeColor: Colors.tealAccent[100],
                    value: 6,
                    groupValue: val1,
                    onChanged: handleval,
                  ),
                  new Text(
                    "Uranus",
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
                "assets/neptune.png",
            height: 30,
              ),
              new Radio<int>(
                value: 7,
                groupValue: val1,
                onChanged: handleval,
              ),
              new Text(
                "Neptune",
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
