import 'package:flutter/material.dart';
import 'package:myfirstapp/25.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      final String title = "gesture example";


    return new MaterialApp(
      title: title,
      home: new MyHomePage(title: title)
    );
  }
}


class MyHomePage extends StatelessWidget{
  final String title;

  MyHomePage({Key key, this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title)
      ),
      body: new Center(child: new MyButton(),),
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        final snackBar = new SnackBar(content: new Text("tapped"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(8.0)
        ),
        child: new Text("MyButton"),
      ),
    );
  }
}