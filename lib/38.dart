import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      final title = "Gridview example";


    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title)
        ),
        body: new GridView.count(
          crossAxisCount: 3,
          children: new List.generate(100, (index){
            return new Center(
              child: new Text("Item $index", style: Theme.of(context).textTheme.headline,),
            );
          }),
        )
      )
    );
  }
}
