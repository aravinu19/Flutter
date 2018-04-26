import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _lastpress = 'never';

  void _onPressed() {
    print('pressed');
    setState(() {
      DateTime current = new DateTime.now();
      _lastpress = current.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Floating Action Button Demo'),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () { _onPressed();},
        child: new Icon(Icons.timer),
        backgroundColor: Colors.cyan,
      ),
      body: new Container(
        padding: new EdgeInsets.all(25.0),
        child: new Column(
          children: <Widget>[
            new Text("Last Pressed: ${_lastpress}"),
          ],
        ),
      ),
    );
  }
}
