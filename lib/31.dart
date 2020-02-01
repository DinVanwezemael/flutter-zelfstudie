import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = "fade in image demo";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new CircularProgressIndicator(),
            ),
            new Center(
              child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: "https://images.unsplash.com/photo-1546480352-b36b6f5627e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
              ),
            )
          ],
        ),
      ),
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