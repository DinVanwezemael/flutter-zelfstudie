import 'package:flutter/material.dart';

void main(){
  runApp(new SnackBarDemo());
}

class SnackBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Snackbar demo",
      home: new Scaffold(
        appBar: AppBar(
        title: new Text("Snackbar demo"),
        ),
        body: new SnackBarPage(),
      ),
      );
  }
}

class SnackBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(child: new RaisedButton(
      onPressed: (){
        final SnackBar snackbar = new SnackBar(
          content: new Text("hey there"),
          action: new SnackBarAction(
          label: "undo",
          onPressed: (){},
        ),
        );
        Scaffold.of(context).showSnackBar(snackbar);
        
      },
      child: new Text("Show snackbar"),
    ),
    );
  }
}