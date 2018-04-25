import 'package:flutter/material.dart';
import 'hello.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Basic Layout',
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Basic Layout"),),
        body: new Container(
          padding: const EdgeInsets.all(50.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text("Hello"),
                new Text("Cruel"),
                new Text("World"),
                new Text("By"),
                new Text("Ivara"),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new hello(),
                    new hello(),
                    new hello(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

