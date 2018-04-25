import 'package:flutter/material.dart';


void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  String _text = '';

  void _onPressed(){
    print("The Text is $_text");
  }

  void onChange(String value){
    setState(() {
      _text = value;
    });
  }

  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Text Field demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value){ onChange(value); },
                controller: _controller,
                maxLengthEnforced: true,
                maxLength: 5,
                autocorrect: true,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.print),
                  hintText: "Type Something !",
                  labelText: "Name",
                ),
              ),
              new RaisedButton(
                  onPressed: () {_onPressed();} ,
                  child: new Text("Click Me !"),
              ),
              new RaisedButton(
                  onPressed: () {_onPressed2();} ,
                  child: new Text("Click Me 2!"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onPressed2() {
    print(_controller.text);
  }

}