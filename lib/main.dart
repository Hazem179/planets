import 'package:flutter/material.dart';
import 'planets1.dart';
import 'planets2.dart';
import 'planets3.dart';
import 'planets4.dart';

void main() => runApp(
      new MaterialApp(
        home: Palnets(),
      ),
    );

class Palnets extends StatefulWidget {
  @override
  _PalnetsState createState() => _PalnetsState();
}

class _PalnetsState extends State<Palnets> {
  final TextEditingController _weight = new TextEditingController();
  double _result = 0.0;
  String _finaltext = "";
  int val1 = 0;

  handleval(int value) {
    setState(
      () {
        val1 = value;
        switch (value) {
          case 0:
            _result = clcweight(
              _weight.text,
              0.38,
            );
            _finaltext =
                "Your weight on Mercury = ${_result.toStringAsFixed(1)}";

            break;
          case 1:
            _result = clcweight(_weight.text, 0.91);
            _finaltext = "Your weight on Venus= ${_result.toStringAsFixed(1)}";
            break;
          case 2:
            _result = clcweight(_weight.text, 1.0);
            _finaltext = "Your weight on Earth= ${_result.toStringAsFixed(1)}";
            break;
          case 3:
            _result = clcweight(_weight.text, 0.38);
            _finaltext = "Your weight on Mars= ${_result.toStringAsFixed(1)}";
            break;
               case 4:
            _result = clcweight(_weight.text, 2.34);
            _finaltext = "Your weight on Jupiter= ${_result.toStringAsFixed(1)}";
            break;
            case 5:
            _result = clcweight(_weight.text,  1.06);
            _finaltext = "Your weight on Saturn= ${_result.toStringAsFixed(1)}";
            break;
             case 6:
            _result = clcweight(_weight.text, 0.92);
            _finaltext = "Your weight on Uranus= ${_result.toStringAsFixed(1)}";
            break;
               case 7:
            _result = clcweight(_weight.text, 1.19);
            _finaltext = "Your weight on Neptune= ${_result.toStringAsFixed(1)}";
            break;
        }
      },
    );
  }

  var back = new BoxDecoration(
    image: new DecorationImage(
      image: new AssetImage("assets/back.jpg"),
      fit: BoxFit.cover,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Planets"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        decoration: back,
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(top: 100.0),
              color: Colors.black45,
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: new TextField(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
                      decoration: new InputDecoration(
                          border: OutlineInputBorder(),
                          icon: new Icon(
                            Icons.line_weight,
                            color: Colors.blue,
                          ),
                          labelText: 'Your Weight on the Earth?',
                          labelStyle: TextStyle(color: Colors.blue),
                          hintText: 'In KG\'s',
                          hintStyle: TextStyle(color: Colors.blue)),
                      controller: _weight,
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 70.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset(
                                  "assets/Mercury.png",
                                  width: 31,
                                  height: 31,
                                ),
                              ),
                              new Radio<int>(
                                activeColor: Colors.grey[300],
                                value: 0,
                                groupValue: val1,
                                onChanged: handleval,
                              ),
                              new Text(
                                "Mercury",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/Venus.png",
                              width: 45,
                              height: 45,
                            ),
                            new Radio<int>(
                              activeColor: Colors.brown[200],
                              value: 1,
                              groupValue: val1,
                              onChanged: handleval,
                            ),
                            new Text(
                              "Venus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
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
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 80.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 2.0),
                                  child: Image.asset(
                                    "assets/jupiter.png",
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                new Radio<int>(
                                  activeColor: Colors.deepOrange[200],
                                  value:4 ,
                                  groupValue: val1,
                                  onChanged: handleval,
                                ),
                                new Text(
                                  "Jupiter",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
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
                              value: 5,
                              groupValue: val1,
                              onChanged: handleval,
                            ),
                            new Text(
                              "Saturn",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                new Row(
  
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:90.0),
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
    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 25,
                color: Colors.white54,
                child: Center(
                  child: new Text(
                    _weight.text.isEmpty
                        ? "Please enter the weight"
                        : _finaltext + " KG",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double clcweight(String weight, double grav) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * grav;
    } else {
      print("error");
    }
  }
}
