import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Icon selectedIcon = new Icon(Icons.mail);

  void changeSelection(Icon icon){
    setState(() {
      selectedIcon = icon;
    });
  }

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text("AppBar example"),
          elevation: 10.0,
          toolbarOpacity: 1.0,
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: (){

            },
          ),
          actions: <Widget>[
            new IconButton(icon: selectedIcon, onPressed: (){
              changeSelection(new Icon(Icons.mail));
            }),
            new IconButton(icon: new Icon(Icons.delete), onPressed: (){
              changeSelection(new Icon(Icons.delete));
            }),
          ],
        ),
        body: new Card(
          color: Colors.blue,
          child: new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Icon(selectedIcon.icon, size: 128.0, color: Colors.white,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}