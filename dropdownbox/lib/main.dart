import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  MyState createState() {
    // TODO: implement createState
    return new MyState();
  }

}

class MyState extends State<MyApp> {

  String _value = null;
  List<String> _values = new List();


  @override
  void initState() {
    _values.addAll(["Ivara", "Aravi", "Aravind", "Raj", "AOT"]);
    _value = _values.elementAt(0);
  }

  void _onChanged(String value){
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drop Down Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Column(
          children: <Widget>[
            new DropdownButton(
                value: _value,
                items: _values.map((String value){
                  return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.home),
                        new Text("Person : ${value}")
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String value) {_onChanged(value);}
            )
          ],
        ),
      ),
    );
    
  }

}