import 'package:flutter/material.dart';


class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Third"),),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("This is a Third page"),
              new RaisedButton(onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route<dynamic> route) => false);},child: new Text("Home"),),
              new RaisedButton(onPressed: (){Navigator.of(context).pop();}, child: new Text("back"),),
            ],
          ),
        ),
      ),
    );
  }

}