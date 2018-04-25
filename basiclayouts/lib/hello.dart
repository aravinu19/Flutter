import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.all(5.0),
      child: new Column(
        children: <Widget>[
          new Text("Flutter"),
          new Text(" is "),
          new Text("Cooool :)"),
        ],
      ),
    );
  }

}