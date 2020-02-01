import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  final String appTitle = "Drawer Demo";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "tabbar demo",
      home: new MyHomePage(title: appTitle),
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
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("my page"),
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Text("header"),
              decoration: new BoxDecoration(
                color: Colors.blue
              ),
            ),
            new ListTile(
              title: new Text("item 1"),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            new ListTile(
              title: new Text("item 2"),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            new ListTile(
              leading: Icon(Icons.ac_unit),
              title: new Text("item 3"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}