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
          title: new Text("basic appbar"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.directions_bike), onPressed: (){},),
            new IconButton(icon: new Icon(Icons.directions_car), onPressed: (){},),
            new PopupMenuButton<String>(
              itemBuilder: (BuildContext context){
                return [
                  new PopupMenuItem<String>(child: new Row(children: <Widget>[
                    new IconButton(icon: new Icon(Icons.directions_bus,color: Colors.black), onPressed: (){}),
                    new Text("Bus")
                  ],)),
                  new PopupMenuItem<String>(child: new Row(children: <Widget>[
                    new IconButton(icon: new Icon(Icons.directions_railway,color: Colors.black), onPressed: (){}),
                    new Text("Railway")
                  ],)),
                  new PopupMenuItem<String>(child: new Row(children: <Widget>[
                    new IconButton(icon: new Icon(Icons.directions_run,color: Colors.black), onPressed: (){}),
                    new Text("Run")
                  ],)),
                  new PopupMenuItem<String>(child: new Row(children: <Widget>[
                    new IconButton(icon: new Icon(Icons.directions_walk,color: Colors.black), onPressed: (){}),
                    new Text("Walk")
                  ],))
                ];
              },
            )
          ],
        ),
      )
    );
  }
}