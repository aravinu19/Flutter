import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  MyState createState() {
    // TODO: implement createState
    return new MyState();
  }

}

class MyState extends State<MyApp>{

  List<bool> _data = new List();


  @override
  void initState() {
    setState(() {
      for(int i = 0; i < 10; i++){
        _data.add(false);
      }
    });
  }

  void _onChanged(bool value, int index){
    setState(() {
      _data[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List View Demo"),
      ),
      body: new ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(5.0),
                child: new Column(
                  children: <Widget>[
                    new Text("This is item ${index}"),
                    new CheckboxListTile(
                        value: _data[index],
                        controlAffinity: ListTileControlAffinity.leading,
                        title: new Text("Click Me Item ${index}"),
                        onChanged: (bool value) { _onChanged(value, index); }
                    )
                  ],
                ),
              ),
            );
          }
      )
    );

  }

}