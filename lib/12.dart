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
          title: new Text("text demo"),
        ),
        body: 
         new Row(
           children: <Widget>[
             new Expanded(
               child: new Text("hallo hoe gaat het?", textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
               style: new TextStyle(fontWeight: FontWeight.bold),),
             )
           ],
         )
        
      ),
    );
  }
}