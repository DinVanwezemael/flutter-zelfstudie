import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> items = new List<String>();

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      items.add("item $i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Gridview example"),
        ),
        body: new GridView.builder(
          itemCount: items.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index){
            return new Card(
              color: Colors.blueAccent,
              child: new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Text(items[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}