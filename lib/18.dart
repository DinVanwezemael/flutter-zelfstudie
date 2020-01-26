import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("button bar"),
          
        ),
        body: new Center(
          child: new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new RaisedButton(
                child: new Text("Hallo"),
                onPressed: (){},
              ),
              new RaisedButton(
                child: new Text("world"),
                onPressed: (){},
              ),
              new RaisedButton(
                child: new Text("world"),
                onPressed: (){},
              ),
              new RaisedButton(
                child: new Text("halooooooooooooooooooooooooooo"),
                onPressed: (){},
              ),
            ],
          ),
        ),
      )
    );
  }
}