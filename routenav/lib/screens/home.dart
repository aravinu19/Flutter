import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home"),),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("This is a home page"),
              new RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/Second');}, child: new Text("next"),)
            ],
          ),
        ),
      ),
    );
  }

}