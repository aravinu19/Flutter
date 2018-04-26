import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver  {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Life Cycle Demo On Console ! '),
      ),
      body: new Container(
        padding: new EdgeInsets.all(25.0),
        child: new Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("+++ State = ${state.toString()}");

    switch(state){

      case AppLifecycleState.inactive: print("+++ inactive ++++"); break;

      case AppLifecycleState.paused: print("+++ paused ++++"); break;

      case AppLifecycleState.resumed: print("+++ resumed ++++"); break;

      case AppLifecycleState.suspending: print("+++ suspending ++++"); break;

    }

  }

  @override
  void initState() {
    print('+++++init State +++++++');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    print('+++++ Dispose +++++++');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();

  }


}
