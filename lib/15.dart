import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final String title = "floating button demo";

    // TODO: implement build
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(title: new Text(title)),
        body: new Center(child: new Text("new text")),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.home),
          onPressed: (){},
        ),
      )
    );
  }
}