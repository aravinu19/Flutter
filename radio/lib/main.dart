import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
      home: new MyApp()
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return new _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  int _selected = 0;

  void onChanged(int value){
    setState(() {
      _selected = value;
    });

    print("Value = $value");

  }

  List<Widget> makeRadios(){
    List<Widget> list = new List();

    for(int i = 0; i < 3; i++){
      list.add(new Row(
        children: <Widget>[
          new Text('Radio Button $i'),
          new Radio(value: i, groupValue: _selected, onChanged: (int value) {onChanged(value);})
        ],
      ));
    }

    for(int i = 0; i < 3; i++){
      list.add(
        new RadioListTile(value: i, groupValue: _selected, onChanged: (int value){onChanged(value);}, title: new Text("Radio Button $i"),
        activeColor: Colors.amber,
        secondary: new Icon(Icons.home),
        subtitle: new Text("Sub tile here"),)
      );
    }

    return list;

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Radio Button Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: makeRadios(),
          ),
        ),
      ),
    );
  }

}