import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final String title = "raised button demo";

    // TODO: implement build
    return new MaterialApp(
      title: "image demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new RaisedButton(child: new Text("raised button"),color: Colors.blue, textColor: Colors.white ,onPressed: (){
            print("button pressed");
          },),
        )
        
      ),
    );
  }
}