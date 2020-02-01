import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final String title = "basic list";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text("Map")
            ),

            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text("Photoalbum")
            ),

            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("Phone")
            ),
          ],
        ),
      )
    );
  }
}

class OrientationList extends StatelessWidget{
  final String title;
  OrientationList({Key key, this.title}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new OrientationBuilder(
        builder: (context, orientation){
          return new GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: new List.generate(100, (index){
                return new Center(
                  child: new Text("item $index",
                  style: Theme.of(context).textTheme.headline,),
                );
              })
          );
        },
      )
    );
  }
}