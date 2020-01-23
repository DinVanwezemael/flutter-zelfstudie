import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "image demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("image demo"),
        ),
        body: new Center(
          child: new FittedBox(
            fit: BoxFit.contain,
            child: new Image.asset("din.jpg"),
          ),
        )
      ),
    );
  }
}