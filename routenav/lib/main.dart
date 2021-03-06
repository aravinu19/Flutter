import 'package:flutter/material.dart';
import 'package:routenav/screens/home.dart';
import 'package:routenav/screens/Second.dart';
import 'package:routenav/screens/Third.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Navigation",
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/Second': (BuildContext context) => new Second(),
        '/Third': (BuildContext context) => new Third()
      },
      home: new Home(),
    );
  }

}