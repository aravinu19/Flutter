import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return new _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  String _text = '';
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey();

  void _onChange(String value){
    setState(() {
      _text = value;
    });
  }

  void _showSnacKbar(String value){
    if(value.isEmpty) return;
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text(value),));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(
        title: new Text("SnackBar Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: (String value){_onChange(value);},),
              new RaisedButton(onPressed: (){_showSnacKbar(_text);}, child: new Text("SnackBar!"),)
            ],
          ),
        )
      ),
    );
  }

}
