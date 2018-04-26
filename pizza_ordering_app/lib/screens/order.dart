import 'package:flutter/material.dart';
import 'package:pizza_ordering_app/screens/review.dart';
import 'package:pizza_ordering_app/code/pizza.dart';


class Order extends StatefulWidget {
  @override
  _State createState() {
    // TODO: implement createState
    return new _State();
  }



}

class _State extends State<Order> {

  pizza _pizzaOrder = new pizza();

  void _setSize(String size){
    setState(() {
      _pizzaOrder.size = size;
    });
  }

  void _setToppings(int index, bool value) {
    setState(() {
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Order Pizza...nn "),
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(25.0),
          child: new Column(
            children: <Widget>[
              new DropdownButton<String>(
                  value: _pizzaOrder.size,
                  items: pizza.sizes.map((String value) {
                    return new DropdownMenuItem(
                        value: value,
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.local_pizza),
                            new Text('Size: ${value}')
                          ],
                        )
                    );
                  }).toList(),
                  onChanged: (String value){_setSize(value);}
              ),
              new Expanded(
                  child: new ListView.builder(
                      shrinkWrap: true,
                      itemCount: _pizzaOrder.toppings.length,
                      itemBuilder: (BuildContext context, int index){
                        return new CheckboxListTile(
                            value: _pizzaOrder.toppings.values.elementAt(index),
                            onChanged: (bool value){_setToppings(index, value);},
                          title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),
                          controlAffinity: ListTileControlAffinity.leading,
                        );
                      }
                  )
              ),
              new RaisedButton(
                  child: new Text('Continue'),
                  onPressed: (){Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context ) => new Review(order: _pizzaOrder,)
                  ));}
              )
            ],
          ),
        ),
      ),
    );

  }

}