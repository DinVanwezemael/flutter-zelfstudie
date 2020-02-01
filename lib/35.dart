import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp(
    items: new List<String>.generate(10000, (i) => "Item $i"),
  ));
}

class MyApp extends StatelessWidget{
  final List<String> items;
  MyApp({Key key, this.items}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final String title = "long listview";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title)
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return new ListTile(
              title: new Text("${items[index]}"),
            );
          },
        )
      )
    );
  }
}
