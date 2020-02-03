import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final title = "Animation demo";

    // TODO: implement build
    return new MaterialApp(
    title: title,
    home: new MainScreen(title: title,),
  );
  }
}

class MainScreen extends StatefulWidget{

  final String title;
  MainScreen({Key key, this.title}) : super(key:key);

  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  bool _visable = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new AnimatedOpacity(
          opacity: _visable ? 1.0 : 0.0,
          duration: new Duration(milliseconds: 500),
          child: new Container(
            width: 200.0,
            height: 200,
            color: Colors.green,       
            ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          setState(() {
            _visable = !_visable;
          });
        },
        tooltip: "Toogle opacity",
        child: new Icon(Icons.flip),
      ),
    );
  }
}