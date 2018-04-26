import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();
  
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context, 
        initialDate: _date, 
        firstDate: new DateTime(2016), 
        lastDate: new DateTime(2019)
    );
    
    if(picked != null && picked != _date){
      print('Date Selected : ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }
    
  }

  Future<Null> _selectTime(BuildContext context) async{
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _time
    );

    if(picked != null && picked != _time){
      print('Time Selected : ${_time.toString()}');
      setState(() {
        _time = picked;
      });
    }

  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Date And Time Picker Demo !'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(25.0),
        child: new Column(
          children: <Widget>[
            new Text('Date Selected : ${_date.toString()}'),
            new RaisedButton(
                child: new Text("Select Date"),
                onPressed: (){_selectDate(context);}
            ),
            new Text(' '),
            new Text('Time Selected : ${_time.toString()}'),
            new RaisedButton(
                child: new Text("Select Time"),
                onPressed: (){_selectTime(context);}
            ),
          ],
        ),
      ),
    );
  }
}
