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
        body: new Row(
          children: <Widget>[
            new Expanded(
              child: new Text("text 1", textAlign: TextAlign.center,style: new TextStyle(color: Colors.blue)),
            ),
            new Expanded(
              child: new Text("text 2", textAlign: TextAlign.center,style: new TextStyle(color: Colors.blue)),
            ),
            new Expanded(
              child: new FittedBox(
                fit: BoxFit.contain,
                child: const FlutterLogo(),
              ),
            )
          ],
        )
      ),
    );
  }
}