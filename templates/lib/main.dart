import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  mStates createState() {
    // TODO: implement createState
    return new mStates();
  }

}

class mStates extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Templates"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(25.0),
        child: new Column(
          children: <Widget>[
            new Text("Add widgets Here")
          ],
        ),
      ),
    );
  }



}