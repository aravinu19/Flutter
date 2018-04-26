import 'package:flutter/material.dart';
import 'package:pizza_ordering_app/screens/order.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pizza Home"),
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(25.0),
          child: new Column(
            children: <Widget>[
              new Image.asset('img/pizza.png'),
              new RaisedButton(
                child: new Text("Order"),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/Order');
                  }
              )
            ],
          ),
        ),
      )
    );

  }

}