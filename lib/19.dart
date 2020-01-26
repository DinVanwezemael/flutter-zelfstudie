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
        body: new TextField(
          autocorrect: true,
          autofocus: true,
          onChanged: (value){print(value);},
          decoration: new InputDecoration(
            border: InputBorder.none,
            hintText: "voer een tekst in om te zoeken"
          ),
        ),
      )
    );
  }
}