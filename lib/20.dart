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
          title: new Text("textfield voorbeeld"),
          
        ),
        body: new Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            new Card(child: new Padding(padding: const EdgeInsets.all(200.0),), color: Colors.black,),
            new Card(child: new Padding(padding: const EdgeInsets.all(100.0),), color: Colors.grey,),
          ],
        ),
      )
    );
  }
}