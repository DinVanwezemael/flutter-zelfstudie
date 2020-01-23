import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Container demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("row demo"),
        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Expanded(child: new Text("text 1")),
            new Expanded(child: new Text("text 2")),
            new Expanded(child: new Text("text 3")),
            new Expanded(child: new Text("text 4")),
            new Expanded(child: new Text("text 5")),

            new Expanded(child: new FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),)
            
          ],
        )
      ),
    );
  }
}