import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final String title = "horizontal list";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title)
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width: 160.0,
                color: Colors.red,
              ),

              new Container(
                width: 160.0,
                color: Colors.blue,
              ),

              new Container(
                width: 160.0,
                color: Colors.green,
              ),

              new Container(
                width: 160.0,
                color: Colors.yellow,
              ),

              new Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      )
    );
  }
}
