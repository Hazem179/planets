import 'package:flutter/material.dart';

class Planet1 extends StatefulWidget {
  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planet1> {
  int val1 = 0;
  handleval(int value) {
    setState(() {
      val1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    
  }
}
