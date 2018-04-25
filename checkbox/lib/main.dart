import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    home: new MyApp(),
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

  bool isChecked = false;

  void onChanged(bool value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
//     TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("CheckBox Demo"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(50.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text("Click it ->"),
                    new Checkbox(value: isChecked, onChanged: (bool value) { onChanged(value); } )
                  ],
                ),
                new CheckboxListTile(
                      title: new Text("Click Me ->"),
                      value: isChecked,
                      activeColor: Colors.amber,
                      secondary: const Icon(Icons.home),
                      onChanged: (bool value) {onChanged(value);}
                    )
            ],
            ),
          ),
        ),
      );
  }

}