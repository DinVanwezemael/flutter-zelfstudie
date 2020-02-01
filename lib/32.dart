import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = "cached network image";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new CachedNetworkImage(
            placeholder: new CircularProgressIndicator(),
            imageUrl: "https://images.unsplash.com/photo-1546480352-b36b6f5627e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
          ),
        ),
      ),
    );
  }
}
