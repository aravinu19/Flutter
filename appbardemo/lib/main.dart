import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return new _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  String _title = "App Bar Demo";
  String _myState = "NO STATE";


  void _pressed(String message){
    setState(() {
      _myState = message;
    });
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: () { _pressed("Alert Pressed");} ),
            new IconButton(icon: new Icon(Icons.print), onPressed: () { _pressed("print Pressed");} ),
            new IconButton(icon: new Icon(Icons.people), onPressed: () { _pressed("people Pressed");} ),
            new RaisedButton(onPressed: (){ _pressed("Button Clicked");} , child: new Text("Click"),)
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }

}