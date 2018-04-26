import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer Pane Demo'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(25.0),
          child: new Column(
            children: <Widget>[
              new Text("Hello Drawer"),
              new RaisedButton(
                color: Colors.lime,
                child: new Text("Close"),
                onPressed: (){Navigator.pop(context);},
              ),
            ],
          ),
        ),
      ),
      body: new Container(
        padding: new EdgeInsets.all(25.0),
        child: new Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
