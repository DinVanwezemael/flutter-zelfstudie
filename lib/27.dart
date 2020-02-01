import 'package:flutter/material.dart';

void main(){
  runApp(new TapBarDemo());
}

class TapBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "tabbar demo",
      home: new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: <Widget>[
                new Tab(icon: new Icon(Icons.directions_bike),),
                new Tab(icon: new Icon(Icons.directions_boat),),
                new Tab(icon: new Icon(Icons.directions_bus),),
                new Tab(icon: new Icon(Icons.directions_car),),
                
              ],
            ),
            title: new Text("TabBar demo"),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Icon(Icons.directions_bike),
            new Icon(Icons.directions_boat),
            new Icon(Icons.directions_bus),
            new Icon(Icons.directions_car),
            ],
            
          ),
        ),
      )
      );
  }
}