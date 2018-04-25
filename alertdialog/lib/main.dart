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

enum MyDialogAction {
  yes, no, MayBe
}

class _MyAppState extends State<MyApp> {

  String _text = '';

  void _onChange(String value){
    setState((){
      _text = value;
    });
  }

  void _dialogResult(MyDialogAction value){
    print("You Selected $value");
    Navigator.pop(context);
  }

  void _showAlertDialog(String value){
    if(value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      content: new Text(value, style: new TextStyle(fontSize: 30.0),),
      actions: <Widget>[
        new FlatButton(onPressed: () { _dialogResult(MyDialogAction.yes); }, child: new Text("Yes")),
        new FlatButton(onPressed: () { _dialogResult(MyDialogAction.no); }, child: new Text("No")),
        new FlatButton(onPressed: () { _dialogResult(MyDialogAction.MayBe); }, child: new Text("May Be"))
      ],
    );

    showDialog(context: context, child: dialog);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Alert Dialog Box"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(padding: new EdgeInsets.all(15.0), child: new TextField(onChanged: (String value){_onChange(value);},),),
              new RaisedButton(child: new Text("Alert Dialog !") ,onPressed: (){_showAlertDialog(_text);})
            ],
          ),
        ),
      ),
    );
  }

}