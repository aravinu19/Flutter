import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {

  @override
  MyState createState() {
    // TODO: implement createState
    return new MyState();
  }}

class MyState extends State<MyApp> {

  double _value = 0.0;

  void _onChanged(double value){
    setState(() {
      _value = value;
    });
  }

  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Slider Demo"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(50.0),
          child: new Column(
            children: <Widget>[
              new Text("Slider Value is ${_value.round()}"),
              new Slider(
                  value: _value,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (double value) {_onChanged(value);}
                  ),
              new Text("Progress value is ${_value * .01}"),
              new LinearProgressIndicator(
                value: _value * 0.01,
              )
            ],
          ),
        ),
      )
    );
  }

}