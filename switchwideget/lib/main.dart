import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _myState();
  }

}

class _myState extends State<MyApp> {

  bool _value = false;

  void onChanged(bool value){
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Switch Demo In Flutter"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Switch Demo's"),
              new Switch(value: _value, onChanged: (bool value){onChanged(value);}),
              new SwitchListTile(
                  value: _value, 
                  onChanged: (bool value) {onChanged(value);},
                title: new Text("Click Me 1"),
                activeColor: Colors.amber,
                secondary: new Icon(Icons.home),
              ),
              new SwitchListTile(
                value: _value,
                onChanged: (bool value) {onChanged(value);},
                title: new Text("Click Me 2"),
                activeColor: Colors.cyan,
                secondary: new Icon(Icons.home),
              ),
              new SwitchListTile(
                value: _value,
                onChanged: (bool value) {onChanged(value);},
                title: new Text("Click Me 3"),
                activeColor: Colors.lime,
                secondary: new Icon(Icons.home),
              )
            ],
          ),
        ),
      ),
    );
  }

}