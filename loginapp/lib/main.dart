import 'package:flutter/material.dart';
import 'package:loginapp/settings.dart';
import 'package:loginapp/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  String _title = "Please Login ";
  Widget _screen;
  login _login;
  settings _settings;
  bool _authenticated;

  _MyAppState() {
    _login = new login(onSubmit: (){onSubmit();});
    _settings = new settings();
    _screen = _login;
    _authenticated = false;
  }

  void onSubmit(){
    print("Login with: " + _login.username + " and  " + _login.password);
    if(_login.username == "ivara" && _login.password == "pass"){
      _setAuthenticated(true);
    }
  }

  void _goHome() {
    print("go home");
    setState(() {
      if(_authenticated == true){
        _screen = _settings;
        _title = "Welcome";
        _authenticated = true;
      }
      else{
        _screen = _login;
      }
    });
  }

  void _setAuthenticated(bool Auth) {
    setState(() {
      if(Auth == true){
        _screen = _settings;
        _title = "Welcome to FLUTTER login";
        _authenticated = true;
      }
      else{
        _screen = _login;
        _title = "Please login";
      }
    });
  }

  void _logout() {
    print("logout");
    _setAuthenticated(false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Login App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: (){_goHome();}),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();}),
          ],
        ),
        body: _screen,
      ),
    );
  }

}

