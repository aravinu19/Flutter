import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second"),),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("This is a Second page"),
              new RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/Third');}, child: new Text("Next"),)
            ],
          ),
        ),
      ),
    );
  }

}